��4
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��*
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0
b
total_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_7
[
total_7/Read/ReadVariableOpReadVariableOptotal_7*
_output_shapes
: *
dtype0
b
count_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_8
[
count_8/Read/ReadVariableOpReadVariableOpcount_8*
_output_shapes
: *
dtype0
b
total_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_8
[
total_8/Read/ReadVariableOpReadVariableOptotal_8*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
learning_rate_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namelearning_rate_1
k
#learning_rate_1/Read/ReadVariableOpReadVariableOplearning_rate_1*
_output_shapes
: *
dtype0
j
iteration_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiteration_1
c
iteration_1/Read/ReadVariableOpReadVariableOpiteration_1*
_output_shapes
: *
dtype0	
�
chroma_Conv2D_9_f2_k1.1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namechroma_Conv2D_9_f2_k1.1/bias
�
0chroma_Conv2D_9_f2_k1.1/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_9_f2_k1.1/bias*
_output_shapes
:*
dtype0
�
chroma_Conv2D_9_f2_k1.1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_9_f2_k1.1/kernel
�
2chroma_Conv2D_9_f2_k1.1/kernel/Read/ReadVariableOpReadVariableOpchroma_Conv2D_9_f2_k1.1/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_8_f30_k1.25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_8_f30_k1.25/bias
�
2chroma_Conv2D_8_f30_k1.25/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_8_f30_k1.25/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_8_f30_k1.25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_8_f30_k1.25/kernel
�
4chroma_Conv2D_8_f30_k1.25/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_8_f30_k1.25/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_7_f15_k3.3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namechroma_Conv2D_7_f15_k3.3/bias
�
1chroma_Conv2D_7_f15_k3.3/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_7_f15_k3.3/bias*
_output_shapes
:*
dtype0
�
chroma_Conv2D_7_f15_k3.3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!chroma_Conv2D_7_f15_k3.3/kernel
�
3chroma_Conv2D_7_f15_k3.3/kernel/Read/ReadVariableOpReadVariableOpchroma_Conv2D_7_f15_k3.3/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_6_f30_k1.25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_6_f30_k1.25/bias
�
2chroma_Conv2D_6_f30_k1.25/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_6_f30_k1.25/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_6_f30_k1.25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_6_f30_k1.25/kernel
�
4chroma_Conv2D_6_f30_k1.25/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_6_f30_k1.25/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_5_f15_k1.13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_5_f15_k1.13/bias
�
2chroma_Conv2D_5_f15_k1.13/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_5_f15_k1.13/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_5_f15_k1.13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_5_f15_k1.13/kernel
�
4chroma_Conv2D_5_f15_k1.13/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_5_f15_k1.13/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_4_f15_k1.13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_4_f15_k1.13/bias
�
2chroma_Conv2D_4_f15_k1.13/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_4_f15_k1.13/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_4_f15_k1.13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_4_f15_k1.13/kernel
�
4chroma_Conv2D_4_f15_k1.13/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_4_f15_k1.13/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_3_f8_k3.3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namechroma_Conv2D_3_f8_k3.3/bias
�
0chroma_Conv2D_3_f8_k3.3/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_3_f8_k3.3/bias*
_output_shapes
:*
dtype0
�
chroma_Conv2D_3_f8_k3.3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_3_f8_k3.3/kernel
�
2chroma_Conv2D_3_f8_k3.3/kernel/Read/ReadVariableOpReadVariableOpchroma_Conv2D_3_f8_k3.3/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_2_f15_k1.13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_2_f15_k1.13/bias
�
2chroma_Conv2D_2_f15_k1.13/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_2_f15_k1.13/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_2_f15_k1.13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_2_f15_k1.13/kernel
�
4chroma_Conv2D_2_f15_k1.13/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_2_f15_k1.13/kernel*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_1_f15_k1.13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_1_f15_k1.13/bias
�
2chroma_Conv2D_1_f15_k1.13/bias/Read/ReadVariableOpReadVariableOpchroma_Conv2D_1_f15_k1.13/bias*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_1_f15_k1.13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_1_f15_k1.13/kernel
�
4chroma_Conv2D_1_f15_k1.13/kernel/Read/ReadVariableOpReadVariableOp chroma_Conv2D_1_f15_k1.13/kernel*&
_output_shapes
:*
dtype0
�
luma_Conv2D_9_f1_k1.1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameluma_Conv2D_9_f1_k1.1/bias
�
.luma_Conv2D_9_f1_k1.1/bias/Read/ReadVariableOpReadVariableOpluma_Conv2D_9_f1_k1.1/bias*
_output_shapes
:*
dtype0
�
luma_Conv2D_9_f1_k1.1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameluma_Conv2D_9_f1_k1.1/kernel
�
0luma_Conv2D_9_f1_k1.1/kernel/Read/ReadVariableOpReadVariableOpluma_Conv2D_9_f1_k1.1/kernel*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_8_f30_k1.25/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_8_f30_k1.25/bias_1
�
4chroma_Conv2D_8_f30_k1.25/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_8_f30_k1.25/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_8_f30_k1.25/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_8_f30_k1.25/kernel_1
�
6chroma_Conv2D_8_f30_k1.25/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_8_f30_k1.25/kernel_1*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_7_f15_k3.3/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!chroma_Conv2D_7_f15_k3.3/bias_1
�
3chroma_Conv2D_7_f15_k3.3/bias_1/Read/ReadVariableOpReadVariableOpchroma_Conv2D_7_f15_k3.3/bias_1*
_output_shapes
:*
dtype0
�
!chroma_Conv2D_7_f15_k3.3/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!chroma_Conv2D_7_f15_k3.3/kernel_1
�
5chroma_Conv2D_7_f15_k3.3/kernel_1/Read/ReadVariableOpReadVariableOp!chroma_Conv2D_7_f15_k3.3/kernel_1*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_6_f30_k1.25/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_6_f30_k1.25/bias_1
�
4chroma_Conv2D_6_f30_k1.25/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_6_f30_k1.25/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_6_f30_k1.25/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_6_f30_k1.25/kernel_1
�
6chroma_Conv2D_6_f30_k1.25/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_6_f30_k1.25/kernel_1*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_5_f15_k1.13/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_5_f15_k1.13/bias_1
�
4chroma_Conv2D_5_f15_k1.13/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_5_f15_k1.13/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_5_f15_k1.13/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_5_f15_k1.13/kernel_1
�
6chroma_Conv2D_5_f15_k1.13/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_5_f15_k1.13/kernel_1*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_4_f15_k1.13/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_4_f15_k1.13/bias_1
�
4chroma_Conv2D_4_f15_k1.13/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_4_f15_k1.13/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_4_f15_k1.13/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_4_f15_k1.13/kernel_1
�
6chroma_Conv2D_4_f15_k1.13/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_4_f15_k1.13/kernel_1*&
_output_shapes
:*
dtype0
�
chroma_Conv2D_3_f8_k3.3/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name chroma_Conv2D_3_f8_k3.3/bias_1
�
2chroma_Conv2D_3_f8_k3.3/bias_1/Read/ReadVariableOpReadVariableOpchroma_Conv2D_3_f8_k3.3/bias_1*
_output_shapes
:*
dtype0
�
 chroma_Conv2D_3_f8_k3.3/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_3_f8_k3.3/kernel_1
�
4chroma_Conv2D_3_f8_k3.3/kernel_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_3_f8_k3.3/kernel_1*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_2_f15_k1.13/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_2_f15_k1.13/bias_1
�
4chroma_Conv2D_2_f15_k1.13/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_2_f15_k1.13/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_2_f15_k1.13/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_2_f15_k1.13/kernel_1
�
6chroma_Conv2D_2_f15_k1.13/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_2_f15_k1.13/kernel_1*&
_output_shapes
:*
dtype0
�
 chroma_Conv2D_1_f15_k1.13/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" chroma_Conv2D_1_f15_k1.13/bias_1
�
4chroma_Conv2D_1_f15_k1.13/bias_1/Read/ReadVariableOpReadVariableOp chroma_Conv2D_1_f15_k1.13/bias_1*
_output_shapes
:*
dtype0
�
"chroma_Conv2D_1_f15_k1.13/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"chroma_Conv2D_1_f15_k1.13/kernel_1
�
6chroma_Conv2D_1_f15_k1.13/kernel_1/Read/ReadVariableOpReadVariableOp"chroma_Conv2D_1_f15_k1.13/kernel_1*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1"chroma_Conv2D_1_f15_k1.13/kernel_1 chroma_Conv2D_1_f15_k1.13/bias_1"chroma_Conv2D_2_f15_k1.13/kernel_1 chroma_Conv2D_2_f15_k1.13/bias_1 chroma_Conv2D_3_f8_k3.3/kernel_1chroma_Conv2D_3_f8_k3.3/bias_1"chroma_Conv2D_4_f15_k1.13/kernel_1 chroma_Conv2D_4_f15_k1.13/bias_1"chroma_Conv2D_5_f15_k1.13/kernel_1 chroma_Conv2D_5_f15_k1.13/bias_1"chroma_Conv2D_6_f30_k1.25/kernel_1 chroma_Conv2D_6_f30_k1.25/bias_1!chroma_Conv2D_7_f15_k3.3/kernel_1chroma_Conv2D_7_f15_k3.3/bias_1"chroma_Conv2D_8_f30_k1.25/kernel_1 chroma_Conv2D_8_f30_k1.25/bias_1luma_Conv2D_9_f1_k1.1/kernelluma_Conv2D_9_f1_k1.1/bias chroma_Conv2D_1_f15_k1.13/kernelchroma_Conv2D_1_f15_k1.13/bias chroma_Conv2D_2_f15_k1.13/kernelchroma_Conv2D_2_f15_k1.13/biaschroma_Conv2D_3_f8_k3.3/kernelchroma_Conv2D_3_f8_k3.3/bias chroma_Conv2D_4_f15_k1.13/kernelchroma_Conv2D_4_f15_k1.13/bias chroma_Conv2D_5_f15_k1.13/kernelchroma_Conv2D_5_f15_k1.13/bias chroma_Conv2D_6_f30_k1.25/kernelchroma_Conv2D_6_f30_k1.25/biaschroma_Conv2D_7_f15_k3.3/kernelchroma_Conv2D_7_f15_k3.3/bias chroma_Conv2D_8_f30_k1.25/kernelchroma_Conv2D_8_f30_k1.25/biaschroma_Conv2D_9_f2_k1.1/kernelchroma_Conv2D_9_f2_k1.1/bias*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *+
f&R$
"__inference_signature_wrapper_3694

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� Bڿ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
layer_with_weights-2
layer-8
layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
layer-18
 layer-19
!layer_with_weights-6
!layer-20
"layer-21
#layer_with_weights-7
#layer-22
$layer-23
%layer-24
&layer_with_weights-8
&layer-25
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-	optimizer*
�
.layer-0
/layer-1
0layer_with_weights-0
0layer-2
1layer-3
2layer-4
3layer_with_weights-1
3layer-5
4layer-6
5layer-7
6layer_with_weights-2
6layer-8
7layer-9
8layer-10
9layer_with_weights-3
9layer-11
:layer-12
;layer-13
<layer_with_weights-4
<layer-14
=layer-15
>layer-16
?layer_with_weights-5
?layer-17
@layer-18
Alayer-19
Blayer_with_weights-6
Blayer-20
Clayer-21
Dlayer_with_weights-7
Dlayer-22
Elayer-23
Flayer-24
Glayer_with_weights-8
Glayer-25
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N	optimizer*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19
i20
j21
k22
l23
m24
n25
o26
p27
q28
r29
s30
t31
u32
v33
w34
x35*
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19
i20
j21
k22
l23
m24
n25
o26
p27
q28
r29
s30
t31
u32
v33
w34
x35*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
8
~trace_0
trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 

�serving_default* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Wkernel
Xbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ykernel
Zbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ckernel
dbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ekernel
fbias
!�_jit_compiled_convolution_op*
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17*
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
S
�_iterations
�
_variables
�_learning_rate
�_update_step_xla*
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kkernel
lbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias
!�_jit_compiled_convolution_op*
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17*
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
S
�_iterations
�
_variables
�_learning_rate
�_update_step_xla*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUE"chroma_Conv2D_1_f15_k1.13/kernel_1&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE chroma_Conv2D_1_f15_k1.13/bias_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"chroma_Conv2D_2_f15_k1.13/kernel_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE chroma_Conv2D_2_f15_k1.13/bias_1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE chroma_Conv2D_3_f8_k3.3/kernel_1&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEchroma_Conv2D_3_f8_k3.3/bias_1&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"chroma_Conv2D_4_f15_k1.13/kernel_1&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE chroma_Conv2D_4_f15_k1.13/bias_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"chroma_Conv2D_5_f15_k1.13/kernel_1&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE chroma_Conv2D_5_f15_k1.13/bias_1&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"chroma_Conv2D_6_f30_k1.25/kernel_1'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_6_f30_k1.25/bias_1'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!chroma_Conv2D_7_f15_k3.3/kernel_1'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEchroma_Conv2D_7_f15_k3.3/bias_1'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"chroma_Conv2D_8_f30_k1.25/kernel_1'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_8_f30_k1.25/bias_1'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEluma_Conv2D_9_f1_k1.1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEluma_Conv2D_9_f1_k1.1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_1_f15_k1.13/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_1_f15_k1.13/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_2_f15_k1.13/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_2_f15_k1.13/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_3_f8_k3.3/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEchroma_Conv2D_3_f8_k3.3/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_4_f15_k1.13/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_4_f15_k1.13/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_5_f15_k1.13/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_5_f15_k1.13/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_6_f30_k1.25/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_6_f30_k1.25/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEchroma_Conv2D_7_f15_k3.3/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEchroma_Conv2D_7_f15_k3.3/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE chroma_Conv2D_8_f30_k1.25/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_8_f30_k1.25/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEchroma_Conv2D_9_f2_k1.1/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEchroma_Conv2D_9_f2_k1.1/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

_0
`1*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

a0
b1*

a0
b1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

c0
d1*

c0
d1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

e0
f1*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 19
!20
"21
#22
$23
%24
&25*
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
jd
VARIABLE_VALUEiteration_1Elayer_with_weights-0/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
* 
qk
VARIABLE_VALUElearning_rate_1Hlayer_with_weights-0/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

g0
h1*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

i0
j1*

i0
j1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

u0
v1*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

w0
x1*

w0
x1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
�
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
F24
G25*
,
�0
�1
�2
�3
�4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
hb
VARIABLE_VALUE	iterationElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
* 
oi
VARIABLE_VALUElearning_rateHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_8Ilayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_8Ilayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_7Ilayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_7Ilayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_6Ilayer_with_weights-0/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_6Ilayer_with_weights-0/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_5Ilayer_with_weights-0/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_5Ilayer_with_weights-0/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_4Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_4Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_3Ilayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_3Ilayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-1/keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-1/keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6chroma_Conv2D_1_f15_k1.13/kernel_1/Read/ReadVariableOp4chroma_Conv2D_1_f15_k1.13/bias_1/Read/ReadVariableOp6chroma_Conv2D_2_f15_k1.13/kernel_1/Read/ReadVariableOp4chroma_Conv2D_2_f15_k1.13/bias_1/Read/ReadVariableOp4chroma_Conv2D_3_f8_k3.3/kernel_1/Read/ReadVariableOp2chroma_Conv2D_3_f8_k3.3/bias_1/Read/ReadVariableOp6chroma_Conv2D_4_f15_k1.13/kernel_1/Read/ReadVariableOp4chroma_Conv2D_4_f15_k1.13/bias_1/Read/ReadVariableOp6chroma_Conv2D_5_f15_k1.13/kernel_1/Read/ReadVariableOp4chroma_Conv2D_5_f15_k1.13/bias_1/Read/ReadVariableOp6chroma_Conv2D_6_f30_k1.25/kernel_1/Read/ReadVariableOp4chroma_Conv2D_6_f30_k1.25/bias_1/Read/ReadVariableOp5chroma_Conv2D_7_f15_k3.3/kernel_1/Read/ReadVariableOp3chroma_Conv2D_7_f15_k3.3/bias_1/Read/ReadVariableOp6chroma_Conv2D_8_f30_k1.25/kernel_1/Read/ReadVariableOp4chroma_Conv2D_8_f30_k1.25/bias_1/Read/ReadVariableOp0luma_Conv2D_9_f1_k1.1/kernel/Read/ReadVariableOp.luma_Conv2D_9_f1_k1.1/bias/Read/ReadVariableOp4chroma_Conv2D_1_f15_k1.13/kernel/Read/ReadVariableOp2chroma_Conv2D_1_f15_k1.13/bias/Read/ReadVariableOp4chroma_Conv2D_2_f15_k1.13/kernel/Read/ReadVariableOp2chroma_Conv2D_2_f15_k1.13/bias/Read/ReadVariableOp2chroma_Conv2D_3_f8_k3.3/kernel/Read/ReadVariableOp0chroma_Conv2D_3_f8_k3.3/bias/Read/ReadVariableOp4chroma_Conv2D_4_f15_k1.13/kernel/Read/ReadVariableOp2chroma_Conv2D_4_f15_k1.13/bias/Read/ReadVariableOp4chroma_Conv2D_5_f15_k1.13/kernel/Read/ReadVariableOp2chroma_Conv2D_5_f15_k1.13/bias/Read/ReadVariableOp4chroma_Conv2D_6_f30_k1.25/kernel/Read/ReadVariableOp2chroma_Conv2D_6_f30_k1.25/bias/Read/ReadVariableOp3chroma_Conv2D_7_f15_k3.3/kernel/Read/ReadVariableOp1chroma_Conv2D_7_f15_k3.3/bias/Read/ReadVariableOp4chroma_Conv2D_8_f30_k1.25/kernel/Read/ReadVariableOp2chroma_Conv2D_8_f30_k1.25/bias/Read/ReadVariableOp2chroma_Conv2D_9_f2_k1.1/kernel/Read/ReadVariableOp0chroma_Conv2D_9_f2_k1.1/bias/Read/ReadVariableOpiteration_1/Read/ReadVariableOp#learning_rate_1/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*G
Tin@
>2<		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *&
f!R
__inference__traced_save_6026
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"chroma_Conv2D_1_f15_k1.13/kernel_1 chroma_Conv2D_1_f15_k1.13/bias_1"chroma_Conv2D_2_f15_k1.13/kernel_1 chroma_Conv2D_2_f15_k1.13/bias_1 chroma_Conv2D_3_f8_k3.3/kernel_1chroma_Conv2D_3_f8_k3.3/bias_1"chroma_Conv2D_4_f15_k1.13/kernel_1 chroma_Conv2D_4_f15_k1.13/bias_1"chroma_Conv2D_5_f15_k1.13/kernel_1 chroma_Conv2D_5_f15_k1.13/bias_1"chroma_Conv2D_6_f30_k1.25/kernel_1 chroma_Conv2D_6_f30_k1.25/bias_1!chroma_Conv2D_7_f15_k3.3/kernel_1chroma_Conv2D_7_f15_k3.3/bias_1"chroma_Conv2D_8_f30_k1.25/kernel_1 chroma_Conv2D_8_f30_k1.25/bias_1luma_Conv2D_9_f1_k1.1/kernelluma_Conv2D_9_f1_k1.1/bias chroma_Conv2D_1_f15_k1.13/kernelchroma_Conv2D_1_f15_k1.13/bias chroma_Conv2D_2_f15_k1.13/kernelchroma_Conv2D_2_f15_k1.13/biaschroma_Conv2D_3_f8_k3.3/kernelchroma_Conv2D_3_f8_k3.3/bias chroma_Conv2D_4_f15_k1.13/kernelchroma_Conv2D_4_f15_k1.13/bias chroma_Conv2D_5_f15_k1.13/kernelchroma_Conv2D_5_f15_k1.13/bias chroma_Conv2D_6_f30_k1.25/kernelchroma_Conv2D_6_f30_k1.25/biaschroma_Conv2D_7_f15_k3.3/kernelchroma_Conv2D_7_f15_k3.3/bias chroma_Conv2D_8_f30_k1.25/kernelchroma_Conv2D_8_f30_k1.25/biaschroma_Conv2D_9_f2_k1.1/kernelchroma_Conv2D_9_f2_k1.1/biasiteration_1learning_rate_1	iterationlearning_ratetotal_8count_8total_7count_7total_6count_6total_5count_5total_4count_4total_3count_3total_2count_2total_1count_1totalcount*F
Tin?
=2;*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *)
f$R"
 __inference__traced_restore_6210��&
�
W
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5747

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_chroma_layer_call_fn_4640

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2373y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5574

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5184

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1583y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�	
(__inference_model_YUV_layer_call_fn_3140
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_model_YUV_layer_call_and_return_conditional_losses_3065y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5731

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
� 
�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3615
input_1)
model_luma_3539:
model_luma_3541:)
model_luma_3543:
model_luma_3545:)
model_luma_3547:
model_luma_3549:)
model_luma_3551:
model_luma_3553:)
model_luma_3555:
model_luma_3557:)
model_luma_3559:
model_luma_3561:)
model_luma_3563:
model_luma_3565:)
model_luma_3567:
model_luma_3569:)
model_luma_3571:
model_luma_3573:+
model_chroma_3576:
model_chroma_3578:+
model_chroma_3580:
model_chroma_3582:+
model_chroma_3584:
model_chroma_3586:+
model_chroma_3588:
model_chroma_3590:+
model_chroma_3592:
model_chroma_3594:+
model_chroma_3596:
model_chroma_3598:+
model_chroma_3600:
model_chroma_3602:+
model_chroma_3604:
model_chroma_3606:+
model_chroma_3608:
model_chroma_3610:
identity��$model_chroma/StatefulPartitionedCall�"model_luma/StatefulPartitionedCall�
"model_luma/StatefulPartitionedCallStatefulPartitionedCallinput_1model_luma_3539model_luma_3541model_luma_3543model_luma_3545model_luma_3547model_luma_3549model_luma_3551model_luma_3553model_luma_3555model_luma_3557model_luma_3559model_luma_3561model_luma_3563model_luma_3565model_luma_3567model_luma_3569model_luma_3571model_luma_3573*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1832�
$model_chroma/StatefulPartitionedCallStatefulPartitionedCallinput_1model_chroma_3576model_chroma_3578model_chroma_3580model_chroma_3582model_chroma_3584model_chroma_3586model_chroma_3588model_chroma_3590model_chroma_3592model_chroma_3594model_chroma_3596model_chroma_3598model_chroma_3600model_chroma_3602model_chroma_3604model_chroma_3606model_chroma_3608model_chroma_3610*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2764�
concatenate/PartitionedCallPartitionedCall+model_luma/StatefulPartitionedCall:output:0-model_chroma/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_3062}
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp%^model_chroma/StatefulPartitionedCall#^model_luma/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_chroma/StatefulPartitionedCall$model_chroma/StatefulPartitionedCall2H
"model_luma/StatefulPartitionedCall"model_luma/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
W
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_4980

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5660

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5219

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5411

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2190j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5548

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1282

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5036

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
k
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*J
_output_shapes8
6:4������������������������������������*

begin_mask	*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5711

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5235

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1378j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5322

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1420j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2310

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1354

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_5442

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5635

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2286j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
6__inference_chroma_Conv2D_9_f2_k1.1_layer_call_fn_5818

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�	
"__inference_signature_wrapper_3694
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *(
f#R!
__inference__wrapped_model_1110y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5518

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5051

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5092

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
s
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5087

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������a
mulMulinputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_chroma_layer_call_fn_2412
cvbs_input_chroma!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcvbs_input_chromaunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2373y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�	
q
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2611

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5644

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
4__inference_luma_Conv2D_9_f1_k1.1_layer_call_fn_5362

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5128

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1615y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5588

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5420

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_chroma_layer_call_fn_2844
cvbs_input_chroma!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcvbs_input_chromaunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2764y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
n
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1378

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5787

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5132

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5199

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5507

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5619

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1330

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5107

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5230

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�o
�
D__inference_model_luma_layer_call_and_return_conditional_losses_1977
cvbs_input_chroma8
chroma_conv2d_1_f15_k1_13_1916:,
chroma_conv2d_1_f15_k1_13_1918:8
chroma_conv2d_2_f15_k1_13_1923:,
chroma_conv2d_2_f15_k1_13_1925:6
chroma_conv2d_3_f8_k3_3_1930:*
chroma_conv2d_3_f8_k3_3_1932:8
chroma_conv2d_4_f15_k1_13_1937:,
chroma_conv2d_4_f15_k1_13_1939:8
chroma_conv2d_5_f15_k1_13_1944:,
chroma_conv2d_5_f15_k1_13_1946:8
chroma_conv2d_6_f30_k1_25_1951:,
chroma_conv2d_6_f30_k1_25_1953:7
chroma_conv2d_7_f15_k3_3_1958:+
chroma_conv2d_7_f15_k3_3_1960:8
chroma_conv2d_8_f30_k1_25_1964:,
chroma_conv2d_8_f30_k1_25_1966:4
luma_conv2d_9_f1_k1_1_1971:(
luma_conv2d_9_f1_k1_1_1973:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallcvbs_input_chroma*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_1916chroma_conv2d_1_f15_k1_13_1918*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248�
(chroma_GausianNoise_1_30/PartitionedCallPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1258�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_1923chroma_conv2d_2_f15_k1_13_1925*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272�
(chroma_GausianNoise_2_35/PartitionedCallPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1282�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_2_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_1930chroma_conv2d_3_f8_k3_3_1932*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296�
*chroma_GausianDropout_1_30/PartitionedCallPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1306�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall3chroma_GausianDropout_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_1937chroma_conv2d_4_f15_k1_13_1939*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320�
(chroma_GausianNoise_3_35/PartitionedCallPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1330�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_3_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_1944chroma_conv2d_5_f15_k1_13_1946*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344�
(chroma_GausianNoise_4_30/PartitionedCallPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1354�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_4_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_1951chroma_conv2d_6_f30_k1_25_1953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368�
(chroma_GausianNoise_5_30/PartitionedCallPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1378�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_5_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_1958chroma_conv2d_7_f15_k3_3_1960*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_1964chroma_conv2d_8_f30_k1_25_1966*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410�
(chroma_GausianNoise_6_35/PartitionedCallPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1420�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_6_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226�
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0luma_conv2d_9_f1_k1_1_1971luma_conv2d_9_f1_k1_1_1973*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434�
IdentityIdentity6luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall.^luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2^
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
s
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5266

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_5436

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_4995

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_model_luma_layer_call_fn_4376

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1832y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5778

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2352j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5640

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2515y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2238

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5204

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4964

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�0
__inference__wrapped_model_1110
input_1g
Mmodel_yuv_model_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:g
Mmodel_yuv_model_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:e
Kmodel_yuv_model_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:Z
Lmodel_yuv_model_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:g
Mmodel_yuv_model_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:g
Mmodel_yuv_model_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:g
Mmodel_yuv_model_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:f
Lmodel_yuv_model_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:[
Mmodel_yuv_model_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:g
Mmodel_yuv_model_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:\
Nmodel_yuv_model_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:c
Imodel_yuv_model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource:X
Jmodel_yuv_model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:g
Mmodel_yuv_model_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:\
Nmodel_yuv_model_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:h
Nmodel_yuv_model_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:]
Omodel_yuv_model_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:i
Omodel_yuv_model_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:^
Pmodel_yuv_model_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:g
Mmodel_yuv_model_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource:\
Nmodel_yuv_model_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource:
identity��Gmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�Gmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�Emodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�Dmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�Gmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�Gmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�Gmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�Emodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�Gmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�Fmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�Emodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp�Dmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�Cmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�Bmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�Cmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�Emodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�Dmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�Amodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp�@model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp�
>model_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
@model_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
@model_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
8model_YUV/model_luma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinput_1Gmodel_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stack:output:0Imodel_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0Imodel_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
Dmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2DAmodel_YUV/model_luma/chroma_crop_0.0_118.0/strided_slice:output:0Lmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/EluElu?model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
5model_YUV/model_luma/chroma_ZeroPadding_1_0.0_6.6/PadPad@model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Lmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/EluElu?model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
5model_YUV/model_luma/chroma_ZeroPadding_2_0.0_6.6/PadPad@model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Bmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpKmodel_yuv_model_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
3model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0Jmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Cmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpLmodel_yuv_model_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd<model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Kmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
0model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/EluElu=model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
5model_YUV/model_luma/chroma_ZeroPadding_3_1.1_1.1/PadPad>model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Lmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/EluElu?model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
5model_YUV/model_luma/chroma_ZeroPadding_4_0.0_6.6/PadPad@model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Lmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/EluElu?model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
5model_YUV/model_luma/chroma_ZeroPadding_5_0.0_6.6/PadPad@model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Lmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/EluElu?model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
?model_YUV/model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
6model_YUV/model_luma/chroma_ZeroPadding_6_0.0_24.0/PadPad@model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0Hmodel_YUV/model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Cmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpLmodel_yuv_model_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
4model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2D?model_YUV/model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Kmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Dmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd=model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Lmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
1model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/EluElu>model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
>model_YUV/model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
5model_YUV/model_luma/chroma_ZeroPadding_7_1.1_1.1/PadPad?model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0Gmodel_YUV/model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D>model_YUV/model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Lmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd>model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Mmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/EluElu?model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
?model_YUV/model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
6model_YUV/model_luma/chroma_ZeroPadding_8_0.0_24.0/PadPad@model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0Hmodel_YUV/model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOpReadVariableOpImodel_yuv_model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
1model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2DConv2D?model_YUV/model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0Hmodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Amodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpReadVariableOpJmodel_yuv_model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
2model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAddBiasAdd:model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D:output:0Imodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
.model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/EluElu;model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
Bmodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
Bmodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
:model_YUV/model_chroma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinput_1Imodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stack:output:0Kmodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0Kmodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
Fmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2DCmodel_YUV/model_chroma/chroma_crop_0.0_118.0/strided_slice:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
7model_YUV/model_chroma/chroma_ZeroPadding_1_0.0_6.6/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Fmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
7model_YUV/model_chroma/chroma_ZeroPadding_2_0.0_6.6/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0Lmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd>model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Mmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/EluElu?model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
7model_YUV/model_chroma/chroma_ZeroPadding_3_1.1_1.1/PadPad@model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Fmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
7model_YUV/model_chroma/chroma_ZeroPadding_4_0.0_6.6/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Fmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
7model_YUV/model_chroma/chroma_ZeroPadding_5_0.0_6.6/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Fmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
Amodel_YUV/model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
8model_YUV/model_chroma/chroma_ZeroPadding_6_0.0_24.0/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0Jmodel_YUV/model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Emodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpNmodel_yuv_model_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
6model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2DAmodel_YUV/model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Mmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Fmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd?model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
3model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/EluElu@model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
@model_YUV/model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
7model_YUV/model_chroma/chroma_ZeroPadding_7_1.1_1.1/PadPadAmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0Imodel_YUV/model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Fmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpOmodel_yuv_model_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
7model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D@model_YUV/model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Nmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Gmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpPmodel_yuv_model_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd@model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Omodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
4model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/EluEluAmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
Amodel_YUV/model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
8model_YUV/model_chroma/chroma_ZeroPadding_8_0.0_24.0/PadPadBmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0Jmodel_YUV/model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
Dmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpReadVariableOpMmodel_yuv_model_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
5model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2DConv2DAmodel_YUV/model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0Lmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Emodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpReadVariableOpNmodel_yuv_model_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAddBiasAdd>model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D:output:0Mmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/EluElu?model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������c
!model_YUV/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_YUV/concatenate/concatConcatV2<model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Elu:activations:0@model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Elu:activations:0*model_YUV/concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������~
IdentityIdentity%model_YUV/concatenate/concat:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOpH^model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpH^model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpF^model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpE^model_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpH^model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpH^model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpH^model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpF^model_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpH^model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpG^model_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpF^model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpE^model_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpD^model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpC^model_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpD^model_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpF^model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpE^model_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpB^model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpA^model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Gmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2�
Gmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2�
Emodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpEmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpDmodel_YUV/model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2�
Gmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2�
Gmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2�
Gmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2�
Emodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpEmodel_YUV/model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2�
Gmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpGmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2�
Fmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpFmodel_YUV/model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2�
Emodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpEmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpDmodel_YUV/model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2�
Cmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpCmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2�
Bmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpBmodel_YUV/model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2�
Cmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpCmodel_YUV/model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2�
Emodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpEmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2�
Dmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpDmodel_YUV/model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2�
Amodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpAmodel_YUV/model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp2�
@model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp@model_YUV/model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
r
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5042

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2262

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5722

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
k
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*J
_output_shapes8
6:4������������������������������������*

begin_mask	*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
D__inference_model_luma_layer_call_and_return_conditional_losses_4599

inputsR
8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:P
6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:E
7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:Q
7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:F
8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:N
4luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource:C
5luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource:
identity��0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp�+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp�
)chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
+chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
+chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
#chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs2chroma_crop_0.0_118.0/strided_slice/stack:output:04chroma_crop_0.0_118.0/strided_slice/stack_1:output:04chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_1_f15_k1.13/Conv2DConv2D,chroma_crop_0.0_118.0/strided_slice:output:07chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_1_f15_k1.13/Conv2D:output:08chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_1_f15_k1.13/EluElu*chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_1_30/ShapeShape+chroma_Conv2D_1_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_1_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_1_30/random_normal/mulMulDchroma_GausianNoise_1_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_1_30/random_normalAddV2.chroma_GausianNoise_1_30/random_normal/mul:z:04chroma_GausianNoise_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_1_30/addAddV2+chroma_Conv2D_1_f15_k1.13/Elu:activations:0*chroma_GausianNoise_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_1_0.0_6.6/PadPad chroma_GausianNoise_1_30/add:z:02chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_2_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_1_0.0_6.6/Pad:output:07chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_2_f15_k1.13/Conv2D:output:08chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_2_f15_k1.13/EluElu*chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_2_35/ShapeShape+chroma_Conv2D_2_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_2_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_2_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_2_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_2_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_2_35/random_normal/mulMulDchroma_GausianNoise_2_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_2_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_2_35/random_normalAddV2.chroma_GausianNoise_2_35/random_normal/mul:z:04chroma_GausianNoise_2_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_2_35/addAddV2+chroma_Conv2D_2_f15_k1.13/Elu:activations:0*chroma_GausianNoise_2_35/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_2_0.0_6.6/PadPad chroma_GausianNoise_2_35/add:z:02chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/Conv2DConv2D)chroma_ZeroPadding_2_0.0_6.6/Pad:output:05chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd'chroma_Conv2D_3_f8_k3.3/Conv2D:output:06chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_3_f8_k3.3/EluElu(chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
 chroma_GausianDropout_1_30/ShapeShape)chroma_Conv2D_3_f8_k3.3/Elu:activations:0*
T0*
_output_shapes
:r
-chroma_GausianDropout_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
/chroma_GausianDropout_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
=chroma_GausianDropout_1_30/random_normal/RandomStandardNormalRandomStandardNormal)chroma_GausianDropout_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
,chroma_GausianDropout_1_30/random_normal/mulMulFchroma_GausianDropout_1_30/random_normal/RandomStandardNormal:output:08chroma_GausianDropout_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
(chroma_GausianDropout_1_30/random_normalAddV20chroma_GausianDropout_1_30/random_normal/mul:z:06chroma_GausianDropout_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianDropout_1_30/mulMul)chroma_Conv2D_3_f8_k3.3/Elu:activations:0,chroma_GausianDropout_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_3_1.1_1.1/PadPad"chroma_GausianDropout_1_30/mul:z:02chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_4_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_3_1.1_1.1/Pad:output:07chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_4_f15_k1.13/Conv2D:output:08chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_4_f15_k1.13/EluElu*chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_3_35/ShapeShape+chroma_Conv2D_4_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_3_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_3_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_3_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_3_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_3_35/random_normal/mulMulDchroma_GausianNoise_3_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_3_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_3_35/random_normalAddV2.chroma_GausianNoise_3_35/random_normal/mul:z:04chroma_GausianNoise_3_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_3_35/addAddV2+chroma_Conv2D_4_f15_k1.13/Elu:activations:0*chroma_GausianNoise_3_35/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_4_0.0_6.6/PadPad chroma_GausianNoise_3_35/add:z:02chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_5_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_4_0.0_6.6/Pad:output:07chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_5_f15_k1.13/Conv2D:output:08chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_5_f15_k1.13/EluElu*chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_4_30/ShapeShape+chroma_Conv2D_5_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_4_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_4_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_4_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_4_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_4_30/random_normal/mulMulDchroma_GausianNoise_4_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_4_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_4_30/random_normalAddV2.chroma_GausianNoise_4_30/random_normal/mul:z:04chroma_GausianNoise_4_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_4_30/addAddV2+chroma_Conv2D_5_f15_k1.13/Elu:activations:0*chroma_GausianNoise_4_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_5_0.0_6.6/PadPad chroma_GausianNoise_4_30/add:z:02chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_6_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_5_0.0_6.6/Pad:output:07chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_6_f30_k1.25/Conv2D:output:08chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_6_f30_k1.25/EluElu*chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_5_30/ShapeShape+chroma_Conv2D_6_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_5_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_5_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_5_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_5_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_5_30/random_normal/mulMulDchroma_GausianNoise_5_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_5_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_5_30/random_normalAddV2.chroma_GausianNoise_5_30/random_normal/mul:z:04chroma_GausianNoise_5_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_5_30/addAddV2+chroma_Conv2D_6_f30_k1.25/Elu:activations:0*chroma_GausianNoise_5_30/random_normal:z:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_6_0.0_24.0/PadPad chroma_GausianNoise_5_30/add:z:03chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOp7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_7_f15_k3.3/Conv2DConv2D*chroma_ZeroPadding_6_0.0_24.0/Pad:output:06chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOp8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd(chroma_Conv2D_7_f15_k3.3/Conv2D:output:07chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_7_f15_k3.3/EluElu)chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_7_1.1_1.1/PadPad*chroma_Conv2D_7_f15_k3.3/Elu:activations:02chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_8_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_7_1.1_1.1/Pad:output:07chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_8_f30_k1.25/Conv2D:output:08chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_8_f30_k1.25/EluElu*chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_6_35/ShapeShape+chroma_Conv2D_8_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_6_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_6_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_6_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_6_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_6_35/random_normal/mulMulDchroma_GausianNoise_6_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_6_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_6_35/random_normalAddV2.chroma_GausianNoise_6_35/random_normal/mul:z:04chroma_GausianNoise_6_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_6_35/addAddV2+chroma_Conv2D_8_f30_k1.25/Elu:activations:0*chroma_GausianNoise_6_35/random_normal:z:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_8_0.0_24.0/PadPad chroma_GausianNoise_6_35/add:z:03chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOpReadVariableOp4luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
luma_Conv2D_9_f1_k1.1/Conv2DConv2D*chroma_ZeroPadding_8_0.0_24.0/Pad:output:03luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpReadVariableOp5luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
luma_Conv2D_9_f1_k1.1/BiasAddBiasAdd%luma_Conv2D_9_f1_k1.1/Conv2D:output:04luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
luma_Conv2D_9_f1_k1.1/EluElu&luma_Conv2D_9_f1_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
IdentityIdentity'luma_Conv2D_9_f1_k1.1/Elu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/^chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.^chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp0^chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/^chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp-^luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp,^luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2d
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2`
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2b
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2`
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2\
,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp2Z
+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
s
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2579

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������a
mulMulinputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1615

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�~
�
D__inference_model_luma_layer_call_and_return_conditional_losses_1832

inputs8
chroma_conv2d_1_f15_k1_13_1771:,
chroma_conv2d_1_f15_k1_13_1773:8
chroma_conv2d_2_f15_k1_13_1778:,
chroma_conv2d_2_f15_k1_13_1780:6
chroma_conv2d_3_f8_k3_3_1785:*
chroma_conv2d_3_f8_k3_3_1787:8
chroma_conv2d_4_f15_k1_13_1792:,
chroma_conv2d_4_f15_k1_13_1794:8
chroma_conv2d_5_f15_k1_13_1799:,
chroma_conv2d_5_f15_k1_13_1801:8
chroma_conv2d_6_f30_k1_25_1806:,
chroma_conv2d_6_f30_k1_25_1808:7
chroma_conv2d_7_f15_k3_3_1813:+
chroma_conv2d_7_f15_k3_3_1815:8
chroma_conv2d_8_f30_k1_25_1819:,
chroma_conv2d_8_f30_k1_25_1821:4
luma_conv2d_9_f1_k1_1_1826:(
luma_conv2d_9_f1_k1_1_1828:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�2chroma_GausianDropout_1_30/StatefulPartitionedCall�0chroma_GausianNoise_1_30/StatefulPartitionedCall�0chroma_GausianNoise_2_35/StatefulPartitionedCall�0chroma_GausianNoise_3_35/StatefulPartitionedCall�0chroma_GausianNoise_4_30/StatefulPartitionedCall�0chroma_GausianNoise_5_30/StatefulPartitionedCall�0chroma_GausianNoise_6_35/StatefulPartitionedCall�-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_1771chroma_conv2d_1_f15_k1_13_1773*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248�
0chroma_GausianNoise_1_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1711�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_1778chroma_conv2d_2_f15_k1_13_1780*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272�
0chroma_GausianNoise_2_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1679�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_2_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_1785chroma_conv2d_3_f8_k3_3_1787*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296�
2chroma_GausianDropout_1_30/StatefulPartitionedCallStatefulPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:01^chroma_GausianNoise_2_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1647�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall;chroma_GausianDropout_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_1792chroma_conv2d_4_f15_k1_13_1794*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320�
0chroma_GausianNoise_3_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:03^chroma_GausianDropout_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1615�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_3_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_1799chroma_conv2d_5_f15_k1_13_1801*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344�
0chroma_GausianNoise_4_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_3_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1583�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_4_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_1806chroma_conv2d_6_f30_k1_25_1808*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368�
0chroma_GausianNoise_5_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_4_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1551�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_5_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_1813chroma_conv2d_7_f15_k3_3_1815*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_1819chroma_conv2d_8_f30_k1_25_1821*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410�
0chroma_GausianNoise_6_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_5_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1509�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_6_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226�
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0luma_conv2d_9_f1_k1_1_1826luma_conv2d_9_f1_k1_1_1828*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434�
IdentityIdentity6luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall3^chroma_GausianDropout_1_30/StatefulPartitionedCall1^chroma_GausianNoise_1_30/StatefulPartitionedCall1^chroma_GausianNoise_2_35/StatefulPartitionedCall1^chroma_GausianNoise_3_35/StatefulPartitionedCall1^chroma_GausianNoise_4_30/StatefulPartitionedCall1^chroma_GausianNoise_5_30/StatefulPartitionedCall1^chroma_GausianNoise_6_35/StatefulPartitionedCall.^luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2h
2chroma_GausianDropout_1_30/StatefulPartitionedCall2chroma_GausianDropout_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_1_30/StatefulPartitionedCall0chroma_GausianNoise_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_2_35/StatefulPartitionedCall0chroma_GausianNoise_2_35/StatefulPartitionedCall2d
0chroma_GausianNoise_3_35/StatefulPartitionedCall0chroma_GausianNoise_3_35/StatefulPartitionedCall2d
0chroma_GausianNoise_4_30/StatefulPartitionedCall0chroma_GausianNoise_4_30/StatefulPartitionedCall2d
0chroma_GausianNoise_5_30/StatefulPartitionedCall0chroma_GausianNoise_5_30/StatefulPartitionedCall2d
0chroma_GausianNoise_6_35/StatefulPartitionedCall0chroma_GausianNoise_6_35/StatefulPartitionedCall2^
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5584

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2547y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5700

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5686

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2515

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5342

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5163

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5240

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1551y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_4950

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_chroma_layer_call_fn_4681

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2764y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5148

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
V
*__inference_concatenate_layer_call_fn_4910
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_3062j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�
n
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5020

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1711

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5528

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2579y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2974
cvbs_input_chroma8
chroma_conv2d_1_f15_k1_13_2913:,
chroma_conv2d_1_f15_k1_13_2915:8
chroma_conv2d_2_f15_k1_13_2920:,
chroma_conv2d_2_f15_k1_13_2922:6
chroma_conv2d_3_f8_k3_3_2927:*
chroma_conv2d_3_f8_k3_3_2929:8
chroma_conv2d_4_f15_k1_13_2934:,
chroma_conv2d_4_f15_k1_13_2936:8
chroma_conv2d_5_f15_k1_13_2941:,
chroma_conv2d_5_f15_k1_13_2943:8
chroma_conv2d_6_f30_k1_25_2948:,
chroma_conv2d_6_f30_k1_25_2950:7
chroma_conv2d_7_f15_k3_3_2955:+
chroma_conv2d_7_f15_k3_3_2957:8
chroma_conv2d_8_f30_k1_25_2961:,
chroma_conv2d_8_f30_k1_25_2963:6
chroma_conv2d_9_f2_k1_1_2968:*
chroma_conv2d_9_f2_k1_1_2970:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall�2chroma_GausianDropout_1_30/StatefulPartitionedCall�0chroma_GausianNoise_1_30/StatefulPartitionedCall�0chroma_GausianNoise_2_35/StatefulPartitionedCall�0chroma_GausianNoise_3_35/StatefulPartitionedCall�0chroma_GausianNoise_4_30/StatefulPartitionedCall�0chroma_GausianNoise_5_30/StatefulPartitionedCall�0chroma_GausianNoise_6_35/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallcvbs_input_chroma*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_2913chroma_conv2d_1_f15_k1_13_2915*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180�
0chroma_GausianNoise_1_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2643�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_2920chroma_conv2d_2_f15_k1_13_2922*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204�
0chroma_GausianNoise_2_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2611�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_2_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_2927chroma_conv2d_3_f8_k3_3_2929*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228�
2chroma_GausianDropout_1_30/StatefulPartitionedCallStatefulPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:01^chroma_GausianNoise_2_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2579�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall;chroma_GausianDropout_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_2934chroma_conv2d_4_f15_k1_13_2936*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252�
0chroma_GausianNoise_3_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:03^chroma_GausianDropout_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2547�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_3_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_2941chroma_conv2d_5_f15_k1_13_2943*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276�
0chroma_GausianNoise_4_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_3_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2515�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_4_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_2948chroma_conv2d_6_f30_k1_25_2950*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300�
0chroma_GausianNoise_5_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_4_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2483�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_5_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_2955chroma_conv2d_7_f15_k3_3_2957*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_2961chroma_conv2d_8_f30_k1_25_2963*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342�
0chroma_GausianNoise_6_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_5_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2441�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_6_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158�
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0chroma_conv2d_9_f2_k1_1_2968chroma_conv2d_9_f2_k1_1_2970*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366�
IdentityIdentity8chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall0^chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall3^chroma_GausianDropout_1_30/StatefulPartitionedCall1^chroma_GausianNoise_1_30/StatefulPartitionedCall1^chroma_GausianNoise_2_35/StatefulPartitionedCall1^chroma_GausianNoise_3_35/StatefulPartitionedCall1^chroma_GausianNoise_4_30/StatefulPartitionedCall1^chroma_GausianNoise_5_30/StatefulPartitionedCall1^chroma_GausianNoise_6_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2b
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall2h
2chroma_GausianDropout_1_30/StatefulPartitionedCall2chroma_GausianDropout_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_1_30/StatefulPartitionedCall0chroma_GausianNoise_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_2_35/StatefulPartitionedCall0chroma_GausianNoise_2_35/StatefulPartitionedCall2d
0chroma_GausianNoise_3_35/StatefulPartitionedCall0chroma_GausianNoise_3_35/StatefulPartitionedCall2d
0chroma_GausianNoise_4_30/StatefulPartitionedCall0chroma_GausianNoise_4_30/StatefulPartitionedCall2d
0chroma_GausianNoise_5_30/StatefulPartitionedCall0chroma_GausianNoise_5_30/StatefulPartitionedCall2d
0chroma_GausianNoise_6_35/StatefulPartitionedCall0chroma_GausianNoise_6_35/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
r
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5297

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1258

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5472

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2611y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
X
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5347

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5210

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5666

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5554

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5416

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2643y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1551

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5118

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
� 
�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3536
input_1)
model_luma_3460:
model_luma_3462:)
model_luma_3464:
model_luma_3466:)
model_luma_3468:
model_luma_3470:)
model_luma_3472:
model_luma_3474:)
model_luma_3476:
model_luma_3478:)
model_luma_3480:
model_luma_3482:)
model_luma_3484:
model_luma_3486:)
model_luma_3488:
model_luma_3490:)
model_luma_3492:
model_luma_3494:+
model_chroma_3497:
model_chroma_3499:+
model_chroma_3501:
model_chroma_3503:+
model_chroma_3505:
model_chroma_3507:+
model_chroma_3509:
model_chroma_3511:+
model_chroma_3513:
model_chroma_3515:+
model_chroma_3517:
model_chroma_3519:+
model_chroma_3521:
model_chroma_3523:+
model_chroma_3525:
model_chroma_3527:+
model_chroma_3529:
model_chroma_3531:
identity��$model_chroma/StatefulPartitionedCall�"model_luma/StatefulPartitionedCall�
"model_luma/StatefulPartitionedCallStatefulPartitionedCallinput_1model_luma_3460model_luma_3462model_luma_3464model_luma_3466model_luma_3468model_luma_3470model_luma_3472model_luma_3474model_luma_3476model_luma_3478model_luma_3480model_luma_3482model_luma_3484model_luma_3486model_luma_3488model_luma_3490model_luma_3492model_luma_3494*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1441�
$model_chroma/StatefulPartitionedCallStatefulPartitionedCallinput_1model_chroma_3497model_chroma_3499model_chroma_3501model_chroma_3503model_chroma_3505model_chroma_3507model_chroma_3509model_chroma_3511model_chroma_3513model_chroma_3515model_chroma_3517model_chroma_3519model_chroma_3521model_chroma_3523model_chroma_3525model_chroma_3527model_chroma_3529model_chroma_3531*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2373�
concatenate/PartitionedCallPartitionedCall+model_luma/StatefulPartitionedCall:output:0-model_chroma/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_3062}
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp%^model_chroma/StatefulPartitionedCall#^model_luma/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_chroma/StatefulPartitionedCall$model_chroma/StatefulPartitionedCall2H
"model_luma/StatefulPartitionedCall"model_luma/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
n
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2352

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5011

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1282j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5487

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2547

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_4768

inputsR
8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:P
6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:E
7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:Q
7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:F
8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:P
6chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource:E
7chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource:
identity��0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp�-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp�
)chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
+chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
+chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
#chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs2chroma_crop_0.0_118.0/strided_slice/stack:output:04chroma_crop_0.0_118.0/strided_slice/stack_1:output:04chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_1_f15_k1.13/Conv2DConv2D,chroma_crop_0.0_118.0/strided_slice:output:07chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_1_f15_k1.13/Conv2D:output:08chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_1_f15_k1.13/EluElu*chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_1_0.0_6.6/PadPad+chroma_Conv2D_1_f15_k1.13/Elu:activations:02chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_2_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_1_0.0_6.6/Pad:output:07chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_2_f15_k1.13/Conv2D:output:08chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_2_f15_k1.13/EluElu*chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_2_0.0_6.6/PadPad+chroma_Conv2D_2_f15_k1.13/Elu:activations:02chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/Conv2DConv2D)chroma_ZeroPadding_2_0.0_6.6/Pad:output:05chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd'chroma_Conv2D_3_f8_k3.3/Conv2D:output:06chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_3_f8_k3.3/EluElu(chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_3_1.1_1.1/PadPad)chroma_Conv2D_3_f8_k3.3/Elu:activations:02chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_4_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_3_1.1_1.1/Pad:output:07chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_4_f15_k1.13/Conv2D:output:08chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_4_f15_k1.13/EluElu*chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_4_0.0_6.6/PadPad+chroma_Conv2D_4_f15_k1.13/Elu:activations:02chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_5_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_4_0.0_6.6/Pad:output:07chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_5_f15_k1.13/Conv2D:output:08chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_5_f15_k1.13/EluElu*chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_5_0.0_6.6/PadPad+chroma_Conv2D_5_f15_k1.13/Elu:activations:02chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_6_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_5_0.0_6.6/Pad:output:07chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_6_f30_k1.25/Conv2D:output:08chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_6_f30_k1.25/EluElu*chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_6_0.0_24.0/PadPad+chroma_Conv2D_6_f30_k1.25/Elu:activations:03chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOp7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_7_f15_k3.3/Conv2DConv2D*chroma_ZeroPadding_6_0.0_24.0/Pad:output:06chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOp8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd(chroma_Conv2D_7_f15_k3.3/Conv2D:output:07chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_7_f15_k3.3/EluElu)chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_7_1.1_1.1/PadPad*chroma_Conv2D_7_f15_k3.3/Elu:activations:02chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_8_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_7_1.1_1.1/Pad:output:07chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_8_f30_k1.25/Conv2D:output:08chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_8_f30_k1.25/EluElu*chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_8_0.0_24.0/PadPad+chroma_Conv2D_8_f30_k1.25/Elu:activations:03chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_9_f2_k1.1/Conv2DConv2D*chroma_ZeroPadding_8_0.0_24.0/Pad:output:05chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_9_f2_k1.1/BiasAddBiasAdd'chroma_Conv2D_9_f2_k1.1/Conv2D:output:06chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_9_f2_k1.1/EluElu(chroma_Conv2D_9_f2_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
IdentityIdentity)chroma_Conv2D_9_f2_k1.1/Elu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/^chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.^chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp0^chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/^chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/^chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp.^chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2d
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2`
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2b
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2`
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2`
.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5773

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�o
�
D__inference_model_luma_layer_call_and_return_conditional_losses_1441

inputs8
chroma_conv2d_1_f15_k1_13_1249:,
chroma_conv2d_1_f15_k1_13_1251:8
chroma_conv2d_2_f15_k1_13_1273:,
chroma_conv2d_2_f15_k1_13_1275:6
chroma_conv2d_3_f8_k3_3_1297:*
chroma_conv2d_3_f8_k3_3_1299:8
chroma_conv2d_4_f15_k1_13_1321:,
chroma_conv2d_4_f15_k1_13_1323:8
chroma_conv2d_5_f15_k1_13_1345:,
chroma_conv2d_5_f15_k1_13_1347:8
chroma_conv2d_6_f30_k1_25_1369:,
chroma_conv2d_6_f30_k1_25_1371:7
chroma_conv2d_7_f15_k3_3_1393:+
chroma_conv2d_7_f15_k3_3_1395:8
chroma_conv2d_8_f30_k1_25_1411:,
chroma_conv2d_8_f30_k1_25_1413:4
luma_conv2d_9_f1_k1_1_1435:(
luma_conv2d_9_f1_k1_1_1437:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_1249chroma_conv2d_1_f15_k1_13_1251*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248�
(chroma_GausianNoise_1_30/PartitionedCallPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1258�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_1273chroma_conv2d_2_f15_k1_13_1275*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272�
(chroma_GausianNoise_2_35/PartitionedCallPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1282�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_2_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_1297chroma_conv2d_3_f8_k3_3_1299*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296�
*chroma_GausianDropout_1_30/PartitionedCallPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1306�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall3chroma_GausianDropout_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_1321chroma_conv2d_4_f15_k1_13_1323*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320�
(chroma_GausianNoise_3_35/PartitionedCallPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1330�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_3_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_1345chroma_conv2d_5_f15_k1_13_1347*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344�
(chroma_GausianNoise_4_30/PartitionedCallPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1354�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_4_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_1369chroma_conv2d_6_f30_k1_25_1371*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368�
(chroma_GausianNoise_5_30/PartitionedCallPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1378�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_5_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_1393chroma_conv2d_7_f15_k3_3_1395*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_1411chroma_conv2d_8_f30_k1_25_1413*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410�
(chroma_GausianNoise_6_35/PartitionedCallPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1420�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_6_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226�
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0luma_conv2d_9_f1_k1_1_1435luma_conv2d_9_f1_k1_1_1437*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434�
IdentityIdentity6luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall.^luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2^
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5188

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5655

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4955

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1258j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5255

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5630

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
U
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5523

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2238j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5317

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_5451

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
P
4__inference_chroma_crop_0.0_118.0_layer_call_fn_4922

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5006

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
X
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5803

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5476

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
P
4__inference_chroma_crop_0.0_118.0_layer_call_fn_5378

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5143

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5275

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1679

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5579

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2262j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1306

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
X
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5716

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5098

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5532

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
s
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1647

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������a
mulMulinputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5762

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�o
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2373

inputs8
chroma_conv2d_1_f15_k1_13_2181:,
chroma_conv2d_1_f15_k1_13_2183:8
chroma_conv2d_2_f15_k1_13_2205:,
chroma_conv2d_2_f15_k1_13_2207:6
chroma_conv2d_3_f8_k3_3_2229:*
chroma_conv2d_3_f8_k3_3_2231:8
chroma_conv2d_4_f15_k1_13_2253:,
chroma_conv2d_4_f15_k1_13_2255:8
chroma_conv2d_5_f15_k1_13_2277:,
chroma_conv2d_5_f15_k1_13_2279:8
chroma_conv2d_6_f30_k1_25_2301:,
chroma_conv2d_6_f30_k1_25_2303:7
chroma_conv2d_7_f15_k3_3_2325:+
chroma_conv2d_7_f15_k3_3_2327:8
chroma_conv2d_8_f30_k1_25_2343:,
chroma_conv2d_8_f30_k1_25_2345:6
chroma_conv2d_9_f2_k1_1_2367:*
chroma_conv2d_9_f2_k1_1_2369:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_2181chroma_conv2d_1_f15_k1_13_2183*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180�
(chroma_GausianNoise_1_30/PartitionedCallPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2190�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_2205chroma_conv2d_2_f15_k1_13_2207*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204�
(chroma_GausianNoise_2_35/PartitionedCallPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2214�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_2_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_2229chroma_conv2d_3_f8_k3_3_2231*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228�
*chroma_GausianDropout_1_30/PartitionedCallPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2238�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall3chroma_GausianDropout_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_2253chroma_conv2d_4_f15_k1_13_2255*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252�
(chroma_GausianNoise_3_35/PartitionedCallPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2262�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_3_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_2277chroma_conv2d_5_f15_k1_13_2279*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276�
(chroma_GausianNoise_4_30/PartitionedCallPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2286�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_4_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_2301chroma_conv2d_6_f30_k1_25_2303*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300�
(chroma_GausianNoise_5_30/PartitionedCallPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2310�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_5_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_2325chroma_conv2d_7_f15_k3_3_2327*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_2343chroma_conv2d_8_f30_k1_25_2345*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342�
(chroma_GausianNoise_6_35/PartitionedCallPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2352�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_6_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158�
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0chroma_conv2d_9_f2_k1_1_2367chroma_conv2d_9_f2_k1_1_2369*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366�
IdentityIdentity8chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall0^chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2b
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5179

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1354j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
U
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5067

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1306j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4960

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1711y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5696

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2483y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5462

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_4939

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
� 
�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3305

inputs)
model_luma_3229:
model_luma_3231:)
model_luma_3233:
model_luma_3235:)
model_luma_3237:
model_luma_3239:)
model_luma_3241:
model_luma_3243:)
model_luma_3245:
model_luma_3247:)
model_luma_3249:
model_luma_3251:)
model_luma_3253:
model_luma_3255:)
model_luma_3257:
model_luma_3259:)
model_luma_3261:
model_luma_3263:+
model_chroma_3266:
model_chroma_3268:+
model_chroma_3270:
model_chroma_3272:+
model_chroma_3274:
model_chroma_3276:+
model_chroma_3278:
model_chroma_3280:+
model_chroma_3282:
model_chroma_3284:+
model_chroma_3286:
model_chroma_3288:+
model_chroma_3290:
model_chroma_3292:+
model_chroma_3294:
model_chroma_3296:+
model_chroma_3298:
model_chroma_3300:
identity��$model_chroma/StatefulPartitionedCall�"model_luma/StatefulPartitionedCall�
"model_luma/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_luma_3229model_luma_3231model_luma_3233model_luma_3235model_luma_3237model_luma_3239model_luma_3241model_luma_3243model_luma_3245model_luma_3247model_luma_3249model_luma_3251model_luma_3253model_luma_3255model_luma_3257model_luma_3259model_luma_3261model_luma_3263*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1832�
$model_chroma/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_chroma_3266model_chroma_3268model_chroma_3270model_chroma_3272model_chroma_3274model_chroma_3276model_chroma_3278model_chroma_3280model_chroma_3282model_chroma_3284model_chroma_3286model_chroma_3288model_chroma_3290model_chroma_3292model_chroma_3294model_chroma_3296model_chroma_3298model_chroma_3300*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2764�
concatenate/PartitionedCallPartitionedCall+model_luma/StatefulPartitionedCall:output:0-model_chroma/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_3062}
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp%^model_chroma/StatefulPartitionedCall#^model_luma/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_chroma/StatefulPartitionedCall$model_chroma/StatefulPartitionedCall2H
"model_luma/StatefulPartitionedCall"model_luma/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_5406

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5286

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5062

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5154

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�~
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2764

inputs8
chroma_conv2d_1_f15_k1_13_2703:,
chroma_conv2d_1_f15_k1_13_2705:8
chroma_conv2d_2_f15_k1_13_2710:,
chroma_conv2d_2_f15_k1_13_2712:6
chroma_conv2d_3_f8_k3_3_2717:*
chroma_conv2d_3_f8_k3_3_2719:8
chroma_conv2d_4_f15_k1_13_2724:,
chroma_conv2d_4_f15_k1_13_2726:8
chroma_conv2d_5_f15_k1_13_2731:,
chroma_conv2d_5_f15_k1_13_2733:8
chroma_conv2d_6_f30_k1_25_2738:,
chroma_conv2d_6_f30_k1_25_2740:7
chroma_conv2d_7_f15_k3_3_2745:+
chroma_conv2d_7_f15_k3_3_2747:8
chroma_conv2d_8_f30_k1_25_2751:,
chroma_conv2d_8_f30_k1_25_2753:6
chroma_conv2d_9_f2_k1_1_2758:*
chroma_conv2d_9_f2_k1_1_2760:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall�2chroma_GausianDropout_1_30/StatefulPartitionedCall�0chroma_GausianNoise_1_30/StatefulPartitionedCall�0chroma_GausianNoise_2_35/StatefulPartitionedCall�0chroma_GausianNoise_3_35/StatefulPartitionedCall�0chroma_GausianNoise_4_30/StatefulPartitionedCall�0chroma_GausianNoise_5_30/StatefulPartitionedCall�0chroma_GausianNoise_6_35/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_2703chroma_conv2d_1_f15_k1_13_2705*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180�
0chroma_GausianNoise_1_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2643�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_2710chroma_conv2d_2_f15_k1_13_2712*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204�
0chroma_GausianNoise_2_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2611�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_2_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_2717chroma_conv2d_3_f8_k3_3_2719*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228�
2chroma_GausianDropout_1_30/StatefulPartitionedCallStatefulPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:01^chroma_GausianNoise_2_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2579�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall;chroma_GausianDropout_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_2724chroma_conv2d_4_f15_k1_13_2726*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252�
0chroma_GausianNoise_3_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:03^chroma_GausianDropout_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2547�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_3_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_2731chroma_conv2d_5_f15_k1_13_2733*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276�
0chroma_GausianNoise_4_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_3_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2515�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_4_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_2738chroma_conv2d_6_f30_k1_25_2740*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300�
0chroma_GausianNoise_5_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_4_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2483�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_5_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_2745chroma_conv2d_7_f15_k3_3_2747*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_2751chroma_conv2d_8_f30_k1_25_2753*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342�
0chroma_GausianNoise_6_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_5_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2441�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_6_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158�
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0chroma_conv2d_9_f2_k1_1_2758chroma_conv2d_9_f2_k1_1_2760*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366�
IdentityIdentity8chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall0^chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall3^chroma_GausianDropout_1_30/StatefulPartitionedCall1^chroma_GausianNoise_1_30/StatefulPartitionedCall1^chroma_GausianNoise_2_35/StatefulPartitionedCall1^chroma_GausianNoise_3_35/StatefulPartitionedCall1^chroma_GausianNoise_4_30/StatefulPartitionedCall1^chroma_GausianNoise_5_30/StatefulPartitionedCall1^chroma_GausianNoise_6_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2b
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall2h
2chroma_GausianDropout_1_30/StatefulPartitionedCall2chroma_GausianDropout_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_1_30/StatefulPartitionedCall0chroma_GausianNoise_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_2_35/StatefulPartitionedCall0chroma_GausianNoise_2_35/StatefulPartitionedCall2d
0chroma_GausianNoise_3_35/StatefulPartitionedCall0chroma_GausianNoise_3_35/StatefulPartitionedCall2d
0chroma_GausianNoise_4_30/StatefulPartitionedCall0chroma_GausianNoise_4_30/StatefulPartitionedCall2d
0chroma_GausianNoise_5_30/StatefulPartitionedCall0chroma_GausianNoise_5_30/StatefulPartitionedCall2d
0chroma_GausianNoise_6_35/StatefulPartitionedCall0chroma_GausianNoise_6_35/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_model_luma_layer_call_fn_4335

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1441y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�+
C__inference_model_YUV_layer_call_and_return_conditional_losses_4024

inputs]
Cmodel_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:[
Amodel_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:P
Bmodel_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:\
Bmodel_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:Q
Cmodel_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:Y
?model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource:N
@model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:R
Dmodel_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:^
Dmodel_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:S
Emodel_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:]
Cmodel_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource:R
Dmodel_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource:
identity��=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp�:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp�6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp�
4model_luma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
6model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
6model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
.model_luma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs=model_luma/chroma_crop_0.0_118.0/strided_slice/stack:output:0?model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0?model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2D7model_luma/chroma_crop_0.0_118.0/strided_slice:output:0Bmodel_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_1_f15_k1.13/EluElu5model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_1_0.0_6.6/PadPad6model_luma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0=model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_2_f15_k1.13/EluElu5model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_2_0.0_6.6/PadPad6model_luma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0=model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpAmodel_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
)model_luma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D4model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0@model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpBmodel_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*model_luma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd2model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Amodel_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&model_luma/chroma_Conv2D_3_f8_k3.3/EluElu3model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
+model_luma/chroma_ZeroPadding_3_1.1_1.1/PadPad4model_luma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0=model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Bmodel_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_4_f15_k1.13/EluElu5model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_4_0.0_6.6/PadPad6model_luma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0=model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_5_f15_k1.13/EluElu5model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_5_0.0_6.6/PadPad6model_luma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0=model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D4model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd4model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Cmodel_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_6_f30_k1.25/EluElu5model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
5model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
,model_luma/chroma_ZeroPadding_6_0.0_24.0/PadPad6model_luma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0>model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpBmodel_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
*model_luma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2D5model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Amodel_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd3model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Bmodel_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_Conv2D_7_f15_k3.3/EluElu4model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
+model_luma/chroma_ZeroPadding_7_1.1_1.1/PadPad5model_luma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0=model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D4model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Bmodel_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd4model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Cmodel_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_8_f30_k1.25/EluElu5model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
5model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
,model_luma/chroma_ZeroPadding_8_0.0_24.0/PadPad6model_luma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0>model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOpReadVariableOp?model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
'model_luma/luma_Conv2D_9_f1_k1.1/Conv2DConv2D5model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0>model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpReadVariableOp@model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(model_luma/luma_Conv2D_9_f1_k1.1/BiasAddBiasAdd0model_luma/luma_Conv2D_9_f1_k1.1/Conv2D:output:0?model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
$model_luma/luma_Conv2D_9_f1_k1.1/EluElu1model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
8model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
8model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
0model_chroma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs?model_chroma/chroma_crop_0.0_118.0/strided_slice/stack:output:0Amodel_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0Amodel_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2D9model_chroma/chroma_crop_0.0_118.0/strided_slice:output:0Dmodel_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_1_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_1_0.0_6.6/PadPad8model_chroma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0?model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_2_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_2_0.0_6.6/PadPad8model_chroma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0?model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpCmodel_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D6model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0Bmodel_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd4model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Cmodel_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_chroma/chroma_Conv2D_3_f8_k3.3/EluElu5model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
-model_chroma/chroma_ZeroPadding_3_1.1_1.1/PadPad6model_chroma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0?model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Dmodel_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_4_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_4_0.0_6.6/PadPad8model_chroma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0?model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_5_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_5_0.0_6.6/PadPad8model_chroma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0?model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D6model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd6model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Emodel_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_6_f30_k1.25/EluElu7model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
7model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
.model_chroma/chroma_ZeroPadding_6_0.0_24.0/PadPad8model_chroma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0@model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2D7model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Cmodel_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd5model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Dmodel_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_Conv2D_7_f15_k3.3/EluElu6model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
-model_chroma/chroma_ZeroPadding_7_1.1_1.1/PadPad7model_chroma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0?model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D6model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Dmodel_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd6model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Emodel_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_8_f30_k1.25/EluElu7model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
7model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
.model_chroma/chroma_ZeroPadding_8_0.0_24.0/PadPad8model_chroma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0@model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpReadVariableOpCmodel_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2DConv2D7model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0Bmodel_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAddBiasAdd4model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D:output:0Cmodel_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_chroma/chroma_Conv2D_9_f2_k1.1/EluElu5model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV22model_luma/luma_Conv2D_9_f1_k1.1/Elu:activations:06model_chroma/chroma_Conv2D_9_f2_k1.1/Elu:activations:0 concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������t
IdentityIdentityconcatenate/concat:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp>^model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp<^model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp;^model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp=^model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp<^model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp<^model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp;^model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:^model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp9^model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp;^model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:^model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp8^model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp7^model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2~
=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2z
;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2x
:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2|
<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2z
;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2z
;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp2x
:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2v
9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2t
8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2x
:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2v
9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2r
7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp2p
6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5675

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5691

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2310j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�~
�
D__inference_model_luma_layer_call_and_return_conditional_losses_2042
cvbs_input_chroma8
chroma_conv2d_1_f15_k1_13_1981:,
chroma_conv2d_1_f15_k1_13_1983:8
chroma_conv2d_2_f15_k1_13_1988:,
chroma_conv2d_2_f15_k1_13_1990:6
chroma_conv2d_3_f8_k3_3_1995:*
chroma_conv2d_3_f8_k3_3_1997:8
chroma_conv2d_4_f15_k1_13_2002:,
chroma_conv2d_4_f15_k1_13_2004:8
chroma_conv2d_5_f15_k1_13_2009:,
chroma_conv2d_5_f15_k1_13_2011:8
chroma_conv2d_6_f30_k1_25_2016:,
chroma_conv2d_6_f30_k1_25_2018:7
chroma_conv2d_7_f15_k3_3_2023:+
chroma_conv2d_7_f15_k3_3_2025:8
chroma_conv2d_8_f30_k1_25_2029:,
chroma_conv2d_8_f30_k1_25_2031:4
luma_conv2d_9_f1_k1_1_2036:(
luma_conv2d_9_f1_k1_1_2038:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�2chroma_GausianDropout_1_30/StatefulPartitionedCall�0chroma_GausianNoise_1_30/StatefulPartitionedCall�0chroma_GausianNoise_2_35/StatefulPartitionedCall�0chroma_GausianNoise_3_35/StatefulPartitionedCall�0chroma_GausianNoise_4_30/StatefulPartitionedCall�0chroma_GausianNoise_5_30/StatefulPartitionedCall�0chroma_GausianNoise_6_35/StatefulPartitionedCall�-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallcvbs_input_chroma*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_1122�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_1981chroma_conv2d_1_f15_k1_13_1983*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248�
0chroma_GausianNoise_1_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_1711�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_1988chroma_conv2d_2_f15_k1_13_1990*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_1272�
0chroma_GausianNoise_2_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1679�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_2_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_1995chroma_conv2d_3_f8_k3_3_1997*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_1296�
2chroma_GausianDropout_1_30/StatefulPartitionedCallStatefulPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:01^chroma_GausianNoise_2_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1647�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall;chroma_GausianDropout_1_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_2002chroma_conv2d_4_f15_k1_13_2004*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_1320�
0chroma_GausianNoise_3_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:03^chroma_GausianDropout_1_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1615�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_3_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_1174�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_2009chroma_conv2d_5_f15_k1_13_2011*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344�
0chroma_GausianNoise_4_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:01^chroma_GausianNoise_3_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1583�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall9chroma_GausianNoise_4_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_1187�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_2016chroma_conv2d_6_f30_k1_25_2018*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_1368�
0chroma_GausianNoise_5_30/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_4_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_1551�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_5_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_2023chroma_conv2d_7_f15_k3_3_2025*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_1392�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_2029chroma_conv2d_8_f30_k1_25_2031*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410�
0chroma_GausianNoise_6_35/StatefulPartitionedCallStatefulPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:01^chroma_GausianNoise_5_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1509�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall9chroma_GausianNoise_6_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_1226�
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0luma_conv2d_9_f1_k1_1_2036luma_conv2d_9_f1_k1_1_2038*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_1434�
IdentityIdentity6luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall3^chroma_GausianDropout_1_30/StatefulPartitionedCall1^chroma_GausianNoise_1_30/StatefulPartitionedCall1^chroma_GausianNoise_2_35/StatefulPartitionedCall1^chroma_GausianNoise_3_35/StatefulPartitionedCall1^chroma_GausianNoise_4_30/StatefulPartitionedCall1^chroma_GausianNoise_5_30/StatefulPartitionedCall1^chroma_GausianNoise_6_35/StatefulPartitionedCall.^luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2h
2chroma_GausianDropout_1_30/StatefulPartitionedCall2chroma_GausianDropout_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_1_30/StatefulPartitionedCall0chroma_GausianNoise_1_30/StatefulPartitionedCall2d
0chroma_GausianNoise_2_35/StatefulPartitionedCall0chroma_GausianNoise_2_35/StatefulPartitionedCall2d
0chroma_GausianNoise_3_35/StatefulPartitionedCall0chroma_GausianNoise_3_35/StatefulPartitionedCall2d
0chroma_GausianNoise_4_30/StatefulPartitionedCall0chroma_GausianNoise_4_30/StatefulPartitionedCall2d
0chroma_GausianNoise_5_30/StatefulPartitionedCall0chroma_GausianNoise_5_30/StatefulPartitionedCall2d
0chroma_GausianNoise_6_35/StatefulPartitionedCall0chroma_GausianNoise_6_35/StatefulPartitionedCall2^
-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall-luma_Conv2D_9_f1_k1.1/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
�
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_5373

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_1148

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5076

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�%
 __inference__traced_restore_6210
file_prefixM
3assignvariableop_chroma_conv2d_1_f15_k1_13_kernel_1:A
3assignvariableop_1_chroma_conv2d_1_f15_k1_13_bias_1:O
5assignvariableop_2_chroma_conv2d_2_f15_k1_13_kernel_1:A
3assignvariableop_3_chroma_conv2d_2_f15_k1_13_bias_1:M
3assignvariableop_4_chroma_conv2d_3_f8_k3_3_kernel_1:?
1assignvariableop_5_chroma_conv2d_3_f8_k3_3_bias_1:O
5assignvariableop_6_chroma_conv2d_4_f15_k1_13_kernel_1:A
3assignvariableop_7_chroma_conv2d_4_f15_k1_13_bias_1:O
5assignvariableop_8_chroma_conv2d_5_f15_k1_13_kernel_1:A
3assignvariableop_9_chroma_conv2d_5_f15_k1_13_bias_1:P
6assignvariableop_10_chroma_conv2d_6_f30_k1_25_kernel_1:B
4assignvariableop_11_chroma_conv2d_6_f30_k1_25_bias_1:O
5assignvariableop_12_chroma_conv2d_7_f15_k3_3_kernel_1:A
3assignvariableop_13_chroma_conv2d_7_f15_k3_3_bias_1:P
6assignvariableop_14_chroma_conv2d_8_f30_k1_25_kernel_1:B
4assignvariableop_15_chroma_conv2d_8_f30_k1_25_bias_1:J
0assignvariableop_16_luma_conv2d_9_f1_k1_1_kernel:<
.assignvariableop_17_luma_conv2d_9_f1_k1_1_bias:N
4assignvariableop_18_chroma_conv2d_1_f15_k1_13_kernel:@
2assignvariableop_19_chroma_conv2d_1_f15_k1_13_bias:N
4assignvariableop_20_chroma_conv2d_2_f15_k1_13_kernel:@
2assignvariableop_21_chroma_conv2d_2_f15_k1_13_bias:L
2assignvariableop_22_chroma_conv2d_3_f8_k3_3_kernel:>
0assignvariableop_23_chroma_conv2d_3_f8_k3_3_bias:N
4assignvariableop_24_chroma_conv2d_4_f15_k1_13_kernel:@
2assignvariableop_25_chroma_conv2d_4_f15_k1_13_bias:N
4assignvariableop_26_chroma_conv2d_5_f15_k1_13_kernel:@
2assignvariableop_27_chroma_conv2d_5_f15_k1_13_bias:N
4assignvariableop_28_chroma_conv2d_6_f30_k1_25_kernel:@
2assignvariableop_29_chroma_conv2d_6_f30_k1_25_bias:M
3assignvariableop_30_chroma_conv2d_7_f15_k3_3_kernel:?
1assignvariableop_31_chroma_conv2d_7_f15_k3_3_bias:N
4assignvariableop_32_chroma_conv2d_8_f30_k1_25_kernel:@
2assignvariableop_33_chroma_conv2d_8_f30_k1_25_bias:L
2assignvariableop_34_chroma_conv2d_9_f2_k1_1_kernel:>
0assignvariableop_35_chroma_conv2d_9_f2_k1_1_bias:)
assignvariableop_36_iteration_1:	 -
#assignvariableop_37_learning_rate_1: '
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: %
assignvariableop_40_total_8: %
assignvariableop_41_count_8: %
assignvariableop_42_total_7: %
assignvariableop_43_count_7: %
assignvariableop_44_total_6: %
assignvariableop_45_count_6: %
assignvariableop_46_total_5: %
assignvariableop_47_count_5: %
assignvariableop_48_total_4: %
assignvariableop_49_count_4: %
assignvariableop_50_total_3: %
assignvariableop_51_count_3: %
assignvariableop_52_total_2: %
assignvariableop_53_count_2: %
assignvariableop_54_total_1: %
assignvariableop_55_count_1: #
assignvariableop_56_total: #
assignvariableop_57_count: 
identity_59��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B�;B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-0/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-0/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*I
dtypes?
=2;		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp3assignvariableop_chroma_conv2d_1_f15_k1_13_kernel_1Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp3assignvariableop_1_chroma_conv2d_1_f15_k1_13_bias_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp5assignvariableop_2_chroma_conv2d_2_f15_k1_13_kernel_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp3assignvariableop_3_chroma_conv2d_2_f15_k1_13_bias_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp3assignvariableop_4_chroma_conv2d_3_f8_k3_3_kernel_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp1assignvariableop_5_chroma_conv2d_3_f8_k3_3_bias_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp5assignvariableop_6_chroma_conv2d_4_f15_k1_13_kernel_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp3assignvariableop_7_chroma_conv2d_4_f15_k1_13_bias_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp5assignvariableop_8_chroma_conv2d_5_f15_k1_13_kernel_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp3assignvariableop_9_chroma_conv2d_5_f15_k1_13_bias_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_chroma_conv2d_6_f30_k1_25_kernel_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp4assignvariableop_11_chroma_conv2d_6_f30_k1_25_bias_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp5assignvariableop_12_chroma_conv2d_7_f15_k3_3_kernel_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp3assignvariableop_13_chroma_conv2d_7_f15_k3_3_bias_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_chroma_conv2d_8_f30_k1_25_kernel_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp4assignvariableop_15_chroma_conv2d_8_f30_k1_25_bias_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp0assignvariableop_16_luma_conv2d_9_f1_k1_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_luma_conv2d_9_f1_k1_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp4assignvariableop_18_chroma_conv2d_1_f15_k1_13_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp2assignvariableop_19_chroma_conv2d_1_f15_k1_13_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp4assignvariableop_20_chroma_conv2d_2_f15_k1_13_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp2assignvariableop_21_chroma_conv2d_2_f15_k1_13_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp2assignvariableop_22_chroma_conv2d_3_f8_k3_3_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp0assignvariableop_23_chroma_conv2d_3_f8_k3_3_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp4assignvariableop_24_chroma_conv2d_4_f15_k1_13_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp2assignvariableop_25_chroma_conv2d_4_f15_k1_13_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_chroma_conv2d_5_f15_k1_13_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp2assignvariableop_27_chroma_conv2d_5_f15_k1_13_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_chroma_conv2d_6_f30_k1_25_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp2assignvariableop_29_chroma_conv2d_6_f30_k1_25_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp3assignvariableop_30_chroma_conv2d_7_f15_k3_3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp1assignvariableop_31_chroma_conv2d_7_f15_k3_3_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp4assignvariableop_32_chroma_conv2d_8_f30_k1_25_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp2assignvariableop_33_chroma_conv2d_8_f30_k1_25_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp2assignvariableop_34_chroma_conv2d_9_f2_k1_1_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp0assignvariableop_35_chroma_conv2d_9_f2_k1_1_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_iteration_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp#assignvariableop_37_learning_rate_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_iterationIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_learning_rateIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_8Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_8Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_total_7Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_count_7Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_6Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_6Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_5Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_5Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_total_4Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_count_4Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_3Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_3Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_total_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_count_2Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_total_1Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_count_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_totalIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_countIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_58Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_59IdentityIdentity_58:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_59Identity_59:output:0*�
_input_shapesx
v: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
k
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_5386

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*J
_output_shapes8
6:4������������������������������������*

begin_mask	*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2190

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5431

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5563

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�	
(__inference_model_YUV_layer_call_fn_3852

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_model_YUV_layer_call_and_return_conditional_losses_3305y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5123

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_1330j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5604

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
q
E__inference_concatenate_layer_call_and_return_conditional_losses_4917
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�	
q
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2441

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5072

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_1647y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5031

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_1344

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�o
�
__inference__traced_save_6026
file_prefixA
=savev2_chroma_conv2d_1_f15_k1_13_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_1_f15_k1_13_bias_1_read_readvariableopA
=savev2_chroma_conv2d_2_f15_k1_13_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_2_f15_k1_13_bias_1_read_readvariableop?
;savev2_chroma_conv2d_3_f8_k3_3_kernel_1_read_readvariableop=
9savev2_chroma_conv2d_3_f8_k3_3_bias_1_read_readvariableopA
=savev2_chroma_conv2d_4_f15_k1_13_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_4_f15_k1_13_bias_1_read_readvariableopA
=savev2_chroma_conv2d_5_f15_k1_13_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_5_f15_k1_13_bias_1_read_readvariableopA
=savev2_chroma_conv2d_6_f30_k1_25_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_6_f30_k1_25_bias_1_read_readvariableop@
<savev2_chroma_conv2d_7_f15_k3_3_kernel_1_read_readvariableop>
:savev2_chroma_conv2d_7_f15_k3_3_bias_1_read_readvariableopA
=savev2_chroma_conv2d_8_f30_k1_25_kernel_1_read_readvariableop?
;savev2_chroma_conv2d_8_f30_k1_25_bias_1_read_readvariableop;
7savev2_luma_conv2d_9_f1_k1_1_kernel_read_readvariableop9
5savev2_luma_conv2d_9_f1_k1_1_bias_read_readvariableop?
;savev2_chroma_conv2d_1_f15_k1_13_kernel_read_readvariableop=
9savev2_chroma_conv2d_1_f15_k1_13_bias_read_readvariableop?
;savev2_chroma_conv2d_2_f15_k1_13_kernel_read_readvariableop=
9savev2_chroma_conv2d_2_f15_k1_13_bias_read_readvariableop=
9savev2_chroma_conv2d_3_f8_k3_3_kernel_read_readvariableop;
7savev2_chroma_conv2d_3_f8_k3_3_bias_read_readvariableop?
;savev2_chroma_conv2d_4_f15_k1_13_kernel_read_readvariableop=
9savev2_chroma_conv2d_4_f15_k1_13_bias_read_readvariableop?
;savev2_chroma_conv2d_5_f15_k1_13_kernel_read_readvariableop=
9savev2_chroma_conv2d_5_f15_k1_13_bias_read_readvariableop?
;savev2_chroma_conv2d_6_f30_k1_25_kernel_read_readvariableop=
9savev2_chroma_conv2d_6_f30_k1_25_bias_read_readvariableop>
:savev2_chroma_conv2d_7_f15_k3_3_kernel_read_readvariableop<
8savev2_chroma_conv2d_7_f15_k3_3_bias_read_readvariableop?
;savev2_chroma_conv2d_8_f30_k1_25_kernel_read_readvariableop=
9savev2_chroma_conv2d_8_f30_k1_25_bias_read_readvariableop=
9savev2_chroma_conv2d_9_f2_k1_1_kernel_read_readvariableop;
7savev2_chroma_conv2d_9_f2_k1_1_bias_read_readvariableop*
&savev2_iteration_1_read_readvariableop	.
*savev2_learning_rate_1_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop&
"savev2_total_8_read_readvariableop&
"savev2_count_8_read_readvariableop&
"savev2_total_7_read_readvariableop&
"savev2_count_7_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B�;B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-0/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-0/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_chroma_conv2d_1_f15_k1_13_kernel_1_read_readvariableop;savev2_chroma_conv2d_1_f15_k1_13_bias_1_read_readvariableop=savev2_chroma_conv2d_2_f15_k1_13_kernel_1_read_readvariableop;savev2_chroma_conv2d_2_f15_k1_13_bias_1_read_readvariableop;savev2_chroma_conv2d_3_f8_k3_3_kernel_1_read_readvariableop9savev2_chroma_conv2d_3_f8_k3_3_bias_1_read_readvariableop=savev2_chroma_conv2d_4_f15_k1_13_kernel_1_read_readvariableop;savev2_chroma_conv2d_4_f15_k1_13_bias_1_read_readvariableop=savev2_chroma_conv2d_5_f15_k1_13_kernel_1_read_readvariableop;savev2_chroma_conv2d_5_f15_k1_13_bias_1_read_readvariableop=savev2_chroma_conv2d_6_f30_k1_25_kernel_1_read_readvariableop;savev2_chroma_conv2d_6_f30_k1_25_bias_1_read_readvariableop<savev2_chroma_conv2d_7_f15_k3_3_kernel_1_read_readvariableop:savev2_chroma_conv2d_7_f15_k3_3_bias_1_read_readvariableop=savev2_chroma_conv2d_8_f30_k1_25_kernel_1_read_readvariableop;savev2_chroma_conv2d_8_f30_k1_25_bias_1_read_readvariableop7savev2_luma_conv2d_9_f1_k1_1_kernel_read_readvariableop5savev2_luma_conv2d_9_f1_k1_1_bias_read_readvariableop;savev2_chroma_conv2d_1_f15_k1_13_kernel_read_readvariableop9savev2_chroma_conv2d_1_f15_k1_13_bias_read_readvariableop;savev2_chroma_conv2d_2_f15_k1_13_kernel_read_readvariableop9savev2_chroma_conv2d_2_f15_k1_13_bias_read_readvariableop9savev2_chroma_conv2d_3_f8_k3_3_kernel_read_readvariableop7savev2_chroma_conv2d_3_f8_k3_3_bias_read_readvariableop;savev2_chroma_conv2d_4_f15_k1_13_kernel_read_readvariableop9savev2_chroma_conv2d_4_f15_k1_13_bias_read_readvariableop;savev2_chroma_conv2d_5_f15_k1_13_kernel_read_readvariableop9savev2_chroma_conv2d_5_f15_k1_13_bias_read_readvariableop;savev2_chroma_conv2d_6_f30_k1_25_kernel_read_readvariableop9savev2_chroma_conv2d_6_f30_k1_25_bias_read_readvariableop:savev2_chroma_conv2d_7_f15_k3_3_kernel_read_readvariableop8savev2_chroma_conv2d_7_f15_k3_3_bias_read_readvariableop;savev2_chroma_conv2d_8_f30_k1_25_kernel_read_readvariableop9savev2_chroma_conv2d_8_f30_k1_25_bias_read_readvariableop9savev2_chroma_conv2d_9_f2_k1_1_kernel_read_readvariableop7savev2_chroma_conv2d_9_f2_k1_1_bias_read_readvariableop&savev2_iteration_1_read_readvariableop*savev2_learning_rate_1_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *I
dtypes?
=2;		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::::::: : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: 
�	
q
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5798

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5467

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2214j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2286

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5809

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�p
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2909
cvbs_input_chroma8
chroma_conv2d_1_f15_k1_13_2848:,
chroma_conv2d_1_f15_k1_13_2850:8
chroma_conv2d_2_f15_k1_13_2855:,
chroma_conv2d_2_f15_k1_13_2857:6
chroma_conv2d_3_f8_k3_3_2862:*
chroma_conv2d_3_f8_k3_3_2864:8
chroma_conv2d_4_f15_k1_13_2869:,
chroma_conv2d_4_f15_k1_13_2871:8
chroma_conv2d_5_f15_k1_13_2876:,
chroma_conv2d_5_f15_k1_13_2878:8
chroma_conv2d_6_f30_k1_25_2883:,
chroma_conv2d_6_f30_k1_25_2885:7
chroma_conv2d_7_f15_k3_3_2890:+
chroma_conv2d_7_f15_k3_3_2892:8
chroma_conv2d_8_f30_k1_25_2896:,
chroma_conv2d_8_f30_k1_25_2898:6
chroma_conv2d_9_f2_k1_1_2903:*
chroma_conv2d_9_f2_k1_1_2905:
identity��1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall�/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall�1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall�1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall�0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall�1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall�/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall�
%chroma_crop_0.0_118.0/PartitionedCallPartitionedCallcvbs_input_chroma*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *X
fSRQ
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_2054�
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall.chroma_crop_0.0_118.0/PartitionedCall:output:0chroma_conv2d_1_f15_k1_13_2848chroma_conv2d_1_f15_k1_13_2850*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180�
(chroma_GausianNoise_1_30/PartitionedCallPartitionedCall:chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2190�
,chroma_ZeroPadding_1_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067�
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_1_0.0_6.6/PartitionedCall:output:0chroma_conv2d_2_f15_k1_13_2855chroma_conv2d_2_f15_k1_13_2857*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204�
(chroma_GausianNoise_2_35/PartitionedCallPartitionedCall:chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2214�
,chroma_ZeroPadding_2_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_2_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080�
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_2_0.0_6.6/PartitionedCall:output:0chroma_conv2d_3_f8_k3_3_2862chroma_conv2d_3_f8_k3_3_2864*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228�
*chroma_GausianDropout_1_30/PartitionedCallPartitionedCall8chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_2238�
,chroma_ZeroPadding_3_1.1_1.1/PartitionedCallPartitionedCall3chroma_GausianDropout_1_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_2093�
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_3_1.1_1.1/PartitionedCall:output:0chroma_conv2d_4_f15_k1_13_2869chroma_conv2d_4_f15_k1_13_2871*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252�
(chroma_GausianNoise_3_35/PartitionedCallPartitionedCall:chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_2262�
,chroma_ZeroPadding_4_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_3_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_2106�
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_4_0.0_6.6/PartitionedCall:output:0chroma_conv2d_5_f15_k1_13_2876chroma_conv2d_5_f15_k1_13_2878*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276�
(chroma_GausianNoise_4_30/PartitionedCallPartitionedCall:chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_2286�
,chroma_ZeroPadding_5_0.0_6.6/PartitionedCallPartitionedCall1chroma_GausianNoise_4_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119�
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_5_0.0_6.6/PartitionedCall:output:0chroma_conv2d_6_f30_k1_25_2883chroma_conv2d_6_f30_k1_25_2885*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_2300�
(chroma_GausianNoise_5_30/PartitionedCallPartitionedCall:chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2310�
-chroma_ZeroPadding_6_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_5_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132�
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_6_0.0_24.0/PartitionedCall:output:0chroma_conv2d_7_f15_k3_3_2890chroma_conv2d_7_f15_k3_3_2892*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_2324�
,chroma_ZeroPadding_7_1.1_1.1/PartitionedCallPartitionedCall9chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_2145�
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCallStatefulPartitionedCall5chroma_ZeroPadding_7_1.1_1.1/PartitionedCall:output:0chroma_conv2d_8_f30_k1_25_2896chroma_conv2d_8_f30_k1_25_2898*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_2342�
(chroma_GausianNoise_6_35/PartitionedCallPartitionedCall:chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2352�
-chroma_ZeroPadding_8_0.0_24.0/PartitionedCallPartitionedCall1chroma_GausianNoise_6_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_2158�
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCallStatefulPartitionedCall6chroma_ZeroPadding_8_0.0_24.0/PartitionedCall:output:0chroma_conv2d_9_f2_k1_1_2903chroma_conv2d_9_f2_k1_1_2905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *Z
fURS
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_2366�
IdentityIdentity8chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp2^chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall0^chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2^chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2^chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1^chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2^chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall0^chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2f
1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_1_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_2_f15_k1.13/StatefulPartitionedCall2b
/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall/chroma_Conv2D_3_f8_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_4_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall1chroma_Conv2D_5_f15_k1.13/StatefulPartitionedCall2f
1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_6_f30_k1.25/StatefulPartitionedCall2d
0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall0chroma_Conv2D_7_f15_k3.3/StatefulPartitionedCall2f
1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall1chroma_Conv2D_8_f30_k1.25/StatefulPartitionedCall2b
/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall/chroma_Conv2D_9_f2_k1.1/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
X
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5260

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *`
f[RY
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_1200�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
s
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5543

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������a
mulMulinputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5492

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_2080�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
W
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5291

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *_
fZRX
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_1213�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1420

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_1248

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_4986

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
F__inference_model_chroma_layer_call_and_return_conditional_losses_4904

inputsR
8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:P
6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:E
7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:Q
7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:F
8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:P
6chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource:E
7chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource:
identity��0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp�-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp�
)chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
+chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
+chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
#chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs2chroma_crop_0.0_118.0/strided_slice/stack:output:04chroma_crop_0.0_118.0/strided_slice/stack_1:output:04chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_1_f15_k1.13/Conv2DConv2D,chroma_crop_0.0_118.0/strided_slice:output:07chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_1_f15_k1.13/Conv2D:output:08chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_1_f15_k1.13/EluElu*chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_1_30/ShapeShape+chroma_Conv2D_1_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_1_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_1_30/random_normal/mulMulDchroma_GausianNoise_1_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_1_30/random_normalAddV2.chroma_GausianNoise_1_30/random_normal/mul:z:04chroma_GausianNoise_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_1_30/addAddV2+chroma_Conv2D_1_f15_k1.13/Elu:activations:0*chroma_GausianNoise_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_1_0.0_6.6/PadPad chroma_GausianNoise_1_30/add:z:02chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_2_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_1_0.0_6.6/Pad:output:07chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_2_f15_k1.13/Conv2D:output:08chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_2_f15_k1.13/EluElu*chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_2_35/ShapeShape+chroma_Conv2D_2_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_2_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_2_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_2_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_2_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_2_35/random_normal/mulMulDchroma_GausianNoise_2_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_2_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_2_35/random_normalAddV2.chroma_GausianNoise_2_35/random_normal/mul:z:04chroma_GausianNoise_2_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_2_35/addAddV2+chroma_Conv2D_2_f15_k1.13/Elu:activations:0*chroma_GausianNoise_2_35/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_2_0.0_6.6/PadPad chroma_GausianNoise_2_35/add:z:02chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/Conv2DConv2D)chroma_ZeroPadding_2_0.0_6.6/Pad:output:05chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd'chroma_Conv2D_3_f8_k3.3/Conv2D:output:06chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_3_f8_k3.3/EluElu(chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
 chroma_GausianDropout_1_30/ShapeShape)chroma_Conv2D_3_f8_k3.3/Elu:activations:0*
T0*
_output_shapes
:r
-chroma_GausianDropout_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
/chroma_GausianDropout_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
=chroma_GausianDropout_1_30/random_normal/RandomStandardNormalRandomStandardNormal)chroma_GausianDropout_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
,chroma_GausianDropout_1_30/random_normal/mulMulFchroma_GausianDropout_1_30/random_normal/RandomStandardNormal:output:08chroma_GausianDropout_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
(chroma_GausianDropout_1_30/random_normalAddV20chroma_GausianDropout_1_30/random_normal/mul:z:06chroma_GausianDropout_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianDropout_1_30/mulMul)chroma_Conv2D_3_f8_k3.3/Elu:activations:0,chroma_GausianDropout_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_3_1.1_1.1/PadPad"chroma_GausianDropout_1_30/mul:z:02chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_4_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_3_1.1_1.1/Pad:output:07chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_4_f15_k1.13/Conv2D:output:08chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_4_f15_k1.13/EluElu*chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_3_35/ShapeShape+chroma_Conv2D_4_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_3_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_3_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_3_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_3_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_3_35/random_normal/mulMulDchroma_GausianNoise_3_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_3_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_3_35/random_normalAddV2.chroma_GausianNoise_3_35/random_normal/mul:z:04chroma_GausianNoise_3_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_3_35/addAddV2+chroma_Conv2D_4_f15_k1.13/Elu:activations:0*chroma_GausianNoise_3_35/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_4_0.0_6.6/PadPad chroma_GausianNoise_3_35/add:z:02chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_5_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_4_0.0_6.6/Pad:output:07chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_5_f15_k1.13/Conv2D:output:08chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_5_f15_k1.13/EluElu*chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_4_30/ShapeShape+chroma_Conv2D_5_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_4_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_4_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_4_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_4_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_4_30/random_normal/mulMulDchroma_GausianNoise_4_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_4_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_4_30/random_normalAddV2.chroma_GausianNoise_4_30/random_normal/mul:z:04chroma_GausianNoise_4_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_4_30/addAddV2+chroma_Conv2D_5_f15_k1.13/Elu:activations:0*chroma_GausianNoise_4_30/random_normal:z:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_5_0.0_6.6/PadPad chroma_GausianNoise_4_30/add:z:02chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_6_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_5_0.0_6.6/Pad:output:07chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_6_f30_k1.25/Conv2D:output:08chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_6_f30_k1.25/EluElu*chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_5_30/ShapeShape+chroma_Conv2D_6_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_5_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_5_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
;chroma_GausianNoise_5_30/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_5_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_5_30/random_normal/mulMulDchroma_GausianNoise_5_30/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_5_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_5_30/random_normalAddV2.chroma_GausianNoise_5_30/random_normal/mul:z:04chroma_GausianNoise_5_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_5_30/addAddV2+chroma_Conv2D_6_f30_k1.25/Elu:activations:0*chroma_GausianNoise_5_30/random_normal:z:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_6_0.0_24.0/PadPad chroma_GausianNoise_5_30/add:z:03chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOp7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_7_f15_k3.3/Conv2DConv2D*chroma_ZeroPadding_6_0.0_24.0/Pad:output:06chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOp8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd(chroma_Conv2D_7_f15_k3.3/Conv2D:output:07chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_7_f15_k3.3/EluElu)chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_7_1.1_1.1/PadPad*chroma_Conv2D_7_f15_k3.3/Elu:activations:02chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_8_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_7_1.1_1.1/Pad:output:07chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_8_f30_k1.25/Conv2D:output:08chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_8_f30_k1.25/EluElu*chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:�����������y
chroma_GausianNoise_6_35/ShapeShape+chroma_Conv2D_8_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:p
+chroma_GausianNoise_6_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    r
-chroma_GausianNoise_6_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
;chroma_GausianNoise_6_35/random_normal/RandomStandardNormalRandomStandardNormal'chroma_GausianNoise_6_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
*chroma_GausianNoise_6_35/random_normal/mulMulDchroma_GausianNoise_6_35/random_normal/RandomStandardNormal:output:06chroma_GausianNoise_6_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
&chroma_GausianNoise_6_35/random_normalAddV2.chroma_GausianNoise_6_35/random_normal/mul:z:04chroma_GausianNoise_6_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
chroma_GausianNoise_6_35/addAddV2+chroma_Conv2D_8_f30_k1.25/Elu:activations:0*chroma_GausianNoise_6_35/random_normal:z:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_8_0.0_24.0/PadPad chroma_GausianNoise_6_35/add:z:03chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_9_f2_k1.1/Conv2DConv2D*chroma_ZeroPadding_8_0.0_24.0/Pad:output:05chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_9_f2_k1.1/BiasAddBiasAdd'chroma_Conv2D_9_f2_k1.1/Conv2D:output:06chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_9_f2_k1.1/EluElu(chroma_Conv2D_9_f2_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
IdentityIdentity)chroma_Conv2D_9_f2_k1.1/Elu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/^chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.^chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp0^chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/^chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/^chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp.^chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2d
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2`
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2b
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2`
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2`
.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp.chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp-chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_1135

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5016

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_1679y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4975

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_2204

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�	
(__inference_model_YUV_layer_call_fn_3775

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_model_YUV_layer_call_and_return_conditional_losses_3065y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_2119

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
D__inference_model_luma_layer_call_and_return_conditional_losses_4463

inputsR
8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:P
6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:E
7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:G
9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:R
8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:Q
7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:F
8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:R
8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:G
9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:N
4luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource:C
5luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource:
identity��0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp�+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp�
)chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
+chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
+chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
#chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs2chroma_crop_0.0_118.0/strided_slice/stack:output:04chroma_crop_0.0_118.0/strided_slice/stack_1:output:04chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_1_f15_k1.13/Conv2DConv2D,chroma_crop_0.0_118.0/strided_slice:output:07chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_1_f15_k1.13/Conv2D:output:08chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_1_f15_k1.13/EluElu*chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_1_0.0_6.6/PadPad+chroma_Conv2D_1_f15_k1.13/Elu:activations:02chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_2_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_1_0.0_6.6/Pad:output:07chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_2_f15_k1.13/Conv2D:output:08chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_2_f15_k1.13/EluElu*chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_2_0.0_6.6/PadPad+chroma_Conv2D_2_f15_k1.13/Elu:activations:02chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOp6chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/Conv2DConv2D)chroma_ZeroPadding_2_0.0_6.6/Pad:output:05chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOp7chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd'chroma_Conv2D_3_f8_k3.3/Conv2D:output:06chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_3_f8_k3.3/EluElu(chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_3_1.1_1.1/PadPad)chroma_Conv2D_3_f8_k3.3/Elu:activations:02chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_4_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_3_1.1_1.1/Pad:output:07chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_4_f15_k1.13/Conv2D:output:08chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_4_f15_k1.13/EluElu*chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_4_0.0_6.6/PadPad+chroma_Conv2D_4_f15_k1.13/Elu:activations:02chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_5_f15_k1.13/Conv2DConv2D)chroma_ZeroPadding_4_0.0_6.6/Pad:output:07chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd)chroma_Conv2D_5_f15_k1.13/Conv2D:output:08chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_5_f15_k1.13/EluElu*chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 chroma_ZeroPadding_5_0.0_6.6/PadPad+chroma_Conv2D_5_f15_k1.13/Elu:activations:02chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_6_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_5_0.0_6.6/Pad:output:07chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_6_f30_k1.25/Conv2D:output:08chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_6_f30_k1.25/EluElu*chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_6_0.0_24.0/PadPad+chroma_Conv2D_6_f30_k1.25/Elu:activations:03chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOp7chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
chroma_Conv2D_7_f15_k3.3/Conv2DConv2D*chroma_ZeroPadding_6_0.0_24.0/Pad:output:06chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOp8chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd(chroma_Conv2D_7_f15_k3.3/Conv2D:output:07chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_7_f15_k3.3/EluElu)chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
 chroma_ZeroPadding_7_1.1_1.1/PadPad*chroma_Conv2D_7_f15_k3.3/Elu:activations:02chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOp8chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 chroma_Conv2D_8_f30_k1.25/Conv2DConv2D)chroma_ZeroPadding_7_1.1_1.1/Pad:output:07chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOp9chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd)chroma_Conv2D_8_f30_k1.25/Conv2D:output:08chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
chroma_Conv2D_8_f30_k1.25/EluElu*chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
!chroma_ZeroPadding_8_0.0_24.0/PadPad+chroma_Conv2D_8_f30_k1.25/Elu:activations:03chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOpReadVariableOp4luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
luma_Conv2D_9_f1_k1.1/Conv2DConv2D*chroma_ZeroPadding_8_0.0_24.0/Pad:output:03luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpReadVariableOp5luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
luma_Conv2D_9_f1_k1.1/BiasAddBiasAdd%luma_Conv2D_9_f1_k1.1/Conv2D:output:04luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
luma_Conv2D_9_f1_k1.1/EluElu&luma_Conv2D_9_f1_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
IdentityIdentity'luma_Conv2D_9_f1_k1.1/Elu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/^chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.^chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0^chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp1^chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp0^chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/^chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp1^chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0^chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp-^luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp,^luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2d
0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2`
.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp.chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2^
-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp-chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp0chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2d
0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2b
/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2`
.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp.chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2d
0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp0chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2b
/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2\
,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp,luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp2Z
+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp+luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5610

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
k
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_4930

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*J
_output_shapes8
6:4������������������������������������*

begin_mask	*
end_mask�
IdentityIdentitystrided_slice:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
� 
�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3065

inputs)
model_luma_2981:
model_luma_2983:)
model_luma_2985:
model_luma_2987:)
model_luma_2989:
model_luma_2991:)
model_luma_2993:
model_luma_2995:)
model_luma_2997:
model_luma_2999:)
model_luma_3001:
model_luma_3003:)
model_luma_3005:
model_luma_3007:)
model_luma_3009:
model_luma_3011:)
model_luma_3013:
model_luma_3015:+
model_chroma_3018:
model_chroma_3020:+
model_chroma_3022:
model_chroma_3024:+
model_chroma_3026:
model_chroma_3028:+
model_chroma_3030:
model_chroma_3032:+
model_chroma_3034:
model_chroma_3036:+
model_chroma_3038:
model_chroma_3040:+
model_chroma_3042:
model_chroma_3044:+
model_chroma_3046:
model_chroma_3048:+
model_chroma_3050:
model_chroma_3052:
identity��$model_chroma/StatefulPartitionedCall�"model_luma/StatefulPartitionedCall�
"model_luma/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_luma_2981model_luma_2983model_luma_2985model_luma_2987model_luma_2989model_luma_2991model_luma_2993model_luma_2995model_luma_2997model_luma_2999model_luma_3001model_luma_3003model_luma_3005model_luma_3007model_luma_3009model_luma_3011model_luma_3013model_luma_3015*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1441�
$model_chroma/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_chroma_3018model_chroma_3020model_chroma_3022model_chroma_3024model_chroma_3026model_chroma_3028model_chroma_3030model_chroma_3032model_chroma_3034model_chroma_3036model_chroma_3038model_chroma_3040model_chroma_3042model_chroma_3044model_chroma_3046model_chroma_3048model_chroma_3050model_chroma_3052*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_model_chroma_layer_call_and_return_conditional_losses_2373�
concatenate/PartitionedCallPartitionedCall+model_luma/StatefulPartitionedCall:output:0-model_chroma/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_3062}
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp%^model_chroma/StatefulPartitionedCall#^model_luma/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_chroma/StatefulPartitionedCall$model_chroma/StatefulPartitionedCall2H
"model_luma/StatefulPartitionedCall"model_luma/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_2483

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_2228

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5742

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5783

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_2441y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�	
(__inference_model_YUV_layer_call_fn_3457
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*F
_read_only_resource_inputs(
&$	
 !"#$*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_model_YUV_layer_call_and_return_conditional_losses_3305y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
r
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_1161

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5753

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_model_luma_layer_call_fn_1912
cvbs_input_chroma!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcvbs_input_chromaunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1832y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�
p
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5327

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *[
fVRT
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1509y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
o
E__inference_concatenate_layer_call_and_return_conditional_losses_3062

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�+
C__inference_model_YUV_layer_call_and_return_conditional_losses_4294

inputs]
Cmodel_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:[
Amodel_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:P
Bmodel_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:\
Bmodel_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:Q
Cmodel_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:]
Cmodel_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:R
Dmodel_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:Y
?model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource:N
@model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource:]
Cmodel_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource:R
Dmodel_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource:^
Dmodel_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource:S
Emodel_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource:_
Emodel_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource:T
Fmodel_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource:]
Cmodel_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource:R
Dmodel_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource:
identity��=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp�:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp�9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp�8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp�:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp�9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp�;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp�:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp�7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp�6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp�
4model_luma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
6model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
6model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
.model_luma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs=model_luma/chroma_crop_0.0_118.0/strided_slice/stack:output:0?model_luma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0?model_luma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2D7model_luma/chroma_crop_0.0_118.0/strided_slice:output:0Bmodel_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_1_f15_k1.13/EluElu5model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_1_30/ShapeShape6model_luma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Fmodel_luma/chroma_GausianNoise_1_30/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_1_30/random_normal/mulMulOmodel_luma/chroma_GausianNoise_1_30/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_1_30/random_normalAddV29model_luma/chroma_GausianNoise_1_30/random_normal/mul:z:0?model_luma/chroma_GausianNoise_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_1_30/addAddV26model_luma/chroma_Conv2D_1_f15_k1.13/Elu:activations:05model_luma/chroma_GausianNoise_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_1_0.0_6.6/PadPad+model_luma/chroma_GausianNoise_1_30/add:z:0=model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_2_f15_k1.13/EluElu5model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_2_35/ShapeShape6model_luma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_2_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_2_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Fmodel_luma/chroma_GausianNoise_2_35/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_2_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_2_35/random_normal/mulMulOmodel_luma/chroma_GausianNoise_2_35/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_2_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_2_35/random_normalAddV29model_luma/chroma_GausianNoise_2_35/random_normal/mul:z:0?model_luma/chroma_GausianNoise_2_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_2_35/addAddV26model_luma/chroma_Conv2D_2_f15_k1.13/Elu:activations:05model_luma/chroma_GausianNoise_2_35/random_normal:z:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_2_0.0_6.6/PadPad+model_luma/chroma_GausianNoise_2_35/add:z:0=model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpAmodel_luma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
)model_luma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D4model_luma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0@model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpBmodel_luma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*model_luma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd2model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Amodel_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&model_luma/chroma_Conv2D_3_f8_k3.3/EluElu3model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_luma/chroma_GausianDropout_1_30/ShapeShape4model_luma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0*
T0*
_output_shapes
:}
8model_luma/chroma_GausianDropout_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
:model_luma/chroma_GausianDropout_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
Hmodel_luma/chroma_GausianDropout_1_30/random_normal/RandomStandardNormalRandomStandardNormal4model_luma/chroma_GausianDropout_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_luma/chroma_GausianDropout_1_30/random_normal/mulMulQmodel_luma/chroma_GausianDropout_1_30/random_normal/RandomStandardNormal:output:0Cmodel_luma/chroma_GausianDropout_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_luma/chroma_GausianDropout_1_30/random_normalAddV2;model_luma/chroma_GausianDropout_1_30/random_normal/mul:z:0Amodel_luma/chroma_GausianDropout_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianDropout_1_30/mulMul4model_luma/chroma_Conv2D_3_f8_k3.3/Elu:activations:07model_luma/chroma_GausianDropout_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
+model_luma/chroma_ZeroPadding_3_1.1_1.1/PadPad-model_luma/chroma_GausianDropout_1_30/mul:z:0=model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Bmodel_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_4_f15_k1.13/EluElu5model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_3_35/ShapeShape6model_luma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_3_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_3_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Fmodel_luma/chroma_GausianNoise_3_35/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_3_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_3_35/random_normal/mulMulOmodel_luma/chroma_GausianNoise_3_35/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_3_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_3_35/random_normalAddV29model_luma/chroma_GausianNoise_3_35/random_normal/mul:z:0?model_luma/chroma_GausianNoise_3_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_3_35/addAddV26model_luma/chroma_Conv2D_4_f15_k1.13/Elu:activations:05model_luma/chroma_GausianNoise_3_35/random_normal:z:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_4_0.0_6.6/PadPad+model_luma/chroma_GausianNoise_3_35/add:z:0=model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D4model_luma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd4model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Cmodel_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_5_f15_k1.13/EluElu5model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_4_30/ShapeShape6model_luma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_4_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_4_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Fmodel_luma/chroma_GausianNoise_4_30/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_4_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_4_30/random_normal/mulMulOmodel_luma/chroma_GausianNoise_4_30/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_4_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_4_30/random_normalAddV29model_luma/chroma_GausianNoise_4_30/random_normal/mul:z:0?model_luma/chroma_GausianNoise_4_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_4_30/addAddV26model_luma/chroma_Conv2D_5_f15_k1.13/Elu:activations:05model_luma/chroma_GausianNoise_4_30/random_normal:z:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
+model_luma/chroma_ZeroPadding_5_0.0_6.6/PadPad+model_luma/chroma_GausianNoise_4_30/add:z:0=model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D4model_luma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Bmodel_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd4model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Cmodel_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_6_f30_k1.25/EluElu5model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_5_30/ShapeShape6model_luma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_5_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_5_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Fmodel_luma/chroma_GausianNoise_5_30/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_5_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_5_30/random_normal/mulMulOmodel_luma/chroma_GausianNoise_5_30/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_5_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_5_30/random_normalAddV29model_luma/chroma_GausianNoise_5_30/random_normal/mul:z:0?model_luma/chroma_GausianNoise_5_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_5_30/addAddV26model_luma/chroma_Conv2D_6_f30_k1.25/Elu:activations:05model_luma/chroma_GausianNoise_5_30/random_normal:z:0*
T0*1
_output_shapes
:������������
5model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
,model_luma/chroma_ZeroPadding_6_0.0_24.0/PadPad+model_luma/chroma_GausianNoise_5_30/add:z:0>model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpBmodel_luma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
*model_luma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2D5model_luma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Amodel_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd3model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Bmodel_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_Conv2D_7_f15_k3.3/EluElu4model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
4model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
+model_luma/chroma_ZeroPadding_7_1.1_1.1/PadPad5model_luma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0=model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpCmodel_luma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_luma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D4model_luma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Bmodel_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpDmodel_luma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_luma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd4model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Cmodel_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_luma/chroma_Conv2D_8_f30_k1.25/EluElu5model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)model_luma/chroma_GausianNoise_6_35/ShapeShape6model_luma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:{
6model_luma/chroma_GausianNoise_6_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    }
8model_luma/chroma_GausianNoise_6_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Fmodel_luma/chroma_GausianNoise_6_35/random_normal/RandomStandardNormalRandomStandardNormal2model_luma/chroma_GausianNoise_6_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
5model_luma/chroma_GausianNoise_6_35/random_normal/mulMulOmodel_luma/chroma_GausianNoise_6_35/random_normal/RandomStandardNormal:output:0Amodel_luma/chroma_GausianNoise_6_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
1model_luma/chroma_GausianNoise_6_35/random_normalAddV29model_luma/chroma_GausianNoise_6_35/random_normal/mul:z:0?model_luma/chroma_GausianNoise_6_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
'model_luma/chroma_GausianNoise_6_35/addAddV26model_luma/chroma_Conv2D_8_f30_k1.25/Elu:activations:05model_luma/chroma_GausianNoise_6_35/random_normal:z:0*
T0*1
_output_shapes
:������������
5model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
,model_luma/chroma_ZeroPadding_8_0.0_24.0/PadPad+model_luma/chroma_GausianNoise_6_35/add:z:0>model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOpReadVariableOp?model_luma_luma_conv2d_9_f1_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
'model_luma/luma_Conv2D_9_f1_k1.1/Conv2DConv2D5model_luma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0>model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOpReadVariableOp@model_luma_luma_conv2d_9_f1_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(model_luma/luma_Conv2D_9_f1_k1.1/BiasAddBiasAdd0model_luma/luma_Conv2D_9_f1_k1.1/Conv2D:output:0?model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
$model_luma/luma_Conv2D_9_f1_k1.1/EluElu1model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_crop_0.0_118.0/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"        v       �
8model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                �
8model_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
0model_chroma/chroma_crop_0.0_118.0/strided_sliceStridedSliceinputs?model_chroma/chroma_crop_0.0_118.0/strided_slice/stack:output:0Amodel_chroma/chroma_crop_0.0_118.0/strided_slice/stack_1:output:0Amodel_chroma/chroma_crop_0.0_118.0/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:�����������*

begin_mask	*
end_mask�
<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_1_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2DConv2D9model_chroma/chroma_crop_0.0_118.0/strided_slice:output:0Dmodel_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_1_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_1_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_1_30/ShapeShape8model_chroma/chroma_Conv2D_1_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Hmodel_chroma/chroma_GausianNoise_1_30/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_1_30/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_1_30/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_1_30/random_normalAddV2;model_chroma/chroma_GausianNoise_1_30/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_1_30/addAddV28model_chroma/chroma_Conv2D_1_f15_k1.13/Elu:activations:07model_chroma/chroma_GausianNoise_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_1_0.0_6.6/PadPad-model_chroma/chroma_GausianNoise_1_30/add:z:0?model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_2_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_1_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_2_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_2_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_2_35/ShapeShape8model_chroma/chroma_Conv2D_2_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_2_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_2_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Hmodel_chroma/chroma_GausianNoise_2_35/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_2_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_2_35/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_2_35/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_2_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_2_35/random_normalAddV2;model_chroma/chroma_GausianNoise_2_35/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_2_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_2_35/addAddV28model_chroma/chroma_Conv2D_2_f15_k1.13/Elu:activations:07model_chroma/chroma_GausianNoise_2_35/random_normal:z:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_2_0.0_6.6/PadPad-model_chroma/chroma_GausianNoise_2_35/add:z:0?model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOpReadVariableOpCmodel_chroma_chroma_conv2d_3_f8_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2DConv2D6model_chroma/chroma_ZeroPadding_2_0.0_6.6/Pad:output:0Bmodel_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_3_f8_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAddBiasAdd4model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D:output:0Cmodel_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_chroma/chroma_Conv2D_3_f8_k3.3/EluElu5model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-model_chroma/chroma_GausianDropout_1_30/ShapeShape6model_chroma/chroma_Conv2D_3_f8_k3.3/Elu:activations:0*
T0*
_output_shapes
:
:model_chroma/chroma_GausianDropout_1_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
<model_chroma/chroma_GausianDropout_1_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *b�'?�
Jmodel_chroma/chroma_GausianDropout_1_30/random_normal/RandomStandardNormalRandomStandardNormal6model_chroma/chroma_GausianDropout_1_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
9model_chroma/chroma_GausianDropout_1_30/random_normal/mulMulSmodel_chroma/chroma_GausianDropout_1_30/random_normal/RandomStandardNormal:output:0Emodel_chroma/chroma_GausianDropout_1_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
5model_chroma/chroma_GausianDropout_1_30/random_normalAddV2=model_chroma/chroma_GausianDropout_1_30/random_normal/mul:z:0Cmodel_chroma/chroma_GausianDropout_1_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianDropout_1_30/mulMul6model_chroma/chroma_Conv2D_3_f8_k3.3/Elu:activations:09model_chroma/chroma_GausianDropout_1_30/random_normal:z:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
-model_chroma/chroma_ZeroPadding_3_1.1_1.1/PadPad/model_chroma/chroma_GausianDropout_1_30/mul:z:0?model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_4_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_3_1.1_1.1/Pad:output:0Dmodel_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_4_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_4_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_3_35/ShapeShape8model_chroma/chroma_Conv2D_4_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_3_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_3_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Hmodel_chroma/chroma_GausianNoise_3_35/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_3_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_3_35/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_3_35/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_3_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_3_35/random_normalAddV2;model_chroma/chroma_GausianNoise_3_35/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_3_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_3_35/addAddV28model_chroma/chroma_Conv2D_4_f15_k1.13/Elu:activations:07model_chroma/chroma_GausianNoise_3_35/random_normal:z:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_4_0.0_6.6/PadPad-model_chroma/chroma_GausianNoise_3_35/add:z:0?model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_5_f15_k1_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2DConv2D6model_chroma/chroma_ZeroPadding_4_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_5_f15_k1_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAddBiasAdd6model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D:output:0Emodel_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_5_f15_k1.13/EluElu7model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_4_30/ShapeShape8model_chroma/chroma_Conv2D_5_f15_k1.13/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_4_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_4_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Hmodel_chroma/chroma_GausianNoise_4_30/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_4_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_4_30/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_4_30/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_4_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_4_30/random_normalAddV2;model_chroma/chroma_GausianNoise_4_30/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_4_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_4_30/addAddV28model_chroma/chroma_Conv2D_5_f15_k1.13/Elu:activations:07model_chroma/chroma_GausianNoise_4_30/random_normal:z:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
-model_chroma/chroma_ZeroPadding_5_0.0_6.6/PadPad-model_chroma/chroma_GausianNoise_4_30/add:z:0?model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_6_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2DConv2D6model_chroma/chroma_ZeroPadding_5_0.0_6.6/Pad:output:0Dmodel_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_6_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAddBiasAdd6model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D:output:0Emodel_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_6_f30_k1.25/EluElu7model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_5_30/ShapeShape8model_chroma/chroma_Conv2D_6_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_5_30/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_5_30/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Hmodel_chroma/chroma_GausianNoise_5_30/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_5_30/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_5_30/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_5_30/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_5_30/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_5_30/random_normalAddV2;model_chroma/chroma_GausianNoise_5_30/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_5_30/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_5_30/addAddV28model_chroma/chroma_Conv2D_6_f30_k1.25/Elu:activations:07model_chroma/chroma_GausianNoise_5_30/random_normal:z:0*
T0*1
_output_shapes
:������������
7model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
.model_chroma/chroma_ZeroPadding_6_0.0_24.0/PadPad-model_chroma/chroma_GausianNoise_5_30/add:z:0@model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_7_f15_k3_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2DConv2D7model_chroma/chroma_ZeroPadding_6_0.0_24.0/Pad:output:0Cmodel_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_7_f15_k3_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAddBiasAdd5model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D:output:0Dmodel_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_Conv2D_7_f15_k3.3/EluElu6model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
6model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
-model_chroma/chroma_ZeroPadding_7_1.1_1.1/PadPad7model_chroma/chroma_Conv2D_7_f15_k3.3/Elu:activations:0?model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOpReadVariableOpEmodel_chroma_chroma_conv2d_8_f30_k1_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
-model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2DConv2D6model_chroma/chroma_ZeroPadding_7_1.1_1.1/Pad:output:0Dmodel_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOpReadVariableOpFmodel_chroma_chroma_conv2d_8_f30_k1_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAddBiasAdd6model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D:output:0Emodel_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
*model_chroma/chroma_Conv2D_8_f30_k1.25/EluElu7model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd:output:0*
T0*1
_output_shapes
:������������
+model_chroma/chroma_GausianNoise_6_35/ShapeShape8model_chroma/chroma_Conv2D_8_f30_k1.25/Elu:activations:0*
T0*
_output_shapes
:}
8model_chroma/chroma_GausianNoise_6_35/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_chroma/chroma_GausianNoise_6_35/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
Hmodel_chroma/chroma_GausianNoise_6_35/random_normal/RandomStandardNormalRandomStandardNormal4model_chroma/chroma_GausianNoise_6_35/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
7model_chroma/chroma_GausianNoise_6_35/random_normal/mulMulQmodel_chroma/chroma_GausianNoise_6_35/random_normal/RandomStandardNormal:output:0Cmodel_chroma/chroma_GausianNoise_6_35/random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
3model_chroma/chroma_GausianNoise_6_35/random_normalAddV2;model_chroma/chroma_GausianNoise_6_35/random_normal/mul:z:0Amodel_chroma/chroma_GausianNoise_6_35/random_normal/mean:output:0*
T0*1
_output_shapes
:������������
)model_chroma/chroma_GausianNoise_6_35/addAddV28model_chroma/chroma_Conv2D_8_f30_k1.25/Elu:activations:07model_chroma/chroma_GausianNoise_6_35/random_normal:z:0*
T0*1
_output_shapes
:������������
7model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                �
.model_chroma/chroma_ZeroPadding_8_0.0_24.0/PadPad-model_chroma/chroma_GausianNoise_6_35/add:z:0@model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOpReadVariableOpCmodel_chroma_chroma_conv2d_9_f2_k1_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2DConv2D7model_chroma/chroma_ZeroPadding_8_0.0_24.0/Pad:output:0Bmodel_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOpReadVariableOpDmodel_chroma_chroma_conv2d_9_f2_k1_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAddBiasAdd4model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D:output:0Cmodel_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model_chroma/chroma_Conv2D_9_f2_k1.1/EluElu5model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV22model_luma/luma_Conv2D_9_f1_k1.1/Elu:activations:06model_chroma/chroma_Conv2D_9_f2_k1.1/Elu:activations:0 concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������t
IdentityIdentityconcatenate/concat:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp>^model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp<^model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp;^model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp=^model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp<^model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp>^model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp=^model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp<^model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp;^model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:^model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp9^model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp;^model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:^model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp<^model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp;^model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp8^model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp7^model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2~
=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2z
;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp;model_chroma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2x
:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp:model_chroma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2|
<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp<model_chroma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2z
;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp;model_chroma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2~
=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp=model_chroma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2|
<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp<model_chroma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2z
;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp;model_chroma/chroma_Conv2D_9_f2_k1.1/BiasAdd/ReadVariableOp2x
:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp:model_chroma/chroma_Conv2D_9_f2_k1.1/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_1_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_1_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_2_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_2_f15_k1.13/Conv2D/ReadVariableOp2v
9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp9model_luma/chroma_Conv2D_3_f8_k3.3/BiasAdd/ReadVariableOp2t
8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp8model_luma/chroma_Conv2D_3_f8_k3.3/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_4_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_4_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_5_f15_k1.13/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_5_f15_k1.13/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_6_f30_k1.25/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_6_f30_k1.25/Conv2D/ReadVariableOp2x
:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp:model_luma/chroma_Conv2D_7_f15_k3.3/BiasAdd/ReadVariableOp2v
9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp9model_luma/chroma_Conv2D_7_f15_k3.3/Conv2D/ReadVariableOp2z
;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp;model_luma/chroma_Conv2D_8_f30_k1.25/BiasAdd/ReadVariableOp2x
:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp:model_luma/chroma_Conv2D_8_f30_k1.25/Conv2D/ReadVariableOp2r
7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp7model_luma/luma_Conv2D_9_f1_k1.1/BiasAdd/ReadVariableOp2p
6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp6model_luma/luma_Conv2D_9_f1_k1.1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_2132

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5498

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_1509

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_1583

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
s
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5353

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_2252

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5306

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_1410y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_2276

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_2214

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5244

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_5829

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
q
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_2643

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_model_luma_layer_call_fn_1480
cvbs_input_chroma!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:$

unknown_15:

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcvbs_input_chromaunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*4
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *M
fHRF
D__inference_model_luma_layer_call_and_return_conditional_losses_1441y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namecvbs_input_chroma
�	
q
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5599

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *33�>�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*1
_output_shapes
:�����������*
dtype0�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*1
_output_shapes
:������������
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*1
_output_shapes
:�����������c
addAddV2inputsrandom_normal:z:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
n
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5331

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_5395

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *\
fWRU
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_2180y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5174

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_2067

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������I
concatenate:
StatefulPartitionedCall:0�����������tensorflow/serving/predict:��	
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
layer_with_weights-2
layer-8
layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
layer-18
 layer-19
!layer_with_weights-6
!layer-20
"layer-21
#layer_with_weights-7
#layer-22
$layer-23
%layer-24
&layer_with_weights-8
&layer-25
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-	optimizer"
_tf_keras_network
�
.layer-0
/layer-1
0layer_with_weights-0
0layer-2
1layer-3
2layer-4
3layer_with_weights-1
3layer-5
4layer-6
5layer-7
6layer_with_weights-2
6layer-8
7layer-9
8layer-10
9layer_with_weights-3
9layer-11
:layer-12
;layer-13
<layer_with_weights-4
<layer-14
=layer-15
>layer-16
?layer_with_weights-5
?layer-17
@layer-18
Alayer-19
Blayer_with_weights-6
Blayer-20
Clayer-21
Dlayer_with_weights-7
Dlayer-22
Elayer-23
Flayer-24
Glayer_with_weights-8
Glayer-25
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N	optimizer"
_tf_keras_network
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19
i20
j21
k22
l23
m24
n25
o26
p27
q28
r29
s30
t31
u32
v33
w34
x35"
trackable_list_wrapper
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19
i20
j21
k22
l23
m24
n25
o26
p27
q28
r29
s30
t31
u32
v33
w34
x35"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
~trace_0
trace_1
�trace_2
�trace_32�
(__inference_model_YUV_layer_call_fn_3140
(__inference_model_YUV_layer_call_fn_3775
(__inference_model_YUV_layer_call_fn_3852
(__inference_model_YUV_layer_call_fn_3457�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0ztrace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
C__inference_model_YUV_layer_call_and_return_conditional_losses_4024
C__inference_model_YUV_layer_call_and_return_conditional_losses_4294
C__inference_model_YUV_layer_call_and_return_conditional_losses_3536
C__inference_model_YUV_layer_call_and_return_conditional_losses_3615�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
__inference__wrapped_model_1110input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
signature_map
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Wkernel
Xbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ykernel
Zbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ckernel
dbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ekernel
fbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17"
trackable_list_wrapper
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_model_luma_layer_call_fn_1480
)__inference_model_luma_layer_call_fn_4335
)__inference_model_luma_layer_call_fn_4376
)__inference_model_luma_layer_call_fn_1912�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_model_luma_layer_call_and_return_conditional_losses_4463
D__inference_model_luma_layer_call_and_return_conditional_losses_4599
D__inference_model_luma_layer_call_and_return_conditional_losses_1977
D__inference_model_luma_layer_call_and_return_conditional_losses_2042�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
n
�_iterations
�
_variables
�_learning_rate
�_update_step_xla"
experimentalOptimizer
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kkernel
lbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17"
trackable_list_wrapper
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
+__inference_model_chroma_layer_call_fn_2412
+__inference_model_chroma_layer_call_fn_4640
+__inference_model_chroma_layer_call_fn_4681
+__inference_model_chroma_layer_call_fn_2844�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
F__inference_model_chroma_layer_call_and_return_conditional_losses_4768
F__inference_model_chroma_layer_call_and_return_conditional_losses_4904
F__inference_model_chroma_layer_call_and_return_conditional_losses_2909
F__inference_model_chroma_layer_call_and_return_conditional_losses_2974�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
n
�_iterations
�
_variables
�_learning_rate
�_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_concatenate_layer_call_fn_4910�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_concatenate_layer_call_and_return_conditional_losses_4917�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
::82 chroma_Conv2D_1_f15_k1.13/kernel
,:*2chroma_Conv2D_1_f15_k1.13/bias
::82 chroma_Conv2D_2_f15_k1.13/kernel
,:*2chroma_Conv2D_2_f15_k1.13/bias
8:62chroma_Conv2D_3_f8_k3.3/kernel
*:(2chroma_Conv2D_3_f8_k3.3/bias
::82 chroma_Conv2D_4_f15_k1.13/kernel
,:*2chroma_Conv2D_4_f15_k1.13/bias
::82 chroma_Conv2D_5_f15_k1.13/kernel
,:*2chroma_Conv2D_5_f15_k1.13/bias
::82 chroma_Conv2D_6_f30_k1.25/kernel
,:*2chroma_Conv2D_6_f30_k1.25/bias
9:72chroma_Conv2D_7_f15_k3.3/kernel
+:)2chroma_Conv2D_7_f15_k3.3/bias
::82 chroma_Conv2D_8_f30_k1.25/kernel
,:*2chroma_Conv2D_8_f30_k1.25/bias
6:42luma_Conv2D_9_f1_k1.1/kernel
(:&2luma_Conv2D_9_f1_k1.1/bias
::82 chroma_Conv2D_1_f15_k1.13/kernel
,:*2chroma_Conv2D_1_f15_k1.13/bias
::82 chroma_Conv2D_2_f15_k1.13/kernel
,:*2chroma_Conv2D_2_f15_k1.13/bias
8:62chroma_Conv2D_3_f8_k3.3/kernel
*:(2chroma_Conv2D_3_f8_k3.3/bias
::82 chroma_Conv2D_4_f15_k1.13/kernel
,:*2chroma_Conv2D_4_f15_k1.13/bias
::82 chroma_Conv2D_5_f15_k1.13/kernel
,:*2chroma_Conv2D_5_f15_k1.13/bias
::82 chroma_Conv2D_6_f30_k1.25/kernel
,:*2chroma_Conv2D_6_f30_k1.25/bias
9:72chroma_Conv2D_7_f15_k3.3/kernel
+:)2chroma_Conv2D_7_f15_k3.3/bias
::82 chroma_Conv2D_8_f30_k1.25/kernel
,:*2chroma_Conv2D_8_f30_k1.25/bias
8:62chroma_Conv2D_9_f2_k1.1/kernel
*:(2chroma_Conv2D_9_f2_k1.1/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_YUV_layer_call_fn_3140input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_YUV_layer_call_fn_3775inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_YUV_layer_call_fn_3852inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_YUV_layer_call_fn_3457input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_YUV_layer_call_and_return_conditional_losses_4024inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_YUV_layer_call_and_return_conditional_losses_4294inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3536input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_YUV_layer_call_and_return_conditional_losses_3615input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_3694input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_chroma_crop_0.0_118.0_layer_call_fn_4922�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_4930�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_4939�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_4950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4955
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4960�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4964
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4975�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_4980�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_4986�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_4995�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5006�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5011
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5016�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5020
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5031�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5036�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5042�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5051�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5062�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5067
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5072�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5076
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5087�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5092�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5098�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5107�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5118�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5123
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5128�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5132
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5143�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5148�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5154�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5163�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5174�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5179
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5184�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5188
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5199�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5204�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5210�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5219�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5230�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5235
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5240�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5244
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5255�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5260�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5266�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5275�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5286�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5291�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5297�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5317�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5322
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5327�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5331
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5342�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5347�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5353�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_luma_Conv2D_9_f1_k1.1_layer_call_fn_5362�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_5373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 19
!20
"21
#22
$23
%24
&25"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_luma_layer_call_fn_1480cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_luma_layer_call_fn_4335inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_luma_layer_call_fn_4376inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_luma_layer_call_fn_1912cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_luma_layer_call_and_return_conditional_losses_4463inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_luma_layer_call_and_return_conditional_losses_4599inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_luma_layer_call_and_return_conditional_losses_1977cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_luma_layer_call_and_return_conditional_losses_2042cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 2	iteration
 "
trackable_list_wrapper
: 2learning_rate
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_chroma_crop_0.0_118.0_layer_call_fn_5378�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_5386�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_5395�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_5406�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5411
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5416�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5420
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5431�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_5436�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_5442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_5451�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5467
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5472�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5476
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5487�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5492�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5498�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5507�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5518�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5523
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5528�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5532
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5543�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5548�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5554�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5563�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5574�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5579
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5584�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5588
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5599�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5604�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5610�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5619�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5630�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5635
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5640�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5644
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5655�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5666�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5686�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5691
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5696�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5700
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5711�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5716�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5722�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5731�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5742�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5747�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5753�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5762�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5773�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5778
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5783�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5787
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5798�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5803�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5809�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_chroma_Conv2D_9_f2_k1.1_layer_call_fn_5818�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_5829�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
�
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
F24
G25"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_model_chroma_layer_call_fn_2412cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_model_chroma_layer_call_fn_4640inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_model_chroma_layer_call_fn_4681inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_model_chroma_layer_call_fn_2844cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_model_chroma_layer_call_and_return_conditional_losses_4768inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_model_chroma_layer_call_and_return_conditional_losses_4904inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2909cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_model_chroma_layer_call_and_return_conditional_losses_2974cvbs_input_chroma"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 2	iteration
 "
trackable_list_wrapper
: 2learning_rate
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_concatenate_layer_call_fn_4910inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_concatenate_layer_call_and_return_conditional_losses_4917inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_chroma_crop_0.0_118.0_layer_call_fn_4922inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_4930inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_4939inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_4950inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4955inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4960inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4964inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4975inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_4980inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_4986inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_4995inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5006inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5011inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5016inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5020inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5031inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5036inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5042inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5051inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5062inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5067inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5072inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5076inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5087inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5092inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5098inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5107inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5118inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5123inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5128inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5132inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5143inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5148inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5154inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5163inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5174inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5179inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5184inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5188inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5199inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5204inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5210inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5219inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5230inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5235inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5240inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5244inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5255inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5260inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5266inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5275inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5286inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5291inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5297inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5306inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5317inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5322inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5327inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5331inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5342inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5347inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5353inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_luma_Conv2D_9_f1_k1.1_layer_call_fn_5362inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_5373inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_chroma_crop_0.0_118.0_layer_call_fn_5378inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_5386inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_5395inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_5406inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5411inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5416inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5420inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5431inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_5436inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_5442inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_5451inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5462inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5467inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5472inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5476inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5487inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5492inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5498inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5507inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5518inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5523inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5528inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5532inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5543inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5548inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5554inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5563inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5574inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5579inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5584inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5588inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5599inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5604inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5610inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5619inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5630inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5635inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5640inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5644inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5655inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5660inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5666inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5675inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5686inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5691inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5696inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5700inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5711inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5716inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5722inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5731inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5742inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5747inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5753inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5762inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5773inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5778inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5783inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5787inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5798inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5803inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5809inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_chroma_Conv2D_9_f2_k1.1_layer_call_fn_5818inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_5829inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
__inference__wrapped_model_1110�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwx:�7
0�-
+�(
input_1�����������
� "C�@
>
concatenate/�,
concatenate������������
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_4950pUV9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_1_f15_k1.13_layer_call_and_return_conditional_losses_5406pgh9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_4939cUV9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_1_f15_k1.13_layer_call_fn_5395cgh9�6
/�,
*�'
inputs�����������
� ""�������������
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5006pWX9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_2_f15_k1.13_layer_call_and_return_conditional_losses_5462pij9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_4995cWX9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_2_f15_k1.13_layer_call_fn_5451cij9�6
/�,
*�'
inputs�����������
� ""�������������
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5062pYZ9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
Q__inference_chroma_Conv2D_3_f8_k3.3_layer_call_and_return_conditional_losses_5518pkl9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5051cYZ9�6
/�,
*�'
inputs�����������
� ""�������������
6__inference_chroma_Conv2D_3_f8_k3.3_layer_call_fn_5507ckl9�6
/�,
*�'
inputs�����������
� ""�������������
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5118p[\9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_4_f15_k1.13_layer_call_and_return_conditional_losses_5574pmn9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5107c[\9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_4_f15_k1.13_layer_call_fn_5563cmn9�6
/�,
*�'
inputs�����������
� ""�������������
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5174p]^9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_5_f15_k1.13_layer_call_and_return_conditional_losses_5630pop9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5163c]^9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_5_f15_k1.13_layer_call_fn_5619cop9�6
/�,
*�'
inputs�����������
� ""�������������
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5230p_`9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_6_f30_k1.25_layer_call_and_return_conditional_losses_5686pqr9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5219c_`9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_6_f30_k1.25_layer_call_fn_5675cqr9�6
/�,
*�'
inputs�����������
� ""�������������
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5286pab9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
R__inference_chroma_Conv2D_7_f15_k3.3_layer_call_and_return_conditional_losses_5742pst9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5275cab9�6
/�,
*�'
inputs�����������
� ""�������������
7__inference_chroma_Conv2D_7_f15_k3.3_layer_call_fn_5731cst9�6
/�,
*�'
inputs�����������
� ""�������������
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5317pcd9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
S__inference_chroma_Conv2D_8_f30_k1.25_layer_call_and_return_conditional_losses_5773puv9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5306ccd9�6
/�,
*�'
inputs�����������
� ""�������������
8__inference_chroma_Conv2D_8_f30_k1.25_layer_call_fn_5762cuv9�6
/�,
*�'
inputs�����������
� ""�������������
Q__inference_chroma_Conv2D_9_f2_k1.1_layer_call_and_return_conditional_losses_5829pwx9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
6__inference_chroma_Conv2D_9_f2_k1.1_layer_call_fn_5818cwx9�6
/�,
*�'
inputs�����������
� ""�������������
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5076p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5087p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5532p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
T__inference_chroma_GausianDropout_1_30_layer_call_and_return_conditional_losses_5543p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5067c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5072c=�:
3�0
*�'
inputs�����������
p
� ""�������������
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5523c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
9__inference_chroma_GausianDropout_1_30_layer_call_fn_5528c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4964p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_4975p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5420p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_1_30_layer_call_and_return_conditional_losses_5431p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4955c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_1_30_layer_call_fn_4960c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5411c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_1_30_layer_call_fn_5416c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5020p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5031p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5476p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_2_35_layer_call_and_return_conditional_losses_5487p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5011c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5016c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5467c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_2_35_layer_call_fn_5472c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5132p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5143p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5588p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_3_35_layer_call_and_return_conditional_losses_5599p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5123c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5128c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5579c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_3_35_layer_call_fn_5584c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5188p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5199p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5644p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_4_30_layer_call_and_return_conditional_losses_5655p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5179c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5184c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5635c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_4_30_layer_call_fn_5640c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5244p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5255p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5700p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_5_30_layer_call_and_return_conditional_losses_5711p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5235c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5240c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5691c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_5_30_layer_call_fn_5696c=�:
3�0
*�'
inputs�����������
p
� ""�������������
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5331p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5342p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5787p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
R__inference_chroma_GausianNoise_6_35_layer_call_and_return_conditional_losses_5798p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5322c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5327c=�:
3�0
*�'
inputs�����������
p
� ""�������������
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5778c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
7__inference_chroma_GausianNoise_6_35_layer_call_fn_5783c=�:
3�0
*�'
inputs�����������
p
� ""�������������
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_4986�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_and_return_conditional_losses_5442�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_4980�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_1_0.0_6.6_layer_call_fn_5436�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5042�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_and_return_conditional_losses_5498�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5036�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_2_0.0_6.6_layer_call_fn_5492�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5098�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_and_return_conditional_losses_5554�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5092�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_3_1.1_1.1_layer_call_fn_5548�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5154�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_and_return_conditional_losses_5610�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5148�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_4_0.0_6.6_layer_call_fn_5604�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5210�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_and_return_conditional_losses_5666�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5204�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_5_0.0_6.6_layer_call_fn_5660�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5266�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
W__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_and_return_conditional_losses_5722�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5260�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
<__inference_chroma_ZeroPadding_6_0.0_24.0_layer_call_fn_5716�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5297�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
V__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_and_return_conditional_losses_5753�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5291�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
;__inference_chroma_ZeroPadding_7_1.1_1.1_layer_call_fn_5747�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5353�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
W__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_and_return_conditional_losses_5809�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5347�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
<__inference_chroma_ZeroPadding_8_0.0_24.0_layer_call_fn_5803�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_4930�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
O__inference_chroma_crop_0.0_118.0_layer_call_and_return_conditional_losses_5386�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
4__inference_chroma_crop_0.0_118.0_layer_call_fn_4922�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
4__inference_chroma_crop_0.0_118.0_layer_call_fn_5378�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
E__inference_concatenate_layer_call_and_return_conditional_losses_4917�n�k
d�a
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
� "/�,
%�"
0�����������
� �
*__inference_concatenate_layer_call_fn_4910�n�k
d�a
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
� ""�������������
O__inference_luma_Conv2D_9_f1_k1.1_layer_call_and_return_conditional_losses_5373pef9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
4__inference_luma_Conv2D_9_f1_k1.1_layer_call_fn_5362cef9�6
/�,
*�'
inputs�����������
� ""�������������
C__inference_model_YUV_layer_call_and_return_conditional_losses_3536�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxB�?
8�5
+�(
input_1�����������
p 

 
� "/�,
%�"
0�����������
� �
C__inference_model_YUV_layer_call_and_return_conditional_losses_3615�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxB�?
8�5
+�(
input_1�����������
p

 
� "/�,
%�"
0�����������
� �
C__inference_model_YUV_layer_call_and_return_conditional_losses_4024�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
C__inference_model_YUV_layer_call_and_return_conditional_losses_4294�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
(__inference_model_YUV_layer_call_fn_3140�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxB�?
8�5
+�(
input_1�����������
p 

 
� ""�������������
(__inference_model_YUV_layer_call_fn_3457�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxB�?
8�5
+�(
input_1�����������
p

 
� ""�������������
(__inference_model_YUV_layer_call_fn_3775�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
(__inference_model_YUV_layer_call_fn_3852�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p

 
� ""�������������
F__inference_model_chroma_layer_call_and_return_conditional_losses_2909�ghijklmnopqrstuvwxL�I
B�?
5�2
cvbs_input_chroma�����������
p 

 
� "/�,
%�"
0�����������
� �
F__inference_model_chroma_layer_call_and_return_conditional_losses_2974�ghijklmnopqrstuvwxL�I
B�?
5�2
cvbs_input_chroma�����������
p

 
� "/�,
%�"
0�����������
� �
F__inference_model_chroma_layer_call_and_return_conditional_losses_4768�ghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
F__inference_model_chroma_layer_call_and_return_conditional_losses_4904�ghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
+__inference_model_chroma_layer_call_fn_2412�ghijklmnopqrstuvwxL�I
B�?
5�2
cvbs_input_chroma�����������
p 

 
� ""�������������
+__inference_model_chroma_layer_call_fn_2844�ghijklmnopqrstuvwxL�I
B�?
5�2
cvbs_input_chroma�����������
p

 
� ""�������������
+__inference_model_chroma_layer_call_fn_4640{ghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
+__inference_model_chroma_layer_call_fn_4681{ghijklmnopqrstuvwxA�>
7�4
*�'
inputs�����������
p

 
� ""�������������
D__inference_model_luma_layer_call_and_return_conditional_losses_1977�UVWXYZ[\]^_`abcdefL�I
B�?
5�2
cvbs_input_chroma�����������
p 

 
� "/�,
%�"
0�����������
� �
D__inference_model_luma_layer_call_and_return_conditional_losses_2042�UVWXYZ[\]^_`abcdefL�I
B�?
5�2
cvbs_input_chroma�����������
p

 
� "/�,
%�"
0�����������
� �
D__inference_model_luma_layer_call_and_return_conditional_losses_4463�UVWXYZ[\]^_`abcdefA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
D__inference_model_luma_layer_call_and_return_conditional_losses_4599�UVWXYZ[\]^_`abcdefA�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
)__inference_model_luma_layer_call_fn_1480�UVWXYZ[\]^_`abcdefL�I
B�?
5�2
cvbs_input_chroma�����������
p 

 
� ""�������������
)__inference_model_luma_layer_call_fn_1912�UVWXYZ[\]^_`abcdefL�I
B�?
5�2
cvbs_input_chroma�����������
p

 
� ""�������������
)__inference_model_luma_layer_call_fn_4335{UVWXYZ[\]^_`abcdefA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
)__inference_model_luma_layer_call_fn_4376{UVWXYZ[\]^_`abcdefA�>
7�4
*�'
inputs�����������
p

 
� ""�������������
"__inference_signature_wrapper_3694�$UVWXYZ[\]^_`abcdefghijklmnopqrstuvwxE�B
� 
;�8
6
input_1+�(
input_1�����������"C�@
>
concatenate/�,
concatenate�����������