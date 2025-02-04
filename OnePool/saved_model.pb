��
��
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
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
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
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8��
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
�
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_12/kernel
�
+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_12/kernel
�
+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_transpose_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/conv2d_transpose_16/bias
�
3Adam/v/conv2d_transpose_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_16/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_transpose_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/conv2d_transpose_16/bias
�
3Adam/m/conv2d_transpose_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_16/bias*
_output_shapes
:*
dtype0
�
!Adam/v/conv2d_transpose_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/conv2d_transpose_16/kernel
�
5Adam/v/conv2d_transpose_16/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_16/kernel*&
_output_shapes
:*
dtype0
�
!Adam/m/conv2d_transpose_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/conv2d_transpose_16/kernel
�
5Adam/m/conv2d_transpose_16/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_16/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_transpose_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/conv2d_transpose_15/bias
�
3Adam/v/conv2d_transpose_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_15/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_transpose_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/conv2d_transpose_15/bias
�
3Adam/m/conv2d_transpose_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_15/bias*
_output_shapes
:*
dtype0
�
!Adam/v/conv2d_transpose_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/conv2d_transpose_15/kernel
�
5Adam/v/conv2d_transpose_15/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_15/kernel*&
_output_shapes
:*
dtype0
�
!Adam/m/conv2d_transpose_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/conv2d_transpose_15/kernel
�
5Adam/m/conv2d_transpose_15/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_15/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�
*%
shared_nameAdam/v/dense_35/bias
z
(Adam/v/dense_35/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_35/bias*
_output_shapes	
:�
*
dtype0
�
Adam/m/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�
*%
shared_nameAdam/m/dense_35/bias
z
(Adam/m/dense_35/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_35/bias*
_output_shapes	
:�
*
dtype0
�
Adam/v/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
*'
shared_nameAdam/v/dense_35/kernel
�
*Adam/v/dense_35/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_35/kernel* 
_output_shapes
:
��
*
dtype0
�
Adam/m/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
*'
shared_nameAdam/m/dense_35/kernel
�
*Adam/m/dense_35/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_35/kernel* 
_output_shapes
:
��
*
dtype0
�
Adam/v/dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_34/bias
z
(Adam/v/dense_34/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_34/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_34/bias
z
(Adam/m/dense_34/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_34/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*'
shared_nameAdam/v/dense_34/kernel
�
*Adam/v/dense_34/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_34/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/m/dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*'
shared_nameAdam/m/dense_34/kernel
�
*Adam/m/dense_34/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_34/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/v/dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_33/bias
y
(Adam/v/dense_33/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_33/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_33/bias
y
(Adam/m/dense_33/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_33/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/v/dense_33/kernel
�
*Adam/v/dense_33/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_33/kernel*
_output_shapes

: @*
dtype0
�
Adam/m/dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/m/dense_33/kernel
�
*Adam/m/dense_33/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_33/kernel*
_output_shapes

: @*
dtype0
�
Adam/v/dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_32/bias
y
(Adam/v/dense_32/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_32/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_32/bias
y
(Adam/m/dense_32/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_32/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/v/dense_32/kernel
�
*Adam/v/dense_32/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_32/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/m/dense_32/kernel
�
*Adam/m/dense_32/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_32/kernel*
_output_shapes

:@ *
dtype0
�
Adam/v/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_31/bias
y
(Adam/v/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_31/bias
y
(Adam/m/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_31/kernel
�
*Adam/v/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_31/kernel
�
*Adam/m/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_30/bias
z
(Adam/v/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_30/bias
z
(Adam/m/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�*'
shared_nameAdam/v/dense_30/kernel
�
*Adam/v/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/kernel* 
_output_shapes
:
�	�*
dtype0
�
Adam/m/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�*'
shared_nameAdam/m/dense_30/kernel
�
*Adam/m/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/kernel* 
_output_shapes
:
�	�*
dtype0
�
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_11/kernel
�
+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_11/kernel
�
+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_10/kernel
�
+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_10/kernel
�
+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
:*
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
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:*
dtype0
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:*
dtype0
�
conv2d_transpose_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_16/bias
�
,conv2d_transpose_16/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_16/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_16/kernel
�
.conv2d_transpose_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_16/kernel*&
_output_shapes
:*
dtype0
�
conv2d_transpose_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_15/bias
�
,conv2d_transpose_15/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_15/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_15/kernel
�
.conv2d_transpose_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_15/kernel*&
_output_shapes
:*
dtype0
s
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�
*
shared_namedense_35/bias
l
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes	
:�
*
dtype0
|
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
* 
shared_namedense_35/kernel
u
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel* 
_output_shapes
:
��
*
dtype0
s
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_34/bias
l
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes	
:�*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	@�*
dtype0
r
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_33/bias
k
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes
:@*
dtype0
z
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_33/kernel
s
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes

: @*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
: *
dtype0
z
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_32/kernel
s
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes

:@ *
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
:@*
dtype0
{
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_31/kernel
t
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes
:	�@*
dtype0
s
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_30/bias
l
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes	
:�*
dtype0
|
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�* 
shared_namedense_30/kernel
u
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel* 
_output_shapes
:
�	�*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:*
dtype0
�
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0
�
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
�
serving_default_conv2d_10_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_10_inputconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasconv2d_transpose_15/kernelconv2d_transpose_15/biasconv2d_transpose_16/kernelconv2d_transpose_16/biasconv2d_12/kernelconv2d_12/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_191217

NoOpNoOp
ͦ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B�
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias*
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias*
�
Ylayer_with_weights-0
Ylayer-0
Zlayer-1
[layer_with_weights-1
[layer-2
\layer-3
]layer_with_weights-2
]layer-4
^layer-5
_layer_with_weights-3
_layer-6
`layer-7
alayer_with_weights-4
alayer-8
blayer_with_weights-5
blayer-9
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
�
0
1
*2
+3
94
:5
H6
I7
W8
X9
i10
j11
k12
l13
m14
n15
o16
p17
q18
r19
s20
t21*
�
0
1
*2
+3
94
:5
H6
I7
W8
X9
i10
j11
k12
l13
m14
n15
o16
p17
q18
r19
s20
t21*
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
�trace_2
�trace_3* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

*0
+1*

*0
+1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

90
:1*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_30/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

H0
I1*

H0
I1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_31/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_32/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias*
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
+�&call_and_return_all_conditional_losses

kkernel
lbias*
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
+�&call_and_return_all_conditional_losses

mkernel
nbias*
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

okernel
pbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias
!�_jit_compiled_convolution_op*
Z
i0
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11*
Z
i0
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
V
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5* 
V
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5* 
PJ
VARIABLE_VALUEdense_33/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_33/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_34/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_34/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_35/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_35/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_15/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_15/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_16/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_16/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_12/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_12/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

i0
j1*

i0
j1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
J
Y0
Z1
[2
\3
]4
^5
_6
`7
a8
b9*
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
b\
VARIABLE_VALUEAdam/m/conv2d_10/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_10/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_10/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_10/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_11/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_11/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_11/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_11/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_30/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_30/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_30/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_30/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_31/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_31/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_31/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_31/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_32/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_32/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_32/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_32/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_33/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_33/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_33/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_33/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_34/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_34/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_34/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_34/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_35/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_35/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_35/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_35/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_15/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_15/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_15/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_15/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_16/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_16/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_16/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_16/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_12/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_12/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_12/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_12/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOp.conv2d_transpose_15/kernel/Read/ReadVariableOp,conv2d_transpose_15/bias/Read/ReadVariableOp.conv2d_transpose_16/kernel/Read/ReadVariableOp,conv2d_transpose_16/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp+Adam/m/conv2d_10/kernel/Read/ReadVariableOp+Adam/v/conv2d_10/kernel/Read/ReadVariableOp)Adam/m/conv2d_10/bias/Read/ReadVariableOp)Adam/v/conv2d_10/bias/Read/ReadVariableOp+Adam/m/conv2d_11/kernel/Read/ReadVariableOp+Adam/v/conv2d_11/kernel/Read/ReadVariableOp)Adam/m/conv2d_11/bias/Read/ReadVariableOp)Adam/v/conv2d_11/bias/Read/ReadVariableOp*Adam/m/dense_30/kernel/Read/ReadVariableOp*Adam/v/dense_30/kernel/Read/ReadVariableOp(Adam/m/dense_30/bias/Read/ReadVariableOp(Adam/v/dense_30/bias/Read/ReadVariableOp*Adam/m/dense_31/kernel/Read/ReadVariableOp*Adam/v/dense_31/kernel/Read/ReadVariableOp(Adam/m/dense_31/bias/Read/ReadVariableOp(Adam/v/dense_31/bias/Read/ReadVariableOp*Adam/m/dense_32/kernel/Read/ReadVariableOp*Adam/v/dense_32/kernel/Read/ReadVariableOp(Adam/m/dense_32/bias/Read/ReadVariableOp(Adam/v/dense_32/bias/Read/ReadVariableOp*Adam/m/dense_33/kernel/Read/ReadVariableOp*Adam/v/dense_33/kernel/Read/ReadVariableOp(Adam/m/dense_33/bias/Read/ReadVariableOp(Adam/v/dense_33/bias/Read/ReadVariableOp*Adam/m/dense_34/kernel/Read/ReadVariableOp*Adam/v/dense_34/kernel/Read/ReadVariableOp(Adam/m/dense_34/bias/Read/ReadVariableOp(Adam/v/dense_34/bias/Read/ReadVariableOp*Adam/m/dense_35/kernel/Read/ReadVariableOp*Adam/v/dense_35/kernel/Read/ReadVariableOp(Adam/m/dense_35/bias/Read/ReadVariableOp(Adam/v/dense_35/bias/Read/ReadVariableOp5Adam/m/conv2d_transpose_15/kernel/Read/ReadVariableOp5Adam/v/conv2d_transpose_15/kernel/Read/ReadVariableOp3Adam/m/conv2d_transpose_15/bias/Read/ReadVariableOp3Adam/v/conv2d_transpose_15/bias/Read/ReadVariableOp5Adam/m/conv2d_transpose_16/kernel/Read/ReadVariableOp5Adam/v/conv2d_transpose_16/kernel/Read/ReadVariableOp3Adam/m/conv2d_transpose_16/bias/Read/ReadVariableOp3Adam/v/conv2d_transpose_16/bias/Read/ReadVariableOp+Adam/m/conv2d_12/kernel/Read/ReadVariableOp+Adam/v/conv2d_12/kernel/Read/ReadVariableOp)Adam/m/conv2d_12/bias/Read/ReadVariableOp)Adam/v/conv2d_12/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*S
TinL
J2H	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_192767
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasconv2d_transpose_15/kernelconv2d_transpose_15/biasconv2d_transpose_16/kernelconv2d_transpose_16/biasconv2d_12/kernelconv2d_12/bias	iterationlearning_rateAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biasAdam/m/dense_31/kernelAdam/v/dense_31/kernelAdam/m/dense_31/biasAdam/v/dense_31/biasAdam/m/dense_32/kernelAdam/v/dense_32/kernelAdam/m/dense_32/biasAdam/v/dense_32/biasAdam/m/dense_33/kernelAdam/v/dense_33/kernelAdam/m/dense_33/biasAdam/v/dense_33/biasAdam/m/dense_34/kernelAdam/v/dense_34/kernelAdam/m/dense_34/biasAdam/v/dense_34/biasAdam/m/dense_35/kernelAdam/v/dense_35/kernelAdam/m/dense_35/biasAdam/v/dense_35/bias!Adam/m/conv2d_transpose_15/kernel!Adam/v/conv2d_transpose_15/kernelAdam/m/conv2d_transpose_15/biasAdam/v/conv2d_transpose_15/bias!Adam/m/conv2d_transpose_16/kernel!Adam/v/conv2d_transpose_16/kernelAdam/m/conv2d_transpose_16/biasAdam/v/conv2d_transpose_16/biasAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biastotalcount*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_192987��
�
�
)__inference_dense_30_layer_call_fn_191669

inputs
unknown:
�	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_190366p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
.__inference_sequential_11_layer_call_fn_190229
dense_33_input
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190173�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:��������� 
(
_user_specified_namedense_33_input
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_191660

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_191707

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�|
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_192080

inputs9
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0{
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_22/dropout/MulMuldense_33/Relu:activations:0!dropout_22/dropout/Const:output:0*
T0*'
_output_shapes
:���������@c
dropout_22/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_22/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_22/dropout/SelectV2SelectV2#dropout_22/dropout/GreaterEqual:z:0dropout_22/dropout/Mul:z:0#dropout_22/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMul$dropout_22/dropout/SelectV2:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_23/dropout/MulMuldense_34/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_23/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_23/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_23/dropout/SelectV2SelectV2#dropout_23/dropout/GreaterEqual:z:0dropout_23/dropout/Mul:z:0#dropout_23/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMul$dropout_23/dropout/SelectV2:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�l
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_191978

inputs9
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0{
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@n
dropout_22/IdentityIdentitydense_33/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMuldropout_22/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_23/IdentityIdentitydense_34/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMuldropout_23/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
.__inference_sequential_11_layer_call_fn_191890
inputs_0
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190714w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs_0
�4
�	
C__inference_model_3_layer_call_and_return_conditional_losses_190952

inputs*
conv2d_10_190897:
conv2d_10_190899:*
conv2d_11_190903:
conv2d_11_190905:#
dense_30_190909:
�	�
dense_30_190911:	�"
dense_31_190915:	�@
dense_31_190917:@!
dense_32_190921:@ 
dense_32_190923: &
sequential_11_190926: @"
sequential_11_190928:@'
sequential_11_190930:	@�#
sequential_11_190932:	�(
sequential_11_190934:
��
#
sequential_11_190936:	�
.
sequential_11_190938:"
sequential_11_190940:.
sequential_11_190942:"
sequential_11_190944:.
sequential_11_190946:"
sequential_11_190948:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall� dense_32/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�"dropout_21/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_190897conv2d_10_190899*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_11_190903conv2d_11_190905*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341�
flatten_5/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_30_190909dense_30_190911*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_190366�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190804�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_31_190915dense_31_190917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_190390�
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190771�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_32_190921dense_32_190923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_190414�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0sequential_11_190926sequential_11_190928sequential_11_190930sequential_11_190932sequential_11_190934sequential_11_190936sequential_11_190938sequential_11_190940sequential_11_190942sequential_11_190944sequential_11_190946sequential_11_190948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190714�
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_190091

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_11_layer_call_fn_191638

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�|
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_190714

inputs9
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0{
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_22/dropout/MulMuldense_33/Relu:activations:0!dropout_22/dropout/Const:output:0*
T0*'
_output_shapes
:���������@c
dropout_22/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_22/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_22/dropout/SelectV2SelectV2#dropout_22/dropout/GreaterEqual:z:0dropout_22/dropout/Mul:z:0#dropout_22/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMul$dropout_22/dropout/SelectV2:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_23/dropout/MulMuldense_34/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_23/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_23/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_23/dropout/SelectV2SelectV2#dropout_23/dropout/GreaterEqual:z:0dropout_23/dropout/Mul:z:0#dropout_23/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMul$dropout_23/dropout/SelectV2:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
D__inference_dense_32_layer_call_and_return_conditional_losses_190414

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
__inference__traced_save_192767
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop9
5savev2_conv2d_transpose_15_kernel_read_readvariableop7
3savev2_conv2d_transpose_15_bias_read_readvariableop9
5savev2_conv2d_transpose_16_kernel_read_readvariableop7
3savev2_conv2d_transpose_16_bias_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop6
2savev2_adam_m_conv2d_10_kernel_read_readvariableop6
2savev2_adam_v_conv2d_10_kernel_read_readvariableop4
0savev2_adam_m_conv2d_10_bias_read_readvariableop4
0savev2_adam_v_conv2d_10_bias_read_readvariableop6
2savev2_adam_m_conv2d_11_kernel_read_readvariableop6
2savev2_adam_v_conv2d_11_kernel_read_readvariableop4
0savev2_adam_m_conv2d_11_bias_read_readvariableop4
0savev2_adam_v_conv2d_11_bias_read_readvariableop5
1savev2_adam_m_dense_30_kernel_read_readvariableop5
1savev2_adam_v_dense_30_kernel_read_readvariableop3
/savev2_adam_m_dense_30_bias_read_readvariableop3
/savev2_adam_v_dense_30_bias_read_readvariableop5
1savev2_adam_m_dense_31_kernel_read_readvariableop5
1savev2_adam_v_dense_31_kernel_read_readvariableop3
/savev2_adam_m_dense_31_bias_read_readvariableop3
/savev2_adam_v_dense_31_bias_read_readvariableop5
1savev2_adam_m_dense_32_kernel_read_readvariableop5
1savev2_adam_v_dense_32_kernel_read_readvariableop3
/savev2_adam_m_dense_32_bias_read_readvariableop3
/savev2_adam_v_dense_32_bias_read_readvariableop5
1savev2_adam_m_dense_33_kernel_read_readvariableop5
1savev2_adam_v_dense_33_kernel_read_readvariableop3
/savev2_adam_m_dense_33_bias_read_readvariableop3
/savev2_adam_v_dense_33_bias_read_readvariableop5
1savev2_adam_m_dense_34_kernel_read_readvariableop5
1savev2_adam_v_dense_34_kernel_read_readvariableop3
/savev2_adam_m_dense_34_bias_read_readvariableop3
/savev2_adam_v_dense_34_bias_read_readvariableop5
1savev2_adam_m_dense_35_kernel_read_readvariableop5
1savev2_adam_v_dense_35_kernel_read_readvariableop3
/savev2_adam_m_dense_35_bias_read_readvariableop3
/savev2_adam_v_dense_35_bias_read_readvariableop@
<savev2_adam_m_conv2d_transpose_15_kernel_read_readvariableop@
<savev2_adam_v_conv2d_transpose_15_kernel_read_readvariableop>
:savev2_adam_m_conv2d_transpose_15_bias_read_readvariableop>
:savev2_adam_v_conv2d_transpose_15_bias_read_readvariableop@
<savev2_adam_m_conv2d_transpose_16_kernel_read_readvariableop@
<savev2_adam_v_conv2d_transpose_16_kernel_read_readvariableop>
:savev2_adam_m_conv2d_transpose_16_bias_read_readvariableop>
:savev2_adam_v_conv2d_transpose_16_bias_read_readvariableop6
2savev2_adam_m_conv2d_12_kernel_read_readvariableop6
2savev2_adam_v_conv2d_12_kernel_read_readvariableop4
0savev2_adam_m_conv2d_12_bias_read_readvariableop4
0savev2_adam_v_conv2d_12_bias_read_readvariableop$
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop5savev2_conv2d_transpose_15_kernel_read_readvariableop3savev2_conv2d_transpose_15_bias_read_readvariableop5savev2_conv2d_transpose_16_kernel_read_readvariableop3savev2_conv2d_transpose_16_bias_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop2savev2_adam_m_conv2d_10_kernel_read_readvariableop2savev2_adam_v_conv2d_10_kernel_read_readvariableop0savev2_adam_m_conv2d_10_bias_read_readvariableop0savev2_adam_v_conv2d_10_bias_read_readvariableop2savev2_adam_m_conv2d_11_kernel_read_readvariableop2savev2_adam_v_conv2d_11_kernel_read_readvariableop0savev2_adam_m_conv2d_11_bias_read_readvariableop0savev2_adam_v_conv2d_11_bias_read_readvariableop1savev2_adam_m_dense_30_kernel_read_readvariableop1savev2_adam_v_dense_30_kernel_read_readvariableop/savev2_adam_m_dense_30_bias_read_readvariableop/savev2_adam_v_dense_30_bias_read_readvariableop1savev2_adam_m_dense_31_kernel_read_readvariableop1savev2_adam_v_dense_31_kernel_read_readvariableop/savev2_adam_m_dense_31_bias_read_readvariableop/savev2_adam_v_dense_31_bias_read_readvariableop1savev2_adam_m_dense_32_kernel_read_readvariableop1savev2_adam_v_dense_32_kernel_read_readvariableop/savev2_adam_m_dense_32_bias_read_readvariableop/savev2_adam_v_dense_32_bias_read_readvariableop1savev2_adam_m_dense_33_kernel_read_readvariableop1savev2_adam_v_dense_33_kernel_read_readvariableop/savev2_adam_m_dense_33_bias_read_readvariableop/savev2_adam_v_dense_33_bias_read_readvariableop1savev2_adam_m_dense_34_kernel_read_readvariableop1savev2_adam_v_dense_34_kernel_read_readvariableop/savev2_adam_m_dense_34_bias_read_readvariableop/savev2_adam_v_dense_34_bias_read_readvariableop1savev2_adam_m_dense_35_kernel_read_readvariableop1savev2_adam_v_dense_35_kernel_read_readvariableop/savev2_adam_m_dense_35_bias_read_readvariableop/savev2_adam_v_dense_35_bias_read_readvariableop<savev2_adam_m_conv2d_transpose_15_kernel_read_readvariableop<savev2_adam_v_conv2d_transpose_15_kernel_read_readvariableop:savev2_adam_m_conv2d_transpose_15_bias_read_readvariableop:savev2_adam_v_conv2d_transpose_15_bias_read_readvariableop<savev2_adam_m_conv2d_transpose_16_kernel_read_readvariableop<savev2_adam_v_conv2d_transpose_16_kernel_read_readvariableop:savev2_adam_m_conv2d_transpose_16_bias_read_readvariableop:savev2_adam_v_conv2d_transpose_16_bias_read_readvariableop2savev2_adam_m_conv2d_12_kernel_read_readvariableop2savev2_adam_v_conv2d_12_kernel_read_readvariableop0savev2_adam_m_conv2d_12_bias_read_readvariableop0savev2_adam_v_conv2d_12_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *U
dtypesK
I2G	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::
�	�:�:	�@:@:@ : : @:@:	@�:�:
��
:�
::::::: : :::::::::
�	�:
�	�:�:�:	�@:	�@:@:@:@ :@ : : : @: @:@:@:	@�:	@�:�:�:
��
:
��
:�
:�
::::::::::::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$	 

_output_shapes

:@ : 


_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��
:!

_output_shapes	
:�
:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::  

_output_shapes
::&!"
 
_output_shapes
:
�	�:&""
 
_output_shapes
:
�	�:!#

_output_shapes	
:�:!$

_output_shapes	
:�:%%!

_output_shapes
:	�@:%&!

_output_shapes
:	�@: '

_output_shapes
:@: (

_output_shapes
:@:$) 

_output_shapes

:@ :$* 

_output_shapes

:@ : +

_output_shapes
: : ,

_output_shapes
: :$- 

_output_shapes

: @:$. 

_output_shapes

: @: /

_output_shapes
:@: 0

_output_shapes
:@:%1!

_output_shapes
:	@�:%2!

_output_shapes
:	@�:!3

_output_shapes	
:�:!4

_output_shapes	
:�:&5"
 
_output_shapes
:
��
:&6"
 
_output_shapes
:
��
:!7

_output_shapes	
:�
:!8

_output_shapes	
:�
:,9(
&
_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
:: <

_output_shapes
::,=(
&
_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
:: @

_output_shapes
::,A(
&
_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
:: D

_output_shapes
::E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: 
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_191629

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
F
*__inference_flatten_5_layer_call_fn_191654

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_34_layer_call_and_return_conditional_losses_189910

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�m
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_192168
inputs_09
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0}
dense_33/MatMulMatMulinputs_0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@n
dropout_22/IdentityIdentitydense_33/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMuldropout_22/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_23/IdentityIdentitydense_34/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMuldropout_23/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs_0
�#
�
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_192514

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_35_layer_call_fn_192373

inputs
unknown:
��

	unknown_0:	�

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_189934p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_191217
conv2d_10_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
�	�
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��


unknown_14:	�
$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_189739w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�

�
D__inference_dense_31_layer_call_and_return_conditional_losses_190390

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_189897

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
.__inference_sequential_11_layer_call_fn_190012
dense_33_input
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_189985�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:��������� 
(
_user_specified_namedense_33_input
�
L
0__inference_up_sampling2d_9_layer_call_fn_192455

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816�
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
�
.__inference_sequential_11_layer_call_fn_191861
inputs_0
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190507w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs_0
�
�
.__inference_sequential_11_layer_call_fn_191832

inputs
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190173�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�.
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_189985

inputs!
dense_33_189887: @
dense_33_189889:@"
dense_34_189911:	@�
dense_34_189913:	�#
dense_35_189935:
��

dense_35_189937:	�
4
conv2d_transpose_15_189956:(
conv2d_transpose_15_189958:4
conv2d_transpose_16_189962:(
conv2d_transpose_16_189964:*
conv2d_12_189979:
conv2d_12_189981:
identity��!conv2d_12/StatefulPartitionedCall�+conv2d_transpose_15/StatefulPartitionedCall�+conv2d_transpose_16/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinputsdense_33_189887dense_33_189889*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_189886�
dropout_22/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_189897�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_34_189911dense_34_189913*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_189910�
dropout_23/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_189921�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_35_189935dense_35_189937*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_189934�
reshape_5/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954�
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_5/PartitionedCall:output:0conv2d_transpose_15_189956conv2d_transpose_15_189958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793�
up_sampling2d_9/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816�
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_9/PartitionedCall:output:0conv2d_transpose_16_189962conv2d_transpose_16_189964*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0conv2d_12_189979conv2d_12_189981*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978�
IdentityIdentity*conv2d_12/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_190804

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_190771

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_192364

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_3_layer_call_fn_191266

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
�	�
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��


unknown_14:	�
$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_190534w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_3_layer_call_fn_191048
conv2d_10_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
�	�
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��


unknown_14:	�
$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_190952w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�
a
E__inference_reshape_5_layer_call_and_return_conditional_losses_192403

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������
:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�

�
D__inference_dense_32_layer_call_and_return_conditional_losses_191774

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_20_layer_call_fn_191685

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190377a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_33_layer_call_fn_192279

inputs
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_189886o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�|
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_192270
inputs_09
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0}
dense_33/MatMulMatMulinputs_0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_22/dropout/MulMuldense_33/Relu:activations:0!dropout_22/dropout/Const:output:0*
T0*'
_output_shapes
:���������@c
dropout_22/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_22/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_22/dropout/SelectV2SelectV2#dropout_22/dropout/GreaterEqual:z:0dropout_22/dropout/Mul:z:0#dropout_22/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMul$dropout_22/dropout/SelectV2:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_23/dropout/MulMuldense_34/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_23/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_23/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_23/dropout/SelectV2SelectV2#dropout_23/dropout/GreaterEqual:z:0dropout_23/dropout/Mul:z:0#dropout_23/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMul$dropout_23/dropout/SelectV2:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs_0
�
d
+__inference_dropout_22_layer_call_fn_192300

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_190091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_189739
conv2d_10_inputJ
0model_3_conv2d_10_conv2d_readvariableop_resource:?
1model_3_conv2d_10_biasadd_readvariableop_resource:J
0model_3_conv2d_11_conv2d_readvariableop_resource:?
1model_3_conv2d_11_biasadd_readvariableop_resource:C
/model_3_dense_30_matmul_readvariableop_resource:
�	�?
0model_3_dense_30_biasadd_readvariableop_resource:	�B
/model_3_dense_31_matmul_readvariableop_resource:	�@>
0model_3_dense_31_biasadd_readvariableop_resource:@A
/model_3_dense_32_matmul_readvariableop_resource:@ >
0model_3_dense_32_biasadd_readvariableop_resource: O
=model_3_sequential_11_dense_33_matmul_readvariableop_resource: @L
>model_3_sequential_11_dense_33_biasadd_readvariableop_resource:@P
=model_3_sequential_11_dense_34_matmul_readvariableop_resource:	@�M
>model_3_sequential_11_dense_34_biasadd_readvariableop_resource:	�Q
=model_3_sequential_11_dense_35_matmul_readvariableop_resource:
��
M
>model_3_sequential_11_dense_35_biasadd_readvariableop_resource:	�
l
Rmodel_3_sequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource:W
Imodel_3_sequential_11_conv2d_transpose_15_biasadd_readvariableop_resource:l
Rmodel_3_sequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource:W
Imodel_3_sequential_11_conv2d_transpose_16_biasadd_readvariableop_resource:X
>model_3_sequential_11_conv2d_12_conv2d_readvariableop_resource:M
?model_3_sequential_11_conv2d_12_biasadd_readvariableop_resource:
identity��(model_3/conv2d_10/BiasAdd/ReadVariableOp�'model_3/conv2d_10/Conv2D/ReadVariableOp�(model_3/conv2d_11/BiasAdd/ReadVariableOp�'model_3/conv2d_11/Conv2D/ReadVariableOp�'model_3/dense_30/BiasAdd/ReadVariableOp�&model_3/dense_30/MatMul/ReadVariableOp�'model_3/dense_31/BiasAdd/ReadVariableOp�&model_3/dense_31/MatMul/ReadVariableOp�'model_3/dense_32/BiasAdd/ReadVariableOp�&model_3/dense_32/MatMul/ReadVariableOp�6model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOp�5model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOp�@model_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp�Imodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp�@model_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp�Imodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp�5model_3/sequential_11/dense_33/BiasAdd/ReadVariableOp�4model_3/sequential_11/dense_33/MatMul/ReadVariableOp�5model_3/sequential_11/dense_34/BiasAdd/ReadVariableOp�4model_3/sequential_11/dense_34/MatMul/ReadVariableOp�5model_3/sequential_11/dense_35/BiasAdd/ReadVariableOp�4model_3/sequential_11/dense_35/MatMul/ReadVariableOp�
'model_3/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_3/conv2d_10/Conv2DConv2Dconv2d_10_input/model_3/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
(model_3/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/conv2d_10/BiasAddBiasAdd!model_3/conv2d_10/Conv2D:output:00model_3/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������|
model_3/conv2d_10/ReluRelu"model_3/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:����������
model_3/max_pooling2d_5/MaxPoolMaxPool$model_3/conv2d_10/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
'model_3/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_3/conv2d_11/Conv2DConv2D(model_3/max_pooling2d_5/MaxPool:output:0/model_3/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
(model_3/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/conv2d_11/BiasAddBiasAdd!model_3/conv2d_11/Conv2D:output:00model_3/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������|
model_3/conv2d_11/ReluRelu"model_3/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������h
model_3/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
model_3/flatten_5/ReshapeReshape$model_3/conv2d_11/Relu:activations:0 model_3/flatten_5/Const:output:0*
T0*(
_output_shapes
:����������	�
&model_3/dense_30/MatMul/ReadVariableOpReadVariableOp/model_3_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
model_3/dense_30/MatMulMatMul"model_3/flatten_5/Reshape:output:0.model_3/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_3/dense_30/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_3/dense_30/BiasAddBiasAdd!model_3/dense_30/MatMul:product:0/model_3/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
model_3/dense_30/ReluRelu!model_3/dense_30/BiasAdd:output:0*
T0*(
_output_shapes
:����������
model_3/dropout_20/IdentityIdentity#model_3/dense_30/Relu:activations:0*
T0*(
_output_shapes
:�����������
&model_3/dense_31/MatMul/ReadVariableOpReadVariableOp/model_3_dense_31_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_3/dense_31/MatMulMatMul$model_3/dropout_20/Identity:output:0.model_3/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_31/BiasAddBiasAdd!model_3/dense_31/MatMul:product:0/model_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
model_3/dense_31/ReluRelu!model_3/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:���������@~
model_3/dropout_21/IdentityIdentity#model_3/dense_31/Relu:activations:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_32/MatMul/ReadVariableOpReadVariableOp/model_3_dense_32_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_32/MatMulMatMul$model_3/dropout_21/Identity:output:0.model_3/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_32/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_32_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_32/BiasAddBiasAdd!model_3/dense_32/MatMul:product:0/model_3/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_32/ReluRelu!model_3/dense_32/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
4model_3/sequential_11/dense_33/MatMul/ReadVariableOpReadVariableOp=model_3_sequential_11_dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
%model_3/sequential_11/dense_33/MatMulMatMul#model_3/dense_32/Relu:activations:0<model_3/sequential_11/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
5model_3/sequential_11/dense_33/BiasAdd/ReadVariableOpReadVariableOp>model_3_sequential_11_dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
&model_3/sequential_11/dense_33/BiasAddBiasAdd/model_3/sequential_11/dense_33/MatMul:product:0=model_3/sequential_11/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
#model_3/sequential_11/dense_33/ReluRelu/model_3/sequential_11/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
)model_3/sequential_11/dropout_22/IdentityIdentity1model_3/sequential_11/dense_33/Relu:activations:0*
T0*'
_output_shapes
:���������@�
4model_3/sequential_11/dense_34/MatMul/ReadVariableOpReadVariableOp=model_3_sequential_11_dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
%model_3/sequential_11/dense_34/MatMulMatMul2model_3/sequential_11/dropout_22/Identity:output:0<model_3/sequential_11/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5model_3/sequential_11/dense_34/BiasAdd/ReadVariableOpReadVariableOp>model_3_sequential_11_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model_3/sequential_11/dense_34/BiasAddBiasAdd/model_3/sequential_11/dense_34/MatMul:product:0=model_3/sequential_11/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#model_3/sequential_11/dense_34/ReluRelu/model_3/sequential_11/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)model_3/sequential_11/dropout_23/IdentityIdentity1model_3/sequential_11/dense_34/Relu:activations:0*
T0*(
_output_shapes
:�����������
4model_3/sequential_11/dense_35/MatMul/ReadVariableOpReadVariableOp=model_3_sequential_11_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
%model_3/sequential_11/dense_35/MatMulMatMul2model_3/sequential_11/dropout_23/Identity:output:0<model_3/sequential_11/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
5model_3/sequential_11/dense_35/BiasAdd/ReadVariableOpReadVariableOp>model_3_sequential_11_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
&model_3/sequential_11/dense_35/BiasAddBiasAdd/model_3/sequential_11/dense_35/MatMul:product:0=model_3/sequential_11/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
#model_3/sequential_11/dense_35/ReluRelu/model_3/sequential_11/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
�
%model_3/sequential_11/reshape_5/ShapeShape1model_3/sequential_11/dense_35/Relu:activations:0*
T0*
_output_shapes
:}
3model_3/sequential_11/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5model_3/sequential_11/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_3/sequential_11/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-model_3/sequential_11/reshape_5/strided_sliceStridedSlice.model_3/sequential_11/reshape_5/Shape:output:0<model_3/sequential_11/reshape_5/strided_slice/stack:output:0>model_3/sequential_11/reshape_5/strided_slice/stack_1:output:0>model_3/sequential_11/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/model_3/sequential_11/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/model_3/sequential_11/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :q
/model_3/sequential_11/reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
-model_3/sequential_11/reshape_5/Reshape/shapePack6model_3/sequential_11/reshape_5/strided_slice:output:08model_3/sequential_11/reshape_5/Reshape/shape/1:output:08model_3/sequential_11/reshape_5/Reshape/shape/2:output:08model_3/sequential_11/reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
'model_3/sequential_11/reshape_5/ReshapeReshape1model_3/sequential_11/dense_35/Relu:activations:06model_3/sequential_11/reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
/model_3/sequential_11/conv2d_transpose_15/ShapeShape0model_3/sequential_11/reshape_5/Reshape:output:0*
T0*
_output_shapes
:�
=model_3/sequential_11/conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?model_3/sequential_11/conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?model_3/sequential_11/conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7model_3/sequential_11/conv2d_transpose_15/strided_sliceStridedSlice8model_3/sequential_11/conv2d_transpose_15/Shape:output:0Fmodel_3/sequential_11/conv2d_transpose_15/strided_slice/stack:output:0Hmodel_3/sequential_11/conv2d_transpose_15/strided_slice/stack_1:output:0Hmodel_3/sequential_11/conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1model_3/sequential_11/conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :s
1model_3/sequential_11/conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :s
1model_3/sequential_11/conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
/model_3/sequential_11/conv2d_transpose_15/stackPack@model_3/sequential_11/conv2d_transpose_15/strided_slice:output:0:model_3/sequential_11/conv2d_transpose_15/stack/1:output:0:model_3/sequential_11/conv2d_transpose_15/stack/2:output:0:model_3/sequential_11/conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:�
?model_3/sequential_11/conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Amodel_3/sequential_11/conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel_3/sequential_11/conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9model_3/sequential_11/conv2d_transpose_15/strided_slice_1StridedSlice8model_3/sequential_11/conv2d_transpose_15/stack:output:0Hmodel_3/sequential_11/conv2d_transpose_15/strided_slice_1/stack:output:0Jmodel_3/sequential_11/conv2d_transpose_15/strided_slice_1/stack_1:output:0Jmodel_3/sequential_11/conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Imodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOpRmodel_3_sequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
:model_3/sequential_11/conv2d_transpose_15/conv2d_transposeConv2DBackpropInput8model_3/sequential_11/conv2d_transpose_15/stack:output:0Qmodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:00model_3/sequential_11/reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
@model_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOpImodel_3_sequential_11_conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
1model_3/sequential_11/conv2d_transpose_15/BiasAddBiasAddCmodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose:output:0Hmodel_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
.model_3/sequential_11/conv2d_transpose_15/ReluRelu:model_3/sequential_11/conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������|
+model_3/sequential_11/up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
-model_3/sequential_11/up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
)model_3/sequential_11/up_sampling2d_9/mulMul4model_3/sequential_11/up_sampling2d_9/Const:output:06model_3/sequential_11/up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
Bmodel_3/sequential_11/up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor<model_3/sequential_11/conv2d_transpose_15/Relu:activations:0-model_3/sequential_11/up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
/model_3/sequential_11/conv2d_transpose_16/ShapeShapeSmodel_3/sequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:�
=model_3/sequential_11/conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?model_3/sequential_11/conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?model_3/sequential_11/conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7model_3/sequential_11/conv2d_transpose_16/strided_sliceStridedSlice8model_3/sequential_11/conv2d_transpose_16/Shape:output:0Fmodel_3/sequential_11/conv2d_transpose_16/strided_slice/stack:output:0Hmodel_3/sequential_11/conv2d_transpose_16/strided_slice/stack_1:output:0Hmodel_3/sequential_11/conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1model_3/sequential_11/conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :s
1model_3/sequential_11/conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :s
1model_3/sequential_11/conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
/model_3/sequential_11/conv2d_transpose_16/stackPack@model_3/sequential_11/conv2d_transpose_16/strided_slice:output:0:model_3/sequential_11/conv2d_transpose_16/stack/1:output:0:model_3/sequential_11/conv2d_transpose_16/stack/2:output:0:model_3/sequential_11/conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:�
?model_3/sequential_11/conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Amodel_3/sequential_11/conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel_3/sequential_11/conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9model_3/sequential_11/conv2d_transpose_16/strided_slice_1StridedSlice8model_3/sequential_11/conv2d_transpose_16/stack:output:0Hmodel_3/sequential_11/conv2d_transpose_16/strided_slice_1/stack:output:0Jmodel_3/sequential_11/conv2d_transpose_16/strided_slice_1/stack_1:output:0Jmodel_3/sequential_11/conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Imodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOpRmodel_3_sequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
:model_3/sequential_11/conv2d_transpose_16/conv2d_transposeConv2DBackpropInput8model_3/sequential_11/conv2d_transpose_16/stack:output:0Qmodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0Smodel_3/sequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
@model_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOpImodel_3_sequential_11_conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
1model_3/sequential_11/conv2d_transpose_16/BiasAddBiasAddCmodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose:output:0Hmodel_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
.model_3/sequential_11/conv2d_transpose_16/ReluRelu:model_3/sequential_11/conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
5model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp>model_3_sequential_11_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&model_3/sequential_11/conv2d_12/Conv2DConv2D<model_3/sequential_11/conv2d_transpose_16/Relu:activations:0=model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
6model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp?model_3_sequential_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_3/sequential_11/conv2d_12/BiasAddBiasAdd/model_3/sequential_11/conv2d_12/Conv2D:output:0>model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
'model_3/sequential_11/conv2d_12/SigmoidSigmoid0model_3/sequential_11/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:����������
IdentityIdentity+model_3/sequential_11/conv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������	
NoOpNoOp)^model_3/conv2d_10/BiasAdd/ReadVariableOp(^model_3/conv2d_10/Conv2D/ReadVariableOp)^model_3/conv2d_11/BiasAdd/ReadVariableOp(^model_3/conv2d_11/Conv2D/ReadVariableOp(^model_3/dense_30/BiasAdd/ReadVariableOp'^model_3/dense_30/MatMul/ReadVariableOp(^model_3/dense_31/BiasAdd/ReadVariableOp'^model_3/dense_31/MatMul/ReadVariableOp(^model_3/dense_32/BiasAdd/ReadVariableOp'^model_3/dense_32/MatMul/ReadVariableOp7^model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOp6^model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOpA^model_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpJ^model_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpA^model_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpJ^model_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp6^model_3/sequential_11/dense_33/BiasAdd/ReadVariableOp5^model_3/sequential_11/dense_33/MatMul/ReadVariableOp6^model_3/sequential_11/dense_34/BiasAdd/ReadVariableOp5^model_3/sequential_11/dense_34/MatMul/ReadVariableOp6^model_3/sequential_11/dense_35/BiasAdd/ReadVariableOp5^model_3/sequential_11/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2T
(model_3/conv2d_10/BiasAdd/ReadVariableOp(model_3/conv2d_10/BiasAdd/ReadVariableOp2R
'model_3/conv2d_10/Conv2D/ReadVariableOp'model_3/conv2d_10/Conv2D/ReadVariableOp2T
(model_3/conv2d_11/BiasAdd/ReadVariableOp(model_3/conv2d_11/BiasAdd/ReadVariableOp2R
'model_3/conv2d_11/Conv2D/ReadVariableOp'model_3/conv2d_11/Conv2D/ReadVariableOp2R
'model_3/dense_30/BiasAdd/ReadVariableOp'model_3/dense_30/BiasAdd/ReadVariableOp2P
&model_3/dense_30/MatMul/ReadVariableOp&model_3/dense_30/MatMul/ReadVariableOp2R
'model_3/dense_31/BiasAdd/ReadVariableOp'model_3/dense_31/BiasAdd/ReadVariableOp2P
&model_3/dense_31/MatMul/ReadVariableOp&model_3/dense_31/MatMul/ReadVariableOp2R
'model_3/dense_32/BiasAdd/ReadVariableOp'model_3/dense_32/BiasAdd/ReadVariableOp2P
&model_3/dense_32/MatMul/ReadVariableOp&model_3/dense_32/MatMul/ReadVariableOp2p
6model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOp6model_3/sequential_11/conv2d_12/BiasAdd/ReadVariableOp2n
5model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOp5model_3/sequential_11/conv2d_12/Conv2D/ReadVariableOp2�
@model_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp@model_3/sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp2�
Imodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpImodel_3/sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp2�
@model_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp@model_3/sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp2�
Imodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpImodel_3/sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp2n
5model_3/sequential_11/dense_33/BiasAdd/ReadVariableOp5model_3/sequential_11/dense_33/BiasAdd/ReadVariableOp2l
4model_3/sequential_11/dense_33/MatMul/ReadVariableOp4model_3/sequential_11/dense_33/MatMul/ReadVariableOp2n
5model_3/sequential_11/dense_34/BiasAdd/ReadVariableOp5model_3/sequential_11/dense_34/BiasAdd/ReadVariableOp2l
4model_3/sequential_11/dense_34/MatMul/ReadVariableOp4model_3/sequential_11/dense_34/MatMul/ReadVariableOp2n
5model_3/sequential_11/dense_35/BiasAdd/ReadVariableOp5model_3/sequential_11/dense_35/BiasAdd/ReadVariableOp2l
4model_3/sequential_11/dense_35/MatMul/ReadVariableOp4model_3/sequential_11/dense_35/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�

�
D__inference_dense_33_layer_call_and_return_conditional_losses_189886

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�l
�

I__inference_sequential_11_layer_call_and_return_conditional_losses_190507

inputs9
'dense_33_matmul_readvariableop_resource: @6
(dense_33_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	@�7
(dense_34_biasadd_readvariableop_resource:	�;
'dense_35_matmul_readvariableop_resource:
��
7
(dense_35_biasadd_readvariableop_resource:	�
V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_15_biasadd_readvariableop_resource:V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_16_biasadd_readvariableop_resource:B
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�*conv2d_transpose_15/BiasAdd/ReadVariableOp�3conv2d_transpose_15/conv2d_transpose/ReadVariableOp�*conv2d_transpose_16/BiasAdd/ReadVariableOp�3conv2d_transpose_16/conv2d_transpose/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOp�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0{
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@n
dropout_22/IdentityIdentitydense_33/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_34/MatMulMatMuldropout_22/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_23/IdentityIdentitydense_34/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_35/MatMulMatMuldropout_23/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
c
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
Z
reshape_5/ShapeShapedense_35/Relu:activations:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_5/ReshapeReshapedense_35/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������c
conv2d_transpose_15/ShapeShapereshape_5/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_15/BiasAddBiasAdd-conv2d_transpose_15/conv2d_transpose:output:02conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_15/ReluRelu$conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������f
up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_9/mulMulup_sampling2d_9/Const:output:0 up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
,up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor&conv2d_transpose_15/Relu:activations:0up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_transpose_16/ShapeShape=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2D&conv2d_transpose_16/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_12/SigmoidSigmoidconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp+^conv2d_transpose_15/BiasAdd/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2X
*conv2d_transpose_15/BiasAdd/ReadVariableOp*conv2d_transpose_15/BiasAdd/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
.__inference_sequential_11_layer_call_fn_191803

inputs
unknown: @
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��

	unknown_4:	�
#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_189985�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�1
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_190173

inputs!
dense_33_190138: @
dense_33_190140:@"
dense_34_190144:	@�
dense_34_190146:	�#
dense_35_190150:
��

dense_35_190152:	�
4
conv2d_transpose_15_190156:(
conv2d_transpose_15_190158:4
conv2d_transpose_16_190162:(
conv2d_transpose_16_190164:*
conv2d_12_190167:
conv2d_12_190169:
identity��!conv2d_12/StatefulPartitionedCall�+conv2d_transpose_15/StatefulPartitionedCall�+conv2d_transpose_16/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�"dropout_22/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinputsdense_33_190138dense_33_190140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_189886�
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_190091�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_34_190144dense_34_190146*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_189910�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_190058�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_35_190150dense_35_190152*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_189934�
reshape_5/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954�
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_5/PartitionedCall:output:0conv2d_transpose_15_190156conv2d_transpose_15_190158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793�
up_sampling2d_9/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816�
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_9/PartitionedCall:output:0conv2d_transpose_16_190162conv2d_transpose_16_190164*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0conv2d_12_190167conv2d_12_190169*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978�
IdentityIdentity*conv2d_12/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_191649

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
4__inference_conv2d_transpose_16_layer_call_fn_192476

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_10_layer_call_fn_191608

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_20_layer_call_fn_191690

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190804p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_192534

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_35_layer_call_and_return_conditional_losses_189934

inputs2
matmul_readvariableop_resource:
��
.
biasadd_readvariableop_resource:	�

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������
b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_191742

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�.
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_190267
dense_33_input!
dense_33_190232: @
dense_33_190234:@"
dense_34_190238:	@�
dense_34_190240:	�#
dense_35_190244:
��

dense_35_190246:	�
4
conv2d_transpose_15_190250:(
conv2d_transpose_15_190252:4
conv2d_transpose_16_190256:(
conv2d_transpose_16_190258:*
conv2d_12_190261:
conv2d_12_190263:
identity��!conv2d_12/StatefulPartitionedCall�+conv2d_transpose_15/StatefulPartitionedCall�+conv2d_transpose_16/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCalldense_33_inputdense_33_190232dense_33_190234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_189886�
dropout_22/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_189897�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_34_190238dense_34_190240*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_189910�
dropout_23/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_189921�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_35_190244dense_35_190246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_189934�
reshape_5/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954�
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_5/PartitionedCall:output:0conv2d_transpose_15_190250conv2d_transpose_15_190252*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793�
up_sampling2d_9/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816�
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_9/PartitionedCall:output:0conv2d_transpose_16_190256conv2d_transpose_16_190258*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0conv2d_12_190261conv2d_12_190263*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978�
IdentityIdentity*conv2d_12/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:W S
'
_output_shapes
:��������� 
(
_user_specified_namedense_33_input
�

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_192317

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_190401

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
ä
�-
"__inference__traced_restore_192987
file_prefix;
!assignvariableop_conv2d_10_kernel:/
!assignvariableop_1_conv2d_10_bias:=
#assignvariableop_2_conv2d_11_kernel:/
!assignvariableop_3_conv2d_11_bias:6
"assignvariableop_4_dense_30_kernel:
�	�/
 assignvariableop_5_dense_30_bias:	�5
"assignvariableop_6_dense_31_kernel:	�@.
 assignvariableop_7_dense_31_bias:@4
"assignvariableop_8_dense_32_kernel:@ .
 assignvariableop_9_dense_32_bias: 5
#assignvariableop_10_dense_33_kernel: @/
!assignvariableop_11_dense_33_bias:@6
#assignvariableop_12_dense_34_kernel:	@�0
!assignvariableop_13_dense_34_bias:	�7
#assignvariableop_14_dense_35_kernel:
��
0
!assignvariableop_15_dense_35_bias:	�
H
.assignvariableop_16_conv2d_transpose_15_kernel::
,assignvariableop_17_conv2d_transpose_15_bias:H
.assignvariableop_18_conv2d_transpose_16_kernel::
,assignvariableop_19_conv2d_transpose_16_bias:>
$assignvariableop_20_conv2d_12_kernel:0
"assignvariableop_21_conv2d_12_bias:'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: E
+assignvariableop_24_adam_m_conv2d_10_kernel:E
+assignvariableop_25_adam_v_conv2d_10_kernel:7
)assignvariableop_26_adam_m_conv2d_10_bias:7
)assignvariableop_27_adam_v_conv2d_10_bias:E
+assignvariableop_28_adam_m_conv2d_11_kernel:E
+assignvariableop_29_adam_v_conv2d_11_kernel:7
)assignvariableop_30_adam_m_conv2d_11_bias:7
)assignvariableop_31_adam_v_conv2d_11_bias:>
*assignvariableop_32_adam_m_dense_30_kernel:
�	�>
*assignvariableop_33_adam_v_dense_30_kernel:
�	�7
(assignvariableop_34_adam_m_dense_30_bias:	�7
(assignvariableop_35_adam_v_dense_30_bias:	�=
*assignvariableop_36_adam_m_dense_31_kernel:	�@=
*assignvariableop_37_adam_v_dense_31_kernel:	�@6
(assignvariableop_38_adam_m_dense_31_bias:@6
(assignvariableop_39_adam_v_dense_31_bias:@<
*assignvariableop_40_adam_m_dense_32_kernel:@ <
*assignvariableop_41_adam_v_dense_32_kernel:@ 6
(assignvariableop_42_adam_m_dense_32_bias: 6
(assignvariableop_43_adam_v_dense_32_bias: <
*assignvariableop_44_adam_m_dense_33_kernel: @<
*assignvariableop_45_adam_v_dense_33_kernel: @6
(assignvariableop_46_adam_m_dense_33_bias:@6
(assignvariableop_47_adam_v_dense_33_bias:@=
*assignvariableop_48_adam_m_dense_34_kernel:	@�=
*assignvariableop_49_adam_v_dense_34_kernel:	@�7
(assignvariableop_50_adam_m_dense_34_bias:	�7
(assignvariableop_51_adam_v_dense_34_bias:	�>
*assignvariableop_52_adam_m_dense_35_kernel:
��
>
*assignvariableop_53_adam_v_dense_35_kernel:
��
7
(assignvariableop_54_adam_m_dense_35_bias:	�
7
(assignvariableop_55_adam_v_dense_35_bias:	�
O
5assignvariableop_56_adam_m_conv2d_transpose_15_kernel:O
5assignvariableop_57_adam_v_conv2d_transpose_15_kernel:A
3assignvariableop_58_adam_m_conv2d_transpose_15_bias:A
3assignvariableop_59_adam_v_conv2d_transpose_15_bias:O
5assignvariableop_60_adam_m_conv2d_transpose_16_kernel:O
5assignvariableop_61_adam_v_conv2d_transpose_16_kernel:A
3assignvariableop_62_adam_m_conv2d_transpose_16_bias:A
3assignvariableop_63_adam_v_conv2d_transpose_16_bias:E
+assignvariableop_64_adam_m_conv2d_12_kernel:E
+assignvariableop_65_adam_v_conv2d_12_kernel:7
)assignvariableop_66_adam_m_conv2d_12_bias:7
)assignvariableop_67_adam_v_conv2d_12_bias:#
assignvariableop_68_total: #
assignvariableop_69_count: 
identity_71��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*U
dtypesK
I2G	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_11_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_11_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_30_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_30_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_31_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_31_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_32_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_32_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_33_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_33_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_34_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_34_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_35_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_35_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_conv2d_transpose_15_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_conv2d_transpose_15_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_conv2d_transpose_16_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_transpose_16_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_12_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv2d_12_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_10_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_10_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_10_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_10_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_11_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_11_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_11_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_11_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_dense_30_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_dense_30_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_dense_30_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_dense_30_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_dense_31_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_dense_31_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_dense_31_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_dense_31_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_m_dense_32_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_v_dense_32_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_dense_32_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_dense_32_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_m_dense_33_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_v_dense_33_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_m_dense_33_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_v_dense_33_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_m_dense_34_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_v_dense_34_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_m_dense_34_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_v_dense_34_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_m_dense_35_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_v_dense_35_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_m_dense_35_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_v_dense_35_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_conv2d_transpose_15_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_conv2d_transpose_15_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_m_conv2d_transpose_15_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_v_conv2d_transpose_15_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_m_conv2d_transpose_16_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_v_conv2d_transpose_16_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp3assignvariableop_62_adam_m_conv2d_transpose_16_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp3assignvariableop_63_adam_v_conv2d_transpose_16_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_m_conv2d_12_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_v_conv2d_12_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_m_conv2d_12_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_v_conv2d_12_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_totalIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_countIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_70Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_71IdentityIdentity_70:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_71Identity_71:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
d
+__inference_dropout_23_layer_call_fn_192347

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_190058p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
4__inference_conv2d_transpose_15_layer_call_fn_192412

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�1
�	
C__inference_model_3_layer_call_and_return_conditional_losses_190534

inputs*
conv2d_10_190324:
conv2d_10_190326:*
conv2d_11_190342:
conv2d_11_190344:#
dense_30_190367:
�	�
dense_30_190369:	�"
dense_31_190391:	�@
dense_31_190393:@!
dense_32_190415:@ 
dense_32_190417: &
sequential_11_190508: @"
sequential_11_190510:@'
sequential_11_190512:	@�#
sequential_11_190514:	�(
sequential_11_190516:
��
#
sequential_11_190518:	�
.
sequential_11_190520:"
sequential_11_190522:.
sequential_11_190524:"
sequential_11_190526:.
sequential_11_190528:"
sequential_11_190530:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall� dense_32/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_190324conv2d_10_190326*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_11_190342conv2d_11_190344*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341�
flatten_5/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_30_190367dense_30_190369*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_190366�
dropout_20/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190377�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_31_190391dense_31_190393*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_190390�
dropout_21/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190401�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_32_190415dense_32_190417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_190414�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0sequential_11_190508sequential_11_190510sequential_11_190512sequential_11_190514sequential_11_190516sequential_11_190518sequential_11_190520sequential_11_190522sequential_11_190524sequential_11_190526sequential_11_190528sequential_11_190530*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190507�
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
�#
�
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_192450

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
(__inference_model_3_layer_call_fn_191315

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
�	�
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��


unknown_14:	�
$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_190952w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
C__inference_model_3_layer_call_and_return_conditional_losses_191599

inputsB
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:;
'dense_30_matmul_readvariableop_resource:
�	�7
(dense_30_biasadd_readvariableop_resource:	�:
'dense_31_matmul_readvariableop_resource:	�@6
(dense_31_biasadd_readvariableop_resource:@9
'dense_32_matmul_readvariableop_resource:@ 6
(dense_32_biasadd_readvariableop_resource: G
5sequential_11_dense_33_matmul_readvariableop_resource: @D
6sequential_11_dense_33_biasadd_readvariableop_resource:@H
5sequential_11_dense_34_matmul_readvariableop_resource:	@�E
6sequential_11_dense_34_biasadd_readvariableop_resource:	�I
5sequential_11_dense_35_matmul_readvariableop_resource:
��
E
6sequential_11_dense_35_biasadd_readvariableop_resource:	�
d
Jsequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource:O
Asequential_11_conv2d_transpose_15_biasadd_readvariableop_resource:d
Jsequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource:O
Asequential_11_conv2d_transpose_16_biasadd_readvariableop_resource:P
6sequential_11_conv2d_12_conv2d_readvariableop_resource:E
7sequential_11_conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�dense_30/BiasAdd/ReadVariableOp�dense_30/MatMul/ReadVariableOp�dense_31/BiasAdd/ReadVariableOp�dense_31/MatMul/ReadVariableOp�dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�.sequential_11/conv2d_12/BiasAdd/ReadVariableOp�-sequential_11/conv2d_12/Conv2D/ReadVariableOp�8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp�Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp�8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp�Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp�-sequential_11/dense_33/BiasAdd/ReadVariableOp�,sequential_11/dense_33/MatMul/ReadVariableOp�-sequential_11/dense_34/BiasAdd/ReadVariableOp�,sequential_11/dense_34/MatMul/ReadVariableOp�-sequential_11/dense_35/BiasAdd/ReadVariableOp�,sequential_11/dense_35/MatMul/ReadVariableOp�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_5/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_11/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_5/ReshapeReshapeconv2d_11/Relu:activations:0flatten_5/Const:output:0*
T0*(
_output_shapes
:����������	�
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense_30/MatMulMatMulflatten_5/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_20/dropout/MulMuldense_30/Relu:activations:0!dropout_20/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_20/dropout/ShapeShapedense_30/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_20/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_20/dropout/SelectV2SelectV2#dropout_20/dropout/GreaterEqual:z:0dropout_20/dropout/Mul:z:0#dropout_20/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_31/MatMulMatMul$dropout_20/dropout/SelectV2:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_21/dropout/MulMuldense_31/Relu:activations:0!dropout_21/dropout/Const:output:0*
T0*'
_output_shapes
:���������@c
dropout_21/dropout/ShapeShapedense_31/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_21/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_21/dropout/SelectV2SelectV2#dropout_21/dropout/GreaterEqual:z:0dropout_21/dropout/Mul:z:0#dropout_21/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_32/MatMulMatMul$dropout_21/dropout/SelectV2:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
,sequential_11/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
sequential_11/dense_33/MatMulMatMuldense_32/Relu:activations:04sequential_11/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-sequential_11/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_11/dense_33/BiasAddBiasAdd'sequential_11/dense_33/MatMul:product:05sequential_11/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
sequential_11/dense_33/ReluRelu'sequential_11/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@k
&sequential_11/dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
$sequential_11/dropout_22/dropout/MulMul)sequential_11/dense_33/Relu:activations:0/sequential_11/dropout_22/dropout/Const:output:0*
T0*'
_output_shapes
:���������@
&sequential_11/dropout_22/dropout/ShapeShape)sequential_11/dense_33/Relu:activations:0*
T0*
_output_shapes
:�
=sequential_11/dropout_22/dropout/random_uniform/RandomUniformRandomUniform/sequential_11/dropout_22/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0t
/sequential_11/dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
-sequential_11/dropout_22/dropout/GreaterEqualGreaterEqualFsequential_11/dropout_22/dropout/random_uniform/RandomUniform:output:08sequential_11/dropout_22/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@m
(sequential_11/dropout_22/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
)sequential_11/dropout_22/dropout/SelectV2SelectV21sequential_11/dropout_22/dropout/GreaterEqual:z:0(sequential_11/dropout_22/dropout/Mul:z:01sequential_11/dropout_22/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
,sequential_11/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
sequential_11/dense_34/MatMulMatMul2sequential_11/dropout_22/dropout/SelectV2:output:04sequential_11/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_11/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_11/dense_34/BiasAddBiasAdd'sequential_11/dense_34/MatMul:product:05sequential_11/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_11/dense_34/ReluRelu'sequential_11/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:����������k
&sequential_11/dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
$sequential_11/dropout_23/dropout/MulMul)sequential_11/dense_34/Relu:activations:0/sequential_11/dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:����������
&sequential_11/dropout_23/dropout/ShapeShape)sequential_11/dense_34/Relu:activations:0*
T0*
_output_shapes
:�
=sequential_11/dropout_23/dropout/random_uniform/RandomUniformRandomUniform/sequential_11/dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0t
/sequential_11/dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
-sequential_11/dropout_23/dropout/GreaterEqualGreaterEqualFsequential_11/dropout_23/dropout/random_uniform/RandomUniform:output:08sequential_11/dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������m
(sequential_11/dropout_23/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
)sequential_11/dropout_23/dropout/SelectV2SelectV21sequential_11/dropout_23/dropout/GreaterEqual:z:0(sequential_11/dropout_23/dropout/Mul:z:01sequential_11/dropout_23/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
,sequential_11/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
sequential_11/dense_35/MatMulMatMul2sequential_11/dropout_23/dropout/SelectV2:output:04sequential_11/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
-sequential_11/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
sequential_11/dense_35/BiasAddBiasAdd'sequential_11/dense_35/MatMul:product:05sequential_11/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������

sequential_11/dense_35/ReluRelu'sequential_11/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
v
sequential_11/reshape_5/ShapeShape)sequential_11/dense_35/Relu:activations:0*
T0*
_output_shapes
:u
+sequential_11/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_11/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_11/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_11/reshape_5/strided_sliceStridedSlice&sequential_11/reshape_5/Shape:output:04sequential_11/reshape_5/strided_slice/stack:output:06sequential_11/reshape_5/strided_slice/stack_1:output:06sequential_11/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_11/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_11/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_11/reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
%sequential_11/reshape_5/Reshape/shapePack.sequential_11/reshape_5/strided_slice:output:00sequential_11/reshape_5/Reshape/shape/1:output:00sequential_11/reshape_5/Reshape/shape/2:output:00sequential_11/reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
sequential_11/reshape_5/ReshapeReshape)sequential_11/dense_35/Relu:activations:0.sequential_11/reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������
'sequential_11/conv2d_transpose_15/ShapeShape(sequential_11/reshape_5/Reshape:output:0*
T0*
_output_shapes
:
5sequential_11/conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_11/conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_11/conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_11/conv2d_transpose_15/strided_sliceStridedSlice0sequential_11/conv2d_transpose_15/Shape:output:0>sequential_11/conv2d_transpose_15/strided_slice/stack:output:0@sequential_11/conv2d_transpose_15/strided_slice/stack_1:output:0@sequential_11/conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_11/conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_11/conv2d_transpose_15/stackPack8sequential_11/conv2d_transpose_15/strided_slice:output:02sequential_11/conv2d_transpose_15/stack/1:output:02sequential_11/conv2d_transpose_15/stack/2:output:02sequential_11/conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_11/conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_11/conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_11/conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_11/conv2d_transpose_15/strided_slice_1StridedSlice0sequential_11/conv2d_transpose_15/stack:output:0@sequential_11/conv2d_transpose_15/strided_slice_1/stack:output:0Bsequential_11/conv2d_transpose_15/strided_slice_1/stack_1:output:0Bsequential_11/conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_11/conv2d_transpose_15/conv2d_transposeConv2DBackpropInput0sequential_11/conv2d_transpose_15/stack:output:0Isequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0(sequential_11/reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_11/conv2d_transpose_15/BiasAddBiasAdd;sequential_11/conv2d_transpose_15/conv2d_transpose:output:0@sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
&sequential_11/conv2d_transpose_15/ReluRelu2sequential_11/conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������t
#sequential_11/up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_11/up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
!sequential_11/up_sampling2d_9/mulMul,sequential_11/up_sampling2d_9/Const:output:0.sequential_11/up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
:sequential_11/up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_11/conv2d_transpose_15/Relu:activations:0%sequential_11/up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
'sequential_11/conv2d_transpose_16/ShapeShapeKsequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:
5sequential_11/conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_11/conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_11/conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_11/conv2d_transpose_16/strided_sliceStridedSlice0sequential_11/conv2d_transpose_16/Shape:output:0>sequential_11/conv2d_transpose_16/strided_slice/stack:output:0@sequential_11/conv2d_transpose_16/strided_slice/stack_1:output:0@sequential_11/conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_11/conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_11/conv2d_transpose_16/stackPack8sequential_11/conv2d_transpose_16/strided_slice:output:02sequential_11/conv2d_transpose_16/stack/1:output:02sequential_11/conv2d_transpose_16/stack/2:output:02sequential_11/conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_11/conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_11/conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_11/conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_11/conv2d_transpose_16/strided_slice_1StridedSlice0sequential_11/conv2d_transpose_16/stack:output:0@sequential_11/conv2d_transpose_16/strided_slice_1/stack:output:0Bsequential_11/conv2d_transpose_16/strided_slice_1/stack_1:output:0Bsequential_11/conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_11/conv2d_transpose_16/conv2d_transposeConv2DBackpropInput0sequential_11/conv2d_transpose_16/stack:output:0Isequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0Ksequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_11/conv2d_transpose_16/BiasAddBiasAdd;sequential_11/conv2d_transpose_16/conv2d_transpose:output:0@sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
&sequential_11/conv2d_transpose_16/ReluRelu2sequential_11/conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
-sequential_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_11/conv2d_12/Conv2DConv2D4sequential_11/conv2d_transpose_16/Relu:activations:05sequential_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
.sequential_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_11/conv2d_12/BiasAddBiasAdd'sequential_11/conv2d_12/Conv2D:output:06sequential_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_11/conv2d_12/SigmoidSigmoid(sequential_11/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������z
IdentityIdentity#sequential_11/conv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp/^sequential_11/conv2d_12/BiasAdd/ReadVariableOp.^sequential_11/conv2d_12/Conv2D/ReadVariableOp9^sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpB^sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp9^sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpB^sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp.^sequential_11/dense_33/BiasAdd/ReadVariableOp-^sequential_11/dense_33/MatMul/ReadVariableOp.^sequential_11/dense_34/BiasAdd/ReadVariableOp-^sequential_11/dense_34/MatMul/ReadVariableOp.^sequential_11/dense_35/BiasAdd/ReadVariableOp-^sequential_11/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2`
.sequential_11/conv2d_12/BiasAdd/ReadVariableOp.sequential_11/conv2d_12/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_12/Conv2D/ReadVariableOp-sequential_11/conv2d_12/Conv2D/ReadVariableOp2t
8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp2�
Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpAsequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp2t
8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp2�
Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpAsequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp2^
-sequential_11/dense_33/BiasAdd/ReadVariableOp-sequential_11/dense_33/BiasAdd/ReadVariableOp2\
,sequential_11/dense_33/MatMul/ReadVariableOp,sequential_11/dense_33/MatMul/ReadVariableOp2^
-sequential_11/dense_34/BiasAdd/ReadVariableOp-sequential_11/dense_34/BiasAdd/ReadVariableOp2\
,sequential_11/dense_34/MatMul/ReadVariableOp,sequential_11/dense_34/MatMul/ReadVariableOp2^
-sequential_11/dense_35/BiasAdd/ReadVariableOp-sequential_11/dense_35/BiasAdd/ReadVariableOp2\
,sequential_11/dense_35/MatMul/ReadVariableOp,sequential_11/dense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_12_layer_call_fn_192523

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�5
�	
C__inference_model_3_layer_call_and_return_conditional_losses_191164
conv2d_10_input*
conv2d_10_191109:
conv2d_10_191111:*
conv2d_11_191115:
conv2d_11_191117:#
dense_30_191121:
�	�
dense_30_191123:	�"
dense_31_191127:	�@
dense_31_191129:@!
dense_32_191133:@ 
dense_32_191135: &
sequential_11_191138: @"
sequential_11_191140:@'
sequential_11_191142:	@�#
sequential_11_191144:	�(
sequential_11_191146:
��
#
sequential_11_191148:	�
.
sequential_11_191150:"
sequential_11_191152:.
sequential_11_191154:"
sequential_11_191156:.
sequential_11_191158:"
sequential_11_191160:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall� dense_32/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�"dropout_21/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_191109conv2d_10_191111*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_11_191115conv2d_11_191117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341�
flatten_5/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_30_191121dense_30_191123*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_190366�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190804�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_31_191127dense_31_191129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_190390�
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190771�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_32_191133dense_32_191135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_190414�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0sequential_11_191138sequential_11_191140sequential_11_191142sequential_11_191144sequential_11_191146sequential_11_191148sequential_11_191150sequential_11_191152sequential_11_191154sequential_11_191156sequential_11_191158sequential_11_191160*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190714�
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�2
�	
C__inference_model_3_layer_call_and_return_conditional_losses_191106
conv2d_10_input*
conv2d_10_191051:
conv2d_10_191053:*
conv2d_11_191057:
conv2d_11_191059:#
dense_30_191063:
�	�
dense_30_191065:	�"
dense_31_191069:	�@
dense_31_191071:@!
dense_32_191075:@ 
dense_32_191077: &
sequential_11_191080: @"
sequential_11_191082:@'
sequential_11_191084:	@�#
sequential_11_191086:	�(
sequential_11_191088:
��
#
sequential_11_191090:	�
.
sequential_11_191092:"
sequential_11_191094:.
sequential_11_191096:"
sequential_11_191098:.
sequential_11_191100:"
sequential_11_191102:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall� dense_32/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_191051conv2d_10_191053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190323�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_11_191057conv2d_11_191059*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_190341�
flatten_5/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_190353�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_30_191063dense_30_191065*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_190366�
dropout_20/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_190377�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_31_191069dense_31_191071*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_190390�
dropout_21/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190401�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_32_191075dense_32_191077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_190414�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0sequential_11_191080sequential_11_191082sequential_11_191084sequential_11_191086sequential_11_191088sequential_11_191090sequential_11_191092sequential_11_191094sequential_11_191096sequential_11_191098sequential_11_191100sequential_11_191102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_190507�
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�

�
D__inference_dense_33_layer_call_and_return_conditional_losses_192290

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_190377

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_30_layer_call_and_return_conditional_losses_190366

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
G
+__inference_dropout_23_layer_call_fn_192342

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_189921a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
C__inference_model_3_layer_call_and_return_conditional_losses_191443

inputsB
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:;
'dense_30_matmul_readvariableop_resource:
�	�7
(dense_30_biasadd_readvariableop_resource:	�:
'dense_31_matmul_readvariableop_resource:	�@6
(dense_31_biasadd_readvariableop_resource:@9
'dense_32_matmul_readvariableop_resource:@ 6
(dense_32_biasadd_readvariableop_resource: G
5sequential_11_dense_33_matmul_readvariableop_resource: @D
6sequential_11_dense_33_biasadd_readvariableop_resource:@H
5sequential_11_dense_34_matmul_readvariableop_resource:	@�E
6sequential_11_dense_34_biasadd_readvariableop_resource:	�I
5sequential_11_dense_35_matmul_readvariableop_resource:
��
E
6sequential_11_dense_35_biasadd_readvariableop_resource:	�
d
Jsequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource:O
Asequential_11_conv2d_transpose_15_biasadd_readvariableop_resource:d
Jsequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource:O
Asequential_11_conv2d_transpose_16_biasadd_readvariableop_resource:P
6sequential_11_conv2d_12_conv2d_readvariableop_resource:E
7sequential_11_conv2d_12_biasadd_readvariableop_resource:
identity�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�dense_30/BiasAdd/ReadVariableOp�dense_30/MatMul/ReadVariableOp�dense_31/BiasAdd/ReadVariableOp�dense_31/MatMul/ReadVariableOp�dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�.sequential_11/conv2d_12/BiasAdd/ReadVariableOp�-sequential_11/conv2d_12/Conv2D/ReadVariableOp�8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp�Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp�8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp�Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp�-sequential_11/dense_33/BiasAdd/ReadVariableOp�,sequential_11/dense_33/MatMul/ReadVariableOp�-sequential_11/dense_34/BiasAdd/ReadVariableOp�,sequential_11/dense_34/MatMul/ReadVariableOp�-sequential_11/dense_35/BiasAdd/ReadVariableOp�,sequential_11/dense_35/MatMul/ReadVariableOp�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_5/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_11/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_5/ReshapeReshapeconv2d_11/Relu:activations:0flatten_5/Const:output:0*
T0*(
_output_shapes
:����������	�
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense_30/MatMulMatMulflatten_5/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_20/IdentityIdentitydense_30/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_31/MatMulMatMuldropout_20/Identity:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:���������@n
dropout_21/IdentityIdentitydense_31/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_32/MatMulMatMuldropout_21/Identity:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
,sequential_11/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_33_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
sequential_11/dense_33/MatMulMatMuldense_32/Relu:activations:04sequential_11/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-sequential_11/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_11/dense_33/BiasAddBiasAdd'sequential_11/dense_33/MatMul:product:05sequential_11/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
sequential_11/dense_33/ReluRelu'sequential_11/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
!sequential_11/dropout_22/IdentityIdentity)sequential_11/dense_33/Relu:activations:0*
T0*'
_output_shapes
:���������@�
,sequential_11/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_34_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
sequential_11/dense_34/MatMulMatMul*sequential_11/dropout_22/Identity:output:04sequential_11/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_11/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_11/dense_34/BiasAddBiasAdd'sequential_11/dense_34/MatMul:product:05sequential_11/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_11/dense_34/ReluRelu'sequential_11/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
!sequential_11/dropout_23/IdentityIdentity)sequential_11/dense_34/Relu:activations:0*
T0*(
_output_shapes
:�����������
,sequential_11/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
sequential_11/dense_35/MatMulMatMul*sequential_11/dropout_23/Identity:output:04sequential_11/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
�
-sequential_11/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0�
sequential_11/dense_35/BiasAddBiasAdd'sequential_11/dense_35/MatMul:product:05sequential_11/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������

sequential_11/dense_35/ReluRelu'sequential_11/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:����������
v
sequential_11/reshape_5/ShapeShape)sequential_11/dense_35/Relu:activations:0*
T0*
_output_shapes
:u
+sequential_11/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_11/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_11/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_11/reshape_5/strided_sliceStridedSlice&sequential_11/reshape_5/Shape:output:04sequential_11/reshape_5/strided_slice/stack:output:06sequential_11/reshape_5/strided_slice/stack_1:output:06sequential_11/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_11/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_11/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_11/reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
%sequential_11/reshape_5/Reshape/shapePack.sequential_11/reshape_5/strided_slice:output:00sequential_11/reshape_5/Reshape/shape/1:output:00sequential_11/reshape_5/Reshape/shape/2:output:00sequential_11/reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
sequential_11/reshape_5/ReshapeReshape)sequential_11/dense_35/Relu:activations:0.sequential_11/reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:���������
'sequential_11/conv2d_transpose_15/ShapeShape(sequential_11/reshape_5/Reshape:output:0*
T0*
_output_shapes
:
5sequential_11/conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_11/conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_11/conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_11/conv2d_transpose_15/strided_sliceStridedSlice0sequential_11/conv2d_transpose_15/Shape:output:0>sequential_11/conv2d_transpose_15/strided_slice/stack:output:0@sequential_11/conv2d_transpose_15/strided_slice/stack_1:output:0@sequential_11/conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_11/conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_11/conv2d_transpose_15/stackPack8sequential_11/conv2d_transpose_15/strided_slice:output:02sequential_11/conv2d_transpose_15/stack/1:output:02sequential_11/conv2d_transpose_15/stack/2:output:02sequential_11/conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_11/conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_11/conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_11/conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_11/conv2d_transpose_15/strided_slice_1StridedSlice0sequential_11/conv2d_transpose_15/stack:output:0@sequential_11/conv2d_transpose_15/strided_slice_1/stack:output:0Bsequential_11/conv2d_transpose_15/strided_slice_1/stack_1:output:0Bsequential_11/conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_11_conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_11/conv2d_transpose_15/conv2d_transposeConv2DBackpropInput0sequential_11/conv2d_transpose_15/stack:output:0Isequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0(sequential_11/reshape_5/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_conv2d_transpose_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_11/conv2d_transpose_15/BiasAddBiasAdd;sequential_11/conv2d_transpose_15/conv2d_transpose:output:0@sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
&sequential_11/conv2d_transpose_15/ReluRelu2sequential_11/conv2d_transpose_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������t
#sequential_11/up_sampling2d_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_11/up_sampling2d_9/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
!sequential_11/up_sampling2d_9/mulMul,sequential_11/up_sampling2d_9/Const:output:0.sequential_11/up_sampling2d_9/Const_1:output:0*
T0*
_output_shapes
:�
:sequential_11/up_sampling2d_9/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_11/conv2d_transpose_15/Relu:activations:0%sequential_11/up_sampling2d_9/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
'sequential_11/conv2d_transpose_16/ShapeShapeKsequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:
5sequential_11/conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_11/conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_11/conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_11/conv2d_transpose_16/strided_sliceStridedSlice0sequential_11/conv2d_transpose_16/Shape:output:0>sequential_11/conv2d_transpose_16/strided_slice/stack:output:0@sequential_11/conv2d_transpose_16/strided_slice/stack_1:output:0@sequential_11/conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_11/conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_11/conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_11/conv2d_transpose_16/stackPack8sequential_11/conv2d_transpose_16/strided_slice:output:02sequential_11/conv2d_transpose_16/stack/1:output:02sequential_11/conv2d_transpose_16/stack/2:output:02sequential_11/conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_11/conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_11/conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_11/conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_11/conv2d_transpose_16/strided_slice_1StridedSlice0sequential_11/conv2d_transpose_16/stack:output:0@sequential_11/conv2d_transpose_16/strided_slice_1/stack:output:0Bsequential_11/conv2d_transpose_16/strided_slice_1/stack_1:output:0Bsequential_11/conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_11_conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_11/conv2d_transpose_16/conv2d_transposeConv2DBackpropInput0sequential_11/conv2d_transpose_16/stack:output:0Isequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0Ksequential_11/up_sampling2d_9/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_11/conv2d_transpose_16/BiasAddBiasAdd;sequential_11/conv2d_transpose_16/conv2d_transpose:output:0@sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
&sequential_11/conv2d_transpose_16/ReluRelu2sequential_11/conv2d_transpose_16/BiasAdd:output:0*
T0*/
_output_shapes
:����������
-sequential_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_11/conv2d_12/Conv2DConv2D4sequential_11/conv2d_transpose_16/Relu:activations:05sequential_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
.sequential_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_11/conv2d_12/BiasAddBiasAdd'sequential_11/conv2d_12/Conv2D:output:06sequential_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_11/conv2d_12/SigmoidSigmoid(sequential_11/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������z
IdentityIdentity#sequential_11/conv2d_12/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp/^sequential_11/conv2d_12/BiasAdd/ReadVariableOp.^sequential_11/conv2d_12/Conv2D/ReadVariableOp9^sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOpB^sequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp9^sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOpB^sequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp.^sequential_11/dense_33/BiasAdd/ReadVariableOp-^sequential_11/dense_33/MatMul/ReadVariableOp.^sequential_11/dense_34/BiasAdd/ReadVariableOp-^sequential_11/dense_34/MatMul/ReadVariableOp.^sequential_11/dense_35/BiasAdd/ReadVariableOp-^sequential_11/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2`
.sequential_11/conv2d_12/BiasAdd/ReadVariableOp.sequential_11/conv2d_12/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_12/Conv2D/ReadVariableOp-sequential_11/conv2d_12/Conv2D/ReadVariableOp2t
8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp8sequential_11/conv2d_transpose_15/BiasAdd/ReadVariableOp2�
Asequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOpAsequential_11/conv2d_transpose_15/conv2d_transpose/ReadVariableOp2t
8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp8sequential_11/conv2d_transpose_16/BiasAdd/ReadVariableOp2�
Asequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOpAsequential_11/conv2d_transpose_16/conv2d_transpose/ReadVariableOp2^
-sequential_11/dense_33/BiasAdd/ReadVariableOp-sequential_11/dense_33/BiasAdd/ReadVariableOp2\
,sequential_11/dense_33/MatMul/ReadVariableOp,sequential_11/dense_33/MatMul/ReadVariableOp2^
-sequential_11/dense_34/BiasAdd/ReadVariableOp-sequential_11/dense_34/BiasAdd/ReadVariableOp2\
,sequential_11/dense_34/MatMul/ReadVariableOp,sequential_11/dense_34/MatMul/ReadVariableOp2^
-sequential_11/dense_35/BiasAdd/ReadVariableOp-sequential_11/dense_35/BiasAdd/ReadVariableOp2\
,sequential_11/dense_35/MatMul/ReadVariableOp,sequential_11/dense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
d
+__inference_dropout_21_layer_call_fn_191737

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_192305

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_21_layer_call_fn_191732

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_190401`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_189921

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_191619

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_31_layer_call_and_return_conditional_losses_191727

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_35_layer_call_and_return_conditional_losses_192384

inputs2
matmul_readvariableop_resource:
��
.
biasadd_readvariableop_resource:	�

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������
b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
g
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_192467

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
�1
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_190305
dense_33_input!
dense_33_190270: @
dense_33_190272:@"
dense_34_190276:	@�
dense_34_190278:	�#
dense_35_190282:
��

dense_35_190284:	�
4
conv2d_transpose_15_190288:(
conv2d_transpose_15_190290:4
conv2d_transpose_16_190294:(
conv2d_transpose_16_190296:*
conv2d_12_190299:
conv2d_12_190301:
identity��!conv2d_12/StatefulPartitionedCall�+conv2d_transpose_15/StatefulPartitionedCall�+conv2d_transpose_16/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�"dropout_22/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCalldense_33_inputdense_33_190270dense_33_190272*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_189886�
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_190091�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_34_190276dense_34_190278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_189910�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_190058�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_35_190282dense_35_190284*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_189934�
reshape_5/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954�
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCall"reshape_5/PartitionedCall:output:0conv2d_transpose_15_190288conv2d_transpose_15_190290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_189793�
up_sampling2d_9/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_189816�
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_9/PartitionedCall:output:0conv2d_transpose_16_190294conv2d_transpose_16_190296*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_189861�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0conv2d_12_190299conv2d_12_190301*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_189978�
IdentityIdentity*conv2d_12/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:��������� : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:W S
'
_output_shapes
:��������� 
(
_user_specified_namedense_33_input
�
�
(__inference_model_3_layer_call_fn_190581
conv2d_10_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
�	�
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��


unknown_14:	�
$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_190534w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_10_input
�
G
+__inference_dropout_22_layer_call_fn_192295

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_189897`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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

�
D__inference_dense_34_layer_call_and_return_conditional_losses_192337

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_32_layer_call_fn_191763

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_190414o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_reshape_5_layer_call_fn_192389

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������
:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_191754

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_34_layer_call_fn_192326

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_189910p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_31_layer_call_fn_191716

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_190390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_192352

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_190058

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_191695

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_reshape_5_layer_call_and_return_conditional_losses_189954

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������
:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�

�
D__inference_dense_30_layer_call_and_return_conditional_losses_191680

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_5_layer_call_fn_191624

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
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_189748�
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
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_10_input@
!serving_default_conv2d_10_input:0���������I
sequential_118
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias"
_tf_keras_layer
�
Ylayer_with_weights-0
Ylayer-0
Zlayer-1
[layer_with_weights-1
[layer-2
\layer-3
]layer_with_weights-2
]layer-4
^layer-5
_layer_with_weights-3
_layer-6
`layer-7
alayer_with_weights-4
alayer-8
blayer_with_weights-5
blayer-9
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
0
1
*2
+3
94
:5
H6
I7
W8
X9
i10
j11
k12
l13
m14
n15
o16
p17
q18
r19
s20
t21"
trackable_list_wrapper
�
0
1
*2
+3
94
:5
H6
I7
W8
X9
i10
j11
k12
l13
m14
n15
o16
p17
q18
r19
s20
t21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_0
{trace_1
|trace_2
}trace_32�
(__inference_model_3_layer_call_fn_190581
(__inference_model_3_layer_call_fn_191266
(__inference_model_3_layer_call_fn_191315
(__inference_model_3_layer_call_fn_191048�
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
 zztrace_0z{trace_1z|trace_2z}trace_3
�
~trace_0
trace_1
�trace_2
�trace_32�
C__inference_model_3_layer_call_and_return_conditional_losses_191443
C__inference_model_3_layer_call_and_return_conditional_losses_191599
C__inference_model_3_layer_call_and_return_conditional_losses_191106
C__inference_model_3_layer_call_and_return_conditional_losses_191164�
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
�B�
!__inference__wrapped_model_189739conv2d_10_input"�
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
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_10_layer_call_fn_191608�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_191619�
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
 z�trace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_5_layer_call_fn_191624�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_191629�
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
 z�trace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_11_layer_call_fn_191638�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_191649�
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
 z�trace_0
*:(2conv2d_11/kernel
:2conv2d_11/bias
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_5_layer_call_fn_191654�
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
 z�trace_0
�
�trace_02�
E__inference_flatten_5_layer_call_and_return_conditional_losses_191660�
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
 z�trace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_30_layer_call_fn_191669�
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
 z�trace_0
�
�trace_02�
D__inference_dense_30_layer_call_and_return_conditional_losses_191680�
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
 z�trace_0
#:!
�	�2dense_30/kernel
:�2dense_30/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_20_layer_call_fn_191685
+__inference_dropout_20_layer_call_fn_191690�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_20_layer_call_and_return_conditional_losses_191695
F__inference_dropout_20_layer_call_and_return_conditional_losses_191707�
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
 z�trace_0z�trace_1
"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_31_layer_call_fn_191716�
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
 z�trace_0
�
�trace_02�
D__inference_dense_31_layer_call_and_return_conditional_losses_191727�
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
 z�trace_0
": 	�@2dense_31/kernel
:@2dense_31/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_21_layer_call_fn_191732
+__inference_dropout_21_layer_call_fn_191737�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_21_layer_call_and_return_conditional_losses_191742
F__inference_dropout_21_layer_call_and_return_conditional_losses_191754�
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
 z�trace_0z�trace_1
"
_generic_user_object
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_32_layer_call_fn_191763�
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
 z�trace_0
�
�trace_02�
D__inference_dense_32_layer_call_and_return_conditional_losses_191774�
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
 z�trace_0
!:@ 2dense_32/kernel
: 2dense_32/bias
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias"
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
+�&call_and_return_all_conditional_losses

kkernel
lbias"
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
+�&call_and_return_all_conditional_losses

mkernel
nbias"
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

okernel
pbias
!�_jit_compiled_convolution_op"
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
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
v
i0
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11"
trackable_list_wrapper
v
i0
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_52�
.__inference_sequential_11_layer_call_fn_190012
.__inference_sequential_11_layer_call_fn_191803
.__inference_sequential_11_layer_call_fn_191832
.__inference_sequential_11_layer_call_fn_190229
.__inference_sequential_11_layer_call_fn_191861
.__inference_sequential_11_layer_call_fn_191890�
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
 z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_52�
I__inference_sequential_11_layer_call_and_return_conditional_losses_191978
I__inference_sequential_11_layer_call_and_return_conditional_losses_192080
I__inference_sequential_11_layer_call_and_return_conditional_losses_190267
I__inference_sequential_11_layer_call_and_return_conditional_losses_190305
I__inference_sequential_11_layer_call_and_return_conditional_losses_192168
I__inference_sequential_11_layer_call_and_return_conditional_losses_192270�
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
 z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5
!: @2dense_33/kernel
:@2dense_33/bias
": 	@�2dense_34/kernel
:�2dense_34/bias
#:!
��
2dense_35/kernel
:�
2dense_35/bias
4:22conv2d_transpose_15/kernel
&:$2conv2d_transpose_15/bias
4:22conv2d_transpose_16/kernel
&:$2conv2d_transpose_16/bias
*:(2conv2d_12/kernel
:2conv2d_12/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_3_layer_call_fn_190581conv2d_10_input"�
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
(__inference_model_3_layer_call_fn_191266inputs"�
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
(__inference_model_3_layer_call_fn_191315inputs"�
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
�B�
(__inference_model_3_layer_call_fn_191048conv2d_10_input"�
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
C__inference_model_3_layer_call_and_return_conditional_losses_191443inputs"�
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
C__inference_model_3_layer_call_and_return_conditional_losses_191599inputs"�
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
C__inference_model_3_layer_call_and_return_conditional_losses_191106conv2d_10_input"�
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
C__inference_model_3_layer_call_and_return_conditional_losses_191164conv2d_10_input"�
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
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
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
�B�
$__inference_signature_wrapper_191217conv2d_10_input"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_10_layer_call_fn_191608inputs"�
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
�B�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_191619inputs"�
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
0__inference_max_pooling2d_5_layer_call_fn_191624inputs"�
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
�B�
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_191629inputs"�
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
*__inference_conv2d_11_layer_call_fn_191638inputs"�
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
�B�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_191649inputs"�
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
*__inference_flatten_5_layer_call_fn_191654inputs"�
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
�B�
E__inference_flatten_5_layer_call_and_return_conditional_losses_191660inputs"�
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
)__inference_dense_30_layer_call_fn_191669inputs"�
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
�B�
D__inference_dense_30_layer_call_and_return_conditional_losses_191680inputs"�
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
+__inference_dropout_20_layer_call_fn_191685inputs"�
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
+__inference_dropout_20_layer_call_fn_191690inputs"�
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_191695inputs"�
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_191707inputs"�
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
)__inference_dense_31_layer_call_fn_191716inputs"�
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
�B�
D__inference_dense_31_layer_call_and_return_conditional_losses_191727inputs"�
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
+__inference_dropout_21_layer_call_fn_191732inputs"�
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
+__inference_dropout_21_layer_call_fn_191737inputs"�
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_191742inputs"�
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_191754inputs"�
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
)__inference_dense_32_layer_call_fn_191763inputs"�
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
�B�
D__inference_dense_32_layer_call_and_return_conditional_losses_191774inputs"�
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_33_layer_call_fn_192279�
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
 z�trace_0
�
�trace_02�
D__inference_dense_33_layer_call_and_return_conditional_losses_192290�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_22_layer_call_fn_192295
+__inference_dropout_22_layer_call_fn_192300�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_22_layer_call_and_return_conditional_losses_192305
F__inference_dropout_22_layer_call_and_return_conditional_losses_192317�
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
 z�trace_0z�trace_1
"
_generic_user_object
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_34_layer_call_fn_192326�
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
 z�trace_0
�
�trace_02�
D__inference_dense_34_layer_call_and_return_conditional_losses_192337�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_23_layer_call_fn_192342
+__inference_dropout_23_layer_call_fn_192347�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_23_layer_call_and_return_conditional_losses_192352
F__inference_dropout_23_layer_call_and_return_conditional_losses_192364�
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
 z�trace_0z�trace_1
"
_generic_user_object
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_35_layer_call_fn_192373�
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
 z�trace_0
�
�trace_02�
D__inference_dense_35_layer_call_and_return_conditional_losses_192384�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_reshape_5_layer_call_fn_192389�
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
 z�trace_0
�
�trace_02�
E__inference_reshape_5_layer_call_and_return_conditional_losses_192403�
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
 z�trace_0
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_conv2d_transpose_15_layer_call_fn_192412�
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
 z�trace_0
�
�trace_02�
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_192450�
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_up_sampling2d_9_layer_call_fn_192455�
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
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_192467�
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_conv2d_transpose_16_layer_call_fn_192476�
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
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_192514�
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_12_layer_call_fn_192523�
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_192534�
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
f
Y0
Z1
[2
\3
]4
^5
_6
`7
a8
b9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_11_layer_call_fn_190012dense_33_input"�
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
.__inference_sequential_11_layer_call_fn_191803inputs"�
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
.__inference_sequential_11_layer_call_fn_191832inputs"�
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
.__inference_sequential_11_layer_call_fn_190229dense_33_input"�
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
�B�
.__inference_sequential_11_layer_call_fn_191861inputs_0"�
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
�B�
.__inference_sequential_11_layer_call_fn_191890inputs_0"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_191978inputs"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_192080inputs"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_190267dense_33_input"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_190305dense_33_input"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_192168inputs_0"�
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_192270inputs_0"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
/:-2Adam/m/conv2d_10/kernel
/:-2Adam/v/conv2d_10/kernel
!:2Adam/m/conv2d_10/bias
!:2Adam/v/conv2d_10/bias
/:-2Adam/m/conv2d_11/kernel
/:-2Adam/v/conv2d_11/kernel
!:2Adam/m/conv2d_11/bias
!:2Adam/v/conv2d_11/bias
(:&
�	�2Adam/m/dense_30/kernel
(:&
�	�2Adam/v/dense_30/kernel
!:�2Adam/m/dense_30/bias
!:�2Adam/v/dense_30/bias
':%	�@2Adam/m/dense_31/kernel
':%	�@2Adam/v/dense_31/kernel
 :@2Adam/m/dense_31/bias
 :@2Adam/v/dense_31/bias
&:$@ 2Adam/m/dense_32/kernel
&:$@ 2Adam/v/dense_32/kernel
 : 2Adam/m/dense_32/bias
 : 2Adam/v/dense_32/bias
&:$ @2Adam/m/dense_33/kernel
&:$ @2Adam/v/dense_33/kernel
 :@2Adam/m/dense_33/bias
 :@2Adam/v/dense_33/bias
':%	@�2Adam/m/dense_34/kernel
':%	@�2Adam/v/dense_34/kernel
!:�2Adam/m/dense_34/bias
!:�2Adam/v/dense_34/bias
(:&
��
2Adam/m/dense_35/kernel
(:&
��
2Adam/v/dense_35/kernel
!:�
2Adam/m/dense_35/bias
!:�
2Adam/v/dense_35/bias
9:72!Adam/m/conv2d_transpose_15/kernel
9:72!Adam/v/conv2d_transpose_15/kernel
+:)2Adam/m/conv2d_transpose_15/bias
+:)2Adam/v/conv2d_transpose_15/bias
9:72!Adam/m/conv2d_transpose_16/kernel
9:72!Adam/v/conv2d_transpose_16/kernel
+:)2Adam/m/conv2d_transpose_16/bias
+:)2Adam/v/conv2d_transpose_16/bias
/:-2Adam/m/conv2d_12/kernel
/:-2Adam/v/conv2d_12/kernel
!:2Adam/m/conv2d_12/bias
!:2Adam/v/conv2d_12/bias
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
)__inference_dense_33_layer_call_fn_192279inputs"�
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
�B�
D__inference_dense_33_layer_call_and_return_conditional_losses_192290inputs"�
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
+__inference_dropout_22_layer_call_fn_192295inputs"�
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
+__inference_dropout_22_layer_call_fn_192300inputs"�
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
F__inference_dropout_22_layer_call_and_return_conditional_losses_192305inputs"�
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
F__inference_dropout_22_layer_call_and_return_conditional_losses_192317inputs"�
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
)__inference_dense_34_layer_call_fn_192326inputs"�
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
�B�
D__inference_dense_34_layer_call_and_return_conditional_losses_192337inputs"�
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
+__inference_dropout_23_layer_call_fn_192342inputs"�
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
+__inference_dropout_23_layer_call_fn_192347inputs"�
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
F__inference_dropout_23_layer_call_and_return_conditional_losses_192352inputs"�
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
F__inference_dropout_23_layer_call_and_return_conditional_losses_192364inputs"�
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
)__inference_dense_35_layer_call_fn_192373inputs"�
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
�B�
D__inference_dense_35_layer_call_and_return_conditional_losses_192384inputs"�
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
*__inference_reshape_5_layer_call_fn_192389inputs"�
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
�B�
E__inference_reshape_5_layer_call_and_return_conditional_losses_192403inputs"�
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
4__inference_conv2d_transpose_15_layer_call_fn_192412inputs"�
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
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_192450inputs"�
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
0__inference_up_sampling2d_9_layer_call_fn_192455inputs"�
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
�B�
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_192467inputs"�
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
4__inference_conv2d_transpose_16_layer_call_fn_192476inputs"�
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
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_192514inputs"�
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
*__inference_conv2d_12_layer_call_fn_192523inputs"�
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
�B�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_192534inputs"�
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
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
!__inference__wrapped_model_189739�*+9:HIWXijklmnopqrst@�=
6�3
1�.
conv2d_10_input���������
� "E�B
@
sequential_11/�,
sequential_11����������
E__inference_conv2d_10_layer_call_and_return_conditional_losses_191619s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_10_layer_call_fn_191608h7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_11_layer_call_and_return_conditional_losses_191649s*+7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_11_layer_call_fn_191638h*+7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_12_layer_call_and_return_conditional_losses_192534�stI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
*__inference_conv2d_12_layer_call_fn_192523�stI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
O__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_192450�opI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
4__inference_conv2d_transpose_15_layer_call_fn_192412�opI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_192514�qrI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
4__inference_conv2d_transpose_16_layer_call_fn_192476�qrI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
D__inference_dense_30_layer_call_and_return_conditional_losses_191680e9:0�-
&�#
!�
inputs����������	
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_30_layer_call_fn_191669Z9:0�-
&�#
!�
inputs����������	
� ""�
unknown�����������
D__inference_dense_31_layer_call_and_return_conditional_losses_191727dHI0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
)__inference_dense_31_layer_call_fn_191716YHI0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
D__inference_dense_32_layer_call_and_return_conditional_losses_191774cWX/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
)__inference_dense_32_layer_call_fn_191763XWX/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
D__inference_dense_33_layer_call_and_return_conditional_losses_192290cij/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������@
� �
)__inference_dense_33_layer_call_fn_192279Xij/�,
%�"
 �
inputs��������� 
� "!�
unknown���������@�
D__inference_dense_34_layer_call_and_return_conditional_losses_192337dkl/�,
%�"
 �
inputs���������@
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_34_layer_call_fn_192326Ykl/�,
%�"
 �
inputs���������@
� ""�
unknown�����������
D__inference_dense_35_layer_call_and_return_conditional_losses_192384emn0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������

� �
)__inference_dense_35_layer_call_fn_192373Zmn0�-
&�#
!�
inputs����������
� ""�
unknown����������
�
F__inference_dropout_20_layer_call_and_return_conditional_losses_191695e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_20_layer_call_and_return_conditional_losses_191707e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_20_layer_call_fn_191685Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
+__inference_dropout_20_layer_call_fn_191690Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
F__inference_dropout_21_layer_call_and_return_conditional_losses_191742c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
F__inference_dropout_21_layer_call_and_return_conditional_losses_191754c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
+__inference_dropout_21_layer_call_fn_191732X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
+__inference_dropout_21_layer_call_fn_191737X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
F__inference_dropout_22_layer_call_and_return_conditional_losses_192305c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
F__inference_dropout_22_layer_call_and_return_conditional_losses_192317c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
+__inference_dropout_22_layer_call_fn_192295X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
+__inference_dropout_22_layer_call_fn_192300X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
F__inference_dropout_23_layer_call_and_return_conditional_losses_192352e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_23_layer_call_and_return_conditional_losses_192364e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_23_layer_call_fn_192342Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
+__inference_dropout_23_layer_call_fn_192347Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
E__inference_flatten_5_layer_call_and_return_conditional_losses_191660h7�4
-�*
(�%
inputs���������
� "-�*
#� 
tensor_0����������	
� �
*__inference_flatten_5_layer_call_fn_191654]7�4
-�*
(�%
inputs���������
� ""�
unknown����������	�
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_191629�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_5_layer_call_fn_191624�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_model_3_layer_call_and_return_conditional_losses_191106�*+9:HIWXijklmnopqrstH�E
>�;
1�.
conv2d_10_input���������
p 

 
� "4�1
*�'
tensor_0���������
� �
C__inference_model_3_layer_call_and_return_conditional_losses_191164�*+9:HIWXijklmnopqrstH�E
>�;
1�.
conv2d_10_input���������
p

 
� "4�1
*�'
tensor_0���������
� �
C__inference_model_3_layer_call_and_return_conditional_losses_191443�*+9:HIWXijklmnopqrst?�<
5�2
(�%
inputs���������
p 

 
� "4�1
*�'
tensor_0���������
� �
C__inference_model_3_layer_call_and_return_conditional_losses_191599�*+9:HIWXijklmnopqrst?�<
5�2
(�%
inputs���������
p

 
� "4�1
*�'
tensor_0���������
� �
(__inference_model_3_layer_call_fn_190581�*+9:HIWXijklmnopqrstH�E
>�;
1�.
conv2d_10_input���������
p 

 
� ")�&
unknown����������
(__inference_model_3_layer_call_fn_191048�*+9:HIWXijklmnopqrstH�E
>�;
1�.
conv2d_10_input���������
p

 
� ")�&
unknown����������
(__inference_model_3_layer_call_fn_191266�*+9:HIWXijklmnopqrst?�<
5�2
(�%
inputs���������
p 

 
� ")�&
unknown����������
(__inference_model_3_layer_call_fn_191315�*+9:HIWXijklmnopqrst?�<
5�2
(�%
inputs���������
p

 
� ")�&
unknown����������
E__inference_reshape_5_layer_call_and_return_conditional_losses_192403h0�-
&�#
!�
inputs����������

� "4�1
*�'
tensor_0���������
� �
*__inference_reshape_5_layer_call_fn_192389]0�-
&�#
!�
inputs����������

� ")�&
unknown����������
I__inference_sequential_11_layer_call_and_return_conditional_losses_190267�ijklmnopqrst?�<
5�2
(�%
dense_33_input��������� 
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_190305�ijklmnopqrst?�<
5�2
(�%
dense_33_input��������� 
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_191978}ijklmnopqrst7�4
-�*
 �
inputs��������� 
p 

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_192080}ijklmnopqrst7�4
-�*
 �
inputs��������� 
p

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_192168�ijklmnopqrst>�;
4�1
'�$
"�
inputs_0��������� 
p 

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_192270�ijklmnopqrst>�;
4�1
'�$
"�
inputs_0��������� 
p

 
� "4�1
*�'
tensor_0���������
� �
.__inference_sequential_11_layer_call_fn_190012�ijklmnopqrst?�<
5�2
(�%
dense_33_input��������� 
p 

 
� ";�8
unknown+����������������������������
.__inference_sequential_11_layer_call_fn_190229�ijklmnopqrst?�<
5�2
(�%
dense_33_input��������� 
p

 
� ";�8
unknown+����������������������������
.__inference_sequential_11_layer_call_fn_191803�ijklmnopqrst7�4
-�*
 �
inputs��������� 
p 

 
� ";�8
unknown+����������������������������
.__inference_sequential_11_layer_call_fn_191832�ijklmnopqrst7�4
-�*
 �
inputs��������� 
p

 
� ";�8
unknown+����������������������������
.__inference_sequential_11_layer_call_fn_191861yijklmnopqrst>�;
4�1
'�$
"�
inputs_0��������� 
p 

 
� ")�&
unknown����������
.__inference_sequential_11_layer_call_fn_191890yijklmnopqrst>�;
4�1
'�$
"�
inputs_0��������� 
p

 
� ")�&
unknown����������
$__inference_signature_wrapper_191217�*+9:HIWXijklmnopqrstS�P
� 
I�F
D
conv2d_10_input1�.
conv2d_10_input���������"E�B
@
sequential_11/�,
sequential_11����������
K__inference_up_sampling2d_9_layer_call_and_return_conditional_losses_192467�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_up_sampling2d_9_layer_call_fn_192455�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4������������������������������������