//https://medium.com/analytics-vidhya/deploying-tensorflow-2-1-as-c-c-executable-1d090845055c

#include <stdlib.h>
#include <stdio.h>
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
void process_output_field(float *input_buf,unsigned short *output_buf,int sample_size)
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
}

int main(int argc, char **argv)
{
   
#ifdef _WIN32 || _WIN64
	_setmode(_fileno(stdout), O_BINARY);
	_setmode(_fileno(stdin), O_BINARY);	
#endif
   
   input_data = stdin;//get stdin file
   
   //batch size
   int NumInputs = 1;
   int NumOutputs = NumInputs;
   int in_dim_1 = 242;
   int in_dim_2 = 910;
   int in_dim_3 = 1;
   
   int out_dim_1 = 242;
   int out_dim_2 = 910;
   int out_dim_3 = 3;
   
   //model input data size
   int model_in_buf_size = (sizeof(float)*(NumInputs*in_dim_1*in_dim_2*in_dim_3));
   //model output data size
   int model_out_buf_size = (sizeof(float)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   
   //input data size (stdin)
   int in_buf_size = (sizeof(short)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   //output data size (stdout)
   int out_buf_size = (sizeof(short)*(NumInputs*out_dim_1*out_dim_2*out_dim_3));
   
   void* tensor_buf = malloc(model_in_buf_size);
   
   void* pred_data = NULL;
   unsigned short* output_data = malloc(out_buf_size);
   
   //********* Read model
    TF_Graph* Graph = TF_NewGraph();
    TF_Status* Status = TF_NewStatus();
    
    TF_SessionOptions* SessionOpts = TF_NewSessionOptions();
    TF_Buffer* RunOpts = NULL;
    
    //const char* saved_model_dir = "";  // Path of the model
    const char* tags = "serve"; // default model serving tag;
    
    int ntags = 1;
    TF_Session* Session = TF_LoadSessionFromSavedModel(SessionOpts, RunOpts, argv[1], &tags, ntags, Graph, NULL, Status);
    
    if(TF_GetCode(Status) == TF_OK)
    {
        fprintf(stderr,"TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        fprintf(stderr,"%s",TF_Message(Status));
    }
	
	 //****** Get input tensor
    TF_Output* Input = malloc(sizeof(TF_Output) * NumInputs);
    TF_Output t0 = {TF_GraphOperationByName(Graph, "serving_default_conv2d_input"), 0};
    
    if(t0.oper == NULL)
    {
        fprintf(stderr,"ERROR: Failed TF_GraphOperationByName serving_default_conv2d_input\n");
    }
    else
    {
        fprintf(stderr,"TF_GraphOperationByName serving_default_conv2d_input is OK\n");
    }
    
    Input[0] = t0;
    
    //********* Get Output tensor
    TF_Output* Output = malloc(sizeof(TF_Output) * NumOutputs);
    TF_Output t2 = {TF_GraphOperationByName(Graph, "StatefulPartitionedCall"), 0};
    
    if(t2.oper == NULL)
    {
        fprintf(stderr,"ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    }
    else
    {
        fprintf(stderr,"TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    }
    
    Output[0] = t2;
	
	   //********* Allocate data for inputs & outputs
    TF_Tensor** InputValues  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
    TF_Tensor** OutputValues = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);
    
	while(!feof(stdin))
    {
       //get data
       InputValues[0] = load_data_as_tensor(tensor_buf,NumInputs,in_dim_1,in_dim_2,in_dim_3);
	   
       // Run the model
       TF_SessionRun(Session, NULL, Input, InputValues, NumInputs, Output, OutputValues, NumOutputs, NULL, 0,NULL , Status);
       
       //check for error before sending data
       if(TF_GetCode(Status) != TF_OK)
       {
           fprintf(stderr,"%s",TF_Message(Status));
           
       }
       else//write data
       {
           if(isatty(STDOUT_FILENO) == 0)
	        {
               pred_data = TF_TensorData(*OutputValues);
               process_output_field(pred_data,output_data,(NumInputs*out_dim_1*out_dim_2*out_dim_3));
               fwrite(output_data, out_buf_size, 1, stdout);
               fflush(stdout);
           }
           else
           {
               fprintf(stderr,"Error can't write to pipe\n");
               fclose(stdout);
               break;
           }
		   TF_DeleteTensor(InputValues[0]);
		   TF_DeleteTensor(OutputValues[0]);
       }
    }

    // Free memory
    TF_DeleteGraph(Graph);
    TF_DeleteSession(Session, Status);
    TF_DeleteSessionOptions(SessionOpts);
    TF_DeleteStatus(Status);
    
    //free(pred_data);
    free(output_data);
    free(tensor_buf);
    
    return 0;
}