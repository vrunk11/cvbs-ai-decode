//https://medium.com/analytics-vidhya/deploying-tensorflow-2-1-as-c-c-executable-1d090845055c

#include <stdlib.h>
#include <stdio.h>
#include <getopt.h>
#include "tensorflow/c/c_api.h"

#ifdef _WIN32
	#include <fcntl.h>
#endif

FILE *input_data;

void NoOpDeallocator(void* data, size_t a, void* b) {}

//read stdin and return a tensor
TF_Tensor* load_data_as_tensor(float *tensor_buf,int batch_size,int in_dim1,int in_dim2,int in_dim3)
{
	int nb_sample = (batch_size*in_dim1*in_dim2*in_dim3);
    int read_buf_size = (sizeof(short)*nb_sample);
    unsigned short *read_buf = malloc(read_buf_size);
    //tensor parametter
    int ndims = 4;                                   //number of dimention (4D)
    const int64_t dims[] = {batch_size,in_dim1,in_dim2,in_dim3};    //shape
    //float data[] = tensor_buf;                     //data
    int ndata = (nb_sample * sizeof(float));//sizeof(float);                     //size of data (d-type)
    
    fread(read_buf,read_buf_size,1,input_data);//read stdin and write in tensor data
	
	int i = 0;
	//cast u16 to float32
	while(i <= nb_sample)
    {
	   if(read_buf[i] >= 65535 )
	   {
		   tensor_buf[i] = 65535;
	   }
	   else if(read_buf[i] <= 0)
	   {
		   tensor_buf[i] = 0;
	   }
	   else
	   {
		   tensor_buf[i] = (float) read_buf[i];
	   }
       i ++;
    }
	free(read_buf);
	
    //tensor creation    
    TF_Tensor* tensor = TF_NewTensor(TF_FLOAT, dims, ndims, tensor_buf, ndata, &NoOpDeallocator, 0);
	
    if(tensor != NULL)
    {
        return tensor;
    }
    else
    {
        fprintf(stderr,"Tensor creation error : %s\n",tensor);
        return NULL;
    }
}

//scale YUV component and cast to 16 bit
void process_output_field(float *input_buf,unsigned short *output_buf,int sample_size,int output_mode)
{
     int i = 0;
	 int calc = 0;
     
	 double black = 16384;
	 double white = 54016;
	 
	 double VideoRange = (white - black);
	 double Yscale = (56064.0 / VideoRange);
	 double Uscale = (28672 / (0.886 * 0.49211104112248356308804691718185)) / VideoRange;
	 double Vscale = (28672 / (0.701 * 0.87728321993817866838972487283129)) / VideoRange;
     
     while(i < sample_size)
     {
        // TODO : check how to use pointer !!!
		if(output_mode == 0)
		{
			//Y : clip , cast and scale
			calc = (((input_buf[i] - 18048)* Yscale) + 4096);
			if(calc >= 65535)
			{
				output_buf[i] = 65535;
			}
			else if(calc <= 0)
			{
				output_buf[i] = 0;
			}
			else
			{
				output_buf[i] = calc;
			}
			i++;
			
			//U : clip , cast and scale
			calc = (((input_buf[i] - 32767)* Uscale) + 32767);
			if(calc >= 65535)
			{
				output_buf[i] = 65535;
			}
			else if(calc <= 0)
			{
				output_buf[i] = 0;
			}
			else
			{
				output_buf[i] = calc;
			}
			i++;
			
			//V : clip , cast and scale
			calc = (((input_buf[i] - 32767)* Vscale) + 32767);
			if(calc >= 65535)
			{
				output_buf[i] = 65535;
			}
			else if(calc <= 0)
			{
				output_buf[i] = 0;
			}
			else
			{
				output_buf[i] = calc;
			}
			i++;
		}
		else
		{
			calc = input_buf[i];//transform float to int
			
			if(calc >= 65535)
			{
				output_buf[i] = 65535;
			}
			else if(calc <= 0)
			{
				output_buf[i] = 0;
			}
			else
			{
				output_buf[i] = calc;
			}
			i++;
		}
     }
}

int main(int argc, char **argv)
{
   
#ifdef _WIN32 || _WIN64
	_setmode(_fileno(stdout), O_BINARY);
	_setmode(_fileno(stdin), O_BINARY);	
#endif
   
    input_data = stdin;//get stdin file
   
	int model_type = 0;// 0 = YUV    1 = YC
	char *model_path = NULL;
	int threads = 1;
   
	//********* Read Args parametter
	int opt;
   
	while ((opt = getopt(argc, argv, "m:o:t:")) != -1) {
		switch (opt) {
		case 'o':
			if((strcmp(optarg, "yc" ) == 0) || (strcmp(optarg, "YC" ) == 0) || (strcmp(optarg, "Yc" ) == 0) || (strcmp(optarg, "yC" ) == 0))
			{
				model_type = 1;
			}
			else if((strcmp(optarg, "tbc" ) == 0) || (strcmp(optarg, "TBC" ) == 0) || (strcmp(optarg, "Tbc" ) == 0) || (strcmp(optarg, "tBc" ) == 0))
			{
				model_type = 2;
			}
			else
			{
				model_type = 0;
			}
			break;
		case 'm':
			model_path = optarg;
			break;
		case 't':
			threads = (int)atoi(optarg);
			if(threads > 4)
			{
				threads = 4;
			}
			else if(threads < 1)
			{
				threads = 1;
			}
			break;
		default:
		    fprintf(stderr,"Error no input option found");
			break;
		}
	}
   
   //********* Model & Tensor configuration
   //batch size
   int NumInputs = 1;
   int NumOutputs = NumInputs;
   int in_dim_1 = 242;
   int in_dim_2 = 910;
   int in_dim_3 = 1;
   
   int out_dim_1 = 242;
   int out_dim_2 = 792;
   int out_dim_3 = 3;
   
   if(model_type == 1)
   {
	   out_dim_3 = 2;
   }
   else if(model_type == 2)
   {
	   out_dim_2 = 910;
	   out_dim_3 = 1;
   }
   
   //model input data size
   int model_in_buf_size = (sizeof(float)*(NumInputs*in_dim_1*in_dim_2*in_dim_3));
   //model output data size
   int model_out_buf_size = (sizeof(float)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   
   //input data size (stdin)
   int in_buf_size = (sizeof(short)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   //output data size (stdout)
   int out_buf_size = (sizeof(short)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   
   void* tensor_buf1 = malloc(model_in_buf_size);
   void* tensor_buf2 = NULL;
   void* tensor_buf3 = NULL;
   void* tensor_buf4 = NULL;
   
   void* pred_data = NULL;
   
   unsigned short* output_data1 = malloc(out_buf_size);
   unsigned short* output_data2 = NULL;
   unsigned short* output_data3 = NULL;
   unsigned short* output_data4 = NULL;
   
	if(threads >= 2)
	{
		tensor_buf2 = malloc(model_in_buf_size);
		output_data2 = malloc(out_buf_size);
		if(threads >= 3)
		{
			tensor_buf3 = malloc(model_in_buf_size);
			output_data3 = malloc(out_buf_size);
			if(threads >= 4)
			{
				tensor_buf4 = malloc(model_in_buf_size);
				output_data4 = malloc(out_buf_size);
			}
		}
	}
   
   //********* Read model
    TF_Graph* Graph1 = TF_NewGraph();
    TF_Graph* Graph2 = TF_NewGraph();
    TF_Graph* Graph3 = TF_NewGraph();
    TF_Graph* Graph4 = TF_NewGraph();
    
	TF_Status* Status1 = TF_NewStatus();
    TF_Status* Status2 = TF_NewStatus();
    TF_Status* Status3 = TF_NewStatus();
    TF_Status* Status4 = TF_NewStatus();
    
    TF_SessionOptions* SessionOpts1 = TF_NewSessionOptions();
    TF_SessionOptions* SessionOpts2 = TF_NewSessionOptions();
    TF_SessionOptions* SessionOpts3 = TF_NewSessionOptions();
    TF_SessionOptions* SessionOpts4 = TF_NewSessionOptions();
    
	TF_Buffer* RunOpts1 = NULL;
    TF_Buffer* RunOpts2 = NULL;
    TF_Buffer* RunOpts3 = NULL;
    TF_Buffer* RunOpts4 = NULL;
    
    //const char* saved_model_dir = "";  // Path of the model
    const char* tags = "serve"; // default model serving tag;
    
    int ntags = 1;
		
	TF_Session* Session1 = TF_LoadSessionFromSavedModel(SessionOpts1, RunOpts1, model_path, &tags, ntags, Graph1, NULL, Status1);
	TF_Session* Session2 = TF_LoadSessionFromSavedModel(SessionOpts2, RunOpts2, model_path, &tags, ntags, Graph2, NULL, Status2);
	TF_Session* Session3 = TF_LoadSessionFromSavedModel(SessionOpts3, RunOpts3, model_path, &tags, ntags, Graph3, NULL, Status3);
	TF_Session* Session4 = TF_LoadSessionFromSavedModel(SessionOpts4, RunOpts4, model_path, &tags, ntags, Graph4, NULL, Status4);
	
	 //****** Get input tensor
    TF_Output* Input1 = malloc(sizeof(TF_Output) * NumInputs);
    TF_Output* Input2 = malloc(sizeof(TF_Output) * NumInputs);
    TF_Output* Input3 = malloc(sizeof(TF_Output) * NumInputs);
    TF_Output* Input4 = malloc(sizeof(TF_Output) * NumInputs);
    
	TF_Output t1_0 = {TF_GraphOperationByName(Graph1, "serving_default_input_1"), 0};
	TF_Output t2_0 = {TF_GraphOperationByName(Graph2, "serving_default_input_1"), 0};
	TF_Output t3_0 = {TF_GraphOperationByName(Graph3, "serving_default_input_1"), 0};
	TF_Output t4_0 = {TF_GraphOperationByName(Graph4, "serving_default_input_1"), 0};
    
    Input1[0] = t1_0;
    Input2[0] = t2_0;
    Input3[0] = t3_0;
    Input4[0] = t4_0;
    
    //********* Get Output tensor
    TF_Output* Output1 = malloc(sizeof(TF_Output) * NumOutputs);
    TF_Output* Output2 = malloc(sizeof(TF_Output) * NumOutputs);
    TF_Output* Output3 = malloc(sizeof(TF_Output) * NumOutputs);
    TF_Output* Output4 = malloc(sizeof(TF_Output) * NumOutputs);
	
    TF_Output t1_2 = {TF_GraphOperationByName(Graph1, "StatefulPartitionedCall"), 0};
    TF_Output t2_2 = {TF_GraphOperationByName(Graph2, "StatefulPartitionedCall"), 0};
    TF_Output t3_2 = {TF_GraphOperationByName(Graph3, "StatefulPartitionedCall"), 0};
    TF_Output t4_2 = {TF_GraphOperationByName(Graph4, "StatefulPartitionedCall"), 0};
    
    Output1[0] = t1_2;
    Output2[0] = t2_2;
    Output3[0] = t3_2;
    Output4[0] = t4_2;
	
	//Error T1
	if(TF_GetCode(Status1) == TF_OK)
    {
        fprintf(stderr,"T1 : TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        fprintf(stderr,"T1 : %s",TF_Message(Status1));
    }
	
	if(t1_0.oper == NULL)
    {
        fprintf(stderr,"T1 ERROR: Failed TF_GraphOperationByName serving_default_input_1\n");
    }
    else
    {
        fprintf(stderr,"T1 : TF_GraphOperationByName serving_default_input_1 is OK\n");
    }
	
	if(t1_2.oper == NULL)
    {
        fprintf(stderr,"T1 ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    }
    else
    {
        fprintf(stderr,"T1 : TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    }
	
	
	//Error T2
	if(TF_GetCode(Status2) == TF_OK)
    {
        fprintf(stderr,"T2 : TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        fprintf(stderr,"T2 : %s",TF_Message(Status2));
    }
	
	if(t1_0.oper == NULL)
    {
        fprintf(stderr,"T2 ERROR: Failed TF_GraphOperationByName serving_default_input_1\n");
    }
    else
    {
        fprintf(stderr,"T2 : TF_GraphOperationByName serving_default_input_1 is OK\n");
    }
	
	if(t1_2.oper == NULL)
    {
        fprintf(stderr,"T2 ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    }
    else
    {
        fprintf(stderr,"T2 : TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    }
	
	
	//Error T3
	if(TF_GetCode(Status3) == TF_OK)
    {
        fprintf(stderr,"T3 : TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        fprintf(stderr,"T3 : %s",TF_Message(Status3));
    }
	
	if(t1_0.oper == NULL)
    {
        fprintf(stderr,"T3 ERROR: Failed TF_GraphOperationByName serving_default_input_1\n");
    }
    else
    {
        fprintf(stderr,"T3 : TF_GraphOperationByName serving_default_input_1 is OK\n");
    }
	
	if(t1_2.oper == NULL)
    {
        fprintf(stderr,"T3 ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    }
    else
    {
        fprintf(stderr,"T3 : TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    }
	
	
	//Error T4
	if(TF_GetCode(Status4) == TF_OK)
    {
        fprintf(stderr,"T4 : TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        fprintf(stderr,"T4 : %s",TF_Message(Status4));
    }
	
	if(t1_0.oper == NULL)
    {
        fprintf(stderr,"T4 ERROR: Failed TF_GraphOperationByName serving_default_input_1\n");
    }
    else
    {
        fprintf(stderr,"T4 : TF_GraphOperationByName serving_default_input_1 is OK\n");
    }
	
	if(t1_2.oper == NULL)
    {
        fprintf(stderr,"T4 ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    }
    else
    {
        fprintf(stderr,"T4 : TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    }
	
	//********* Allocate data for inputs & outputs
	
	//thread 1
    TF_Tensor** InputValues_t1  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
    TF_Tensor** InputValues_t2  = NULL;
    TF_Tensor** InputValues_t3  = NULL;
    TF_Tensor** InputValues_t4  = NULL;
	
    TF_Tensor** OutputValues_t1 = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);
    TF_Tensor** OutputValues_t2 = NULL;
    TF_Tensor** OutputValues_t3 = NULL;
    TF_Tensor** OutputValues_t4 = NULL;
	
	if(threads >= 2)//thread 2
	{
		InputValues_t2  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
		OutputValues_t2 = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);
		if(threads >= 3)//thread 3
		{
			InputValues_t3  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
			OutputValues_t3 = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);
			if(threads >= 4)//thread 4
			{
				InputValues_t4  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
				OutputValues_t4 = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);
			}
		}
	}
    
	while(!feof(stdin))
    {
		//get data
		InputValues_t1[0] = load_data_as_tensor(tensor_buf1,NumInputs,in_dim_1,in_dim_2,in_dim_3);
	   	if(threads >= 2)//thread 2
		{
			InputValues_t2[0] = load_data_as_tensor(tensor_buf2,NumInputs,in_dim_1,in_dim_2,in_dim_3);
			if(threads >= 3)//thread 3
			{
				InputValues_t3[0] = load_data_as_tensor(tensor_buf3,NumInputs,in_dim_1,in_dim_2,in_dim_3);
				if(threads >= 4)//thread 4
				{
					InputValues_t4[0] = load_data_as_tensor(tensor_buf4,NumInputs,in_dim_1,in_dim_2,in_dim_3);
				}
			}
		}
	   
       // Run the model
       TF_SessionRun(Session1, NULL, Input1, InputValues_t1, NumInputs, Output1, OutputValues_t1, NumOutputs, NULL, 0,NULL , Status1);
       TF_SessionRun(Session2, NULL, Input2, InputValues_t2, NumInputs, Output2, OutputValues_t2, NumOutputs, NULL, 0,NULL , Status2);
       TF_SessionRun(Session3, NULL, Input3, InputValues_t3, NumInputs, Output3, OutputValues_t3, NumOutputs, NULL, 0,NULL , Status3);
       TF_SessionRun(Session4, NULL, Input4, InputValues_t4, NumInputs, Output4, OutputValues_t4, NumOutputs, NULL, 0,NULL , Status4);
       
       //check for error before sending data
       if((TF_GetCode(Status1) != TF_OK) || (TF_GetCode(Status2) != TF_OK) || (TF_GetCode(Status3) != TF_OK) || (TF_GetCode(Status4) != TF_OK))
       {
		    fprintf(stderr,"%T1 : s",TF_Message(Status1)); 
		   	if(threads >= 2)//thread 2
			{
				fprintf(stderr,"%T2 : s",TF_Message(Status2)); 
				if(threads >= 3)//thread 3
				{
					fprintf(stderr,"%T3 : s",TF_Message(Status3)); 
					if(threads >= 4)//thread 4
					{
						fprintf(stderr,"%T4 : s",TF_Message(Status4)); 
					}
				}
			}
       }
       else//write data
       {
           if(isatty(STDOUT_FILENO) == 0)
	        {
			   //Thread 1
               pred_data = TF_TensorData(*OutputValues_t1);
               process_output_field(pred_data,output_data1,(NumInputs*out_dim_1*out_dim_2*out_dim_3),model_type);
               fwrite(output_data1, out_buf_size, 1, stdout);
               fflush(stdout);
			   
			   //Thread 2
               pred_data = TF_TensorData(*OutputValues_t2);
               process_output_field(pred_data,output_data2,(NumInputs*out_dim_1*out_dim_2*out_dim_3),model_type);
               fwrite(output_data2, out_buf_size, 1, stdout);
               fflush(stdout);
			   
			   //Thread 3
               pred_data = TF_TensorData(*OutputValues_t3);
               process_output_field(pred_data,output_data3,(NumInputs*out_dim_1*out_dim_2*out_dim_3),model_type);
               fwrite(output_data3, out_buf_size, 1, stdout);
               fflush(stdout);
			   
			   //Thread 4
               pred_data = TF_TensorData(*OutputValues_t4);
               process_output_field(pred_data,output_data4,(NumInputs*out_dim_1*out_dim_2*out_dim_3),model_type);
               fwrite(output_data4, out_buf_size, 1, stdout);
               fflush(stdout);
           }
           else
           {
               fprintf(stderr,"Error can't write to pipe\n");
               fclose(stdout);
               break;
           }
		   TF_DeleteTensor(InputValues_t1[0]);
		   TF_DeleteTensor(InputValues_t2[0]);
		   TF_DeleteTensor(InputValues_t3[0]);
		   TF_DeleteTensor(InputValues_t4[0]);
		   
		   TF_DeleteTensor(OutputValues_t1[0]);
		   TF_DeleteTensor(OutputValues_t2[0]);
		   TF_DeleteTensor(OutputValues_t3[0]);
		   TF_DeleteTensor(OutputValues_t4[0]);
       }
    }

    // Free memory
    TF_DeleteGraph(Graph1);
    TF_DeleteGraph(Graph2);
    TF_DeleteGraph(Graph3);
    TF_DeleteGraph(Graph4);
	
    TF_DeleteSession(Session1, Status1);
    TF_DeleteSession(Session2, Status2);
    TF_DeleteSession(Session3, Status3);
    TF_DeleteSession(Session4, Status4);
	
    TF_DeleteSessionOptions(SessionOpts1);
    TF_DeleteSessionOptions(SessionOpts2);
    TF_DeleteSessionOptions(SessionOpts3);
    TF_DeleteSessionOptions(SessionOpts4);
	
    TF_DeleteStatus(Status1);
    TF_DeleteStatus(Status2);
    TF_DeleteStatus(Status3);
    TF_DeleteStatus(Status4);
    
    //free(pred_data);
    free(output_data1);
	free(tensor_buf1);
	if(threads >= 2)
	{
		free(output_data2);
		free(tensor_buf2);
		if(threads >= 3)
		{
			free(output_data3);
			free(tensor_buf3);
			if(threads >= 4)
			{
				free(output_data4);
				free(tensor_buf4);
			}
		}
	}
    
    return 0;
}