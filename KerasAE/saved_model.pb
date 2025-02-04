��
��
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
.
Identity

input"T
output"T"	
Ttype
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
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8��
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
Adam/v/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_32/bias
{
)Adam/v/conv2d_32/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_32/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_32/bias
{
)Adam/m/conv2d_32/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_32/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_32/kernel
�
+Adam/v/conv2d_32/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_32/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_32/kernel
�
+Adam/m/conv2d_32/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_32/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_31/bias
{
)Adam/v/conv2d_31/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_31/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_31/bias
{
)Adam/m/conv2d_31/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_31/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_31/kernel
�
+Adam/v/conv2d_31/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_31/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_31/kernel
�
+Adam/m/conv2d_31/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_31/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_30/bias
{
)Adam/v/conv2d_30/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_30/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_30/bias
{
)Adam/m/conv2d_30/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_30/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_30/kernel
�
+Adam/v/conv2d_30/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_30/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_30/kernel
�
+Adam/m/conv2d_30/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_30/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_29/bias
{
)Adam/v/conv2d_29/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_29/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_29/bias
{
)Adam/m/conv2d_29/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_29/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_29/kernel
�
+Adam/v/conv2d_29/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_29/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_29/kernel
�
+Adam/m/conv2d_29/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_29/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_24/bias
{
)Adam/v/conv2d_24/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_24/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_24/bias
{
)Adam/m/conv2d_24/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_24/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_24/kernel
�
+Adam/v/conv2d_24/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_24/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_24/kernel
�
+Adam/m/conv2d_24/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_24/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_23/bias
{
)Adam/v/conv2d_23/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_23/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_23/bias
{
)Adam/m/conv2d_23/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_23/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_23/kernel
�
+Adam/v/conv2d_23/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_23/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_23/kernel
�
+Adam/m/conv2d_23/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_23/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_22/bias
{
)Adam/v/conv2d_22/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_22/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_22/bias
{
)Adam/m/conv2d_22/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_22/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_22/kernel
�
+Adam/v/conv2d_22/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_22/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_22/kernel
�
+Adam/m/conv2d_22/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_22/kernel*&
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
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:*
dtype0
�
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:*
dtype0
t
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_31/bias
m
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes
:*
dtype0
�
conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_31/kernel
}
$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*&
_output_shapes
:*
dtype0
t
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_30/bias
m
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes
:*
dtype0
�
conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_30/kernel
}
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*&
_output_shapes
:*
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:*
dtype0
�
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
:*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:*
dtype0
�
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:*
dtype0
�
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0
�
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0
�
serving_default_conv2d_22_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_22_inputconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_177692

NoOpNoOp
�s
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�r
value�rB�r B�r
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
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
�
?layer_with_weights-0
?layer-0
@layer-1
Alayer_with_weights-1
Alayer-2
Blayer-3
Clayer_with_weights-2
Clayer-4
Dlayer-5
Elayer_with_weights-3
Elayer-6
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses*
j
0
1
'2
(3
64
75
L6
M7
N8
O9
P10
Q11
R12
S13*
j
0
1
'2
(3
64
75
L6
M7
N8
O9
P10
Q11
R12
S13*
* 
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ytrace_0
Ztrace_1
[trace_2
\trace_3* 
6
]trace_0
^trace_1
_trace_2
`trace_3* 
* 
�
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla*

hserving_default* 

0
1*

0
1*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

utrace_0* 

vtrace_0* 

'0
(1*

'0
(1*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

60
71*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Lkernel
Mbias
!�_jit_compiled_convolution_op*
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

Nkernel
Obias
!�_jit_compiled_convolution_op*
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

Pkernel
Qbias
!�_jit_compiled_convolution_op*
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

Rkernel
Sbias
!�_jit_compiled_convolution_op*
<
L0
M1
N2
O3
P4
Q5
R6
S7*
<
L0
M1
N2
O3
P4
Q5
R6
S7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*
V
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5* 
V
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5* 
PJ
VARIABLE_VALUEconv2d_29/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_29/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_30/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_30/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_31/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_31/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_32/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_32/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
b0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
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
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
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
P0
Q1*

P0
Q1*
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
R0
S1*

R0
S1*
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
5
?0
@1
A2
B3
C4
D5
E6*
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
b\
VARIABLE_VALUEAdam/m/conv2d_22/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_22/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_22/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_22/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_23/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_23/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_23/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_23/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_24/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_24/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_24/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_24/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_29/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_29/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_29/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_29/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_30/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_30/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_30/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_30/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_31/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_31/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_31/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_31/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_32/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_32/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_32/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_32/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
�0
�1*

�	variables*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp+Adam/m/conv2d_22/kernel/Read/ReadVariableOp+Adam/v/conv2d_22/kernel/Read/ReadVariableOp)Adam/m/conv2d_22/bias/Read/ReadVariableOp)Adam/v/conv2d_22/bias/Read/ReadVariableOp+Adam/m/conv2d_23/kernel/Read/ReadVariableOp+Adam/v/conv2d_23/kernel/Read/ReadVariableOp)Adam/m/conv2d_23/bias/Read/ReadVariableOp)Adam/v/conv2d_23/bias/Read/ReadVariableOp+Adam/m/conv2d_24/kernel/Read/ReadVariableOp+Adam/v/conv2d_24/kernel/Read/ReadVariableOp)Adam/m/conv2d_24/bias/Read/ReadVariableOp)Adam/v/conv2d_24/bias/Read/ReadVariableOp+Adam/m/conv2d_29/kernel/Read/ReadVariableOp+Adam/v/conv2d_29/kernel/Read/ReadVariableOp)Adam/m/conv2d_29/bias/Read/ReadVariableOp)Adam/v/conv2d_29/bias/Read/ReadVariableOp+Adam/m/conv2d_30/kernel/Read/ReadVariableOp+Adam/v/conv2d_30/kernel/Read/ReadVariableOp)Adam/m/conv2d_30/bias/Read/ReadVariableOp)Adam/v/conv2d_30/bias/Read/ReadVariableOp+Adam/m/conv2d_31/kernel/Read/ReadVariableOp+Adam/v/conv2d_31/kernel/Read/ReadVariableOp)Adam/m/conv2d_31/bias/Read/ReadVariableOp)Adam/v/conv2d_31/bias/Read/ReadVariableOp+Adam/m/conv2d_32/kernel/Read/ReadVariableOp+Adam/v/conv2d_32/kernel/Read/ReadVariableOp)Adam/m/conv2d_32/bias/Read/ReadVariableOp)Adam/v/conv2d_32/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*;
Tin4
220	*
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
__inference__traced_save_178536
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/bias	iterationlearning_rateAdam/m/conv2d_22/kernelAdam/v/conv2d_22/kernelAdam/m/conv2d_22/biasAdam/v/conv2d_22/biasAdam/m/conv2d_23/kernelAdam/v/conv2d_23/kernelAdam/m/conv2d_23/biasAdam/v/conv2d_23/biasAdam/m/conv2d_24/kernelAdam/v/conv2d_24/kernelAdam/m/conv2d_24/biasAdam/v/conv2d_24/biasAdam/m/conv2d_29/kernelAdam/v/conv2d_29/kernelAdam/m/conv2d_29/biasAdam/v/conv2d_29/biasAdam/m/conv2d_30/kernelAdam/v/conv2d_30/kernelAdam/m/conv2d_30/biasAdam/v/conv2d_30/biasAdam/m/conv2d_31/kernelAdam/v/conv2d_31/kernelAdam/m/conv2d_31/biasAdam/v/conv2d_31/biasAdam/m/conv2d_32/kernelAdam/v/conv2d_32/kernelAdam/m/conv2d_32/biasAdam/v/conv2d_32/biastotalcount*:
Tin3
12/*
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
"__inference__traced_restore_178684��
�
L
0__inference_max_pooling2d_7_layer_call_fn_177919

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
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803�
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
�
(__inference_model_2_layer_call_fn_177725

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_177292w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
.__inference_sequential_10_layer_call_fn_178005

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_176966�
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_24_layer_call_fn_177963

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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_30_layer_call_and_return_conditional_losses_178301

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
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
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�$
�
C__inference_model_2_layer_call_and_return_conditional_losses_177655
conv2d_22_input*
conv2d_22_177619:
conv2d_22_177621:*
conv2d_23_177625:
conv2d_23_177627:*
conv2d_24_177631:
conv2d_24_177633:.
sequential_10_177637:"
sequential_10_177639:.
sequential_10_177641:"
sequential_10_177643:.
sequential_10_177645:"
sequential_10_177647:.
sequential_10_177649:"
sequential_10_177651:
identity��!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�%sequential_10/StatefulPartitionedCall�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputconv2d_22_177619conv2d_22_177621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187�
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_23_177625conv2d_23_177627*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_24_177631conv2d_24_177633*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0sequential_10_177637sequential_10_177639sequential_10_177641sequential_10_177643sequential_10_177645sequential_10_177647sequential_10_177649sequential_10_177651*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177390�
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
�
�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223

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
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_178112

inputsB
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_23_layer_call_fn_177933

inputs!
unknown:
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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_177984

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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
h
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_178281

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
�
�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177974

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
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_12_layer_call_fn_178269

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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846�
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
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_177954

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_177924

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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
h
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846

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
�
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177944

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�a
�
C__inference_model_2_layer_call_and_return_conditional_losses_177826

inputsB
(conv2d_22_conv2d_readvariableop_resource:7
)conv2d_22_biasadd_readvariableop_resource:B
(conv2d_23_conv2d_readvariableop_resource:7
)conv2d_23_biasadd_readvariableop_resource:B
(conv2d_24_conv2d_readvariableop_resource:7
)conv2d_24_biasadd_readvariableop_resource:P
6sequential_10_conv2d_29_conv2d_readvariableop_resource:E
7sequential_10_conv2d_29_biasadd_readvariableop_resource:P
6sequential_10_conv2d_30_conv2d_readvariableop_resource:E
7sequential_10_conv2d_30_biasadd_readvariableop_resource:P
6sequential_10_conv2d_31_conv2d_readvariableop_resource:E
7sequential_10_conv2d_31_biasadd_readvariableop_resource:P
6sequential_10_conv2d_32_conv2d_readvariableop_resource:E
7sequential_10_conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_22/BiasAdd/ReadVariableOp�conv2d_22/Conv2D/ReadVariableOp� conv2d_23/BiasAdd/ReadVariableOp�conv2d_23/Conv2D/ReadVariableOp� conv2d_24/BiasAdd/ReadVariableOp�conv2d_24/Conv2D/ReadVariableOp�.sequential_10/conv2d_29/BiasAdd/ReadVariableOp�-sequential_10/conv2d_29/Conv2D/ReadVariableOp�.sequential_10/conv2d_30/BiasAdd/ReadVariableOp�-sequential_10/conv2d_30/Conv2D/ReadVariableOp�.sequential_10/conv2d_31/BiasAdd/ReadVariableOp�-sequential_10/conv2d_31/Conv2D/ReadVariableOp�.sequential_10/conv2d_32/BiasAdd/ReadVariableOp�-sequential_10/conv2d_32/Conv2D/ReadVariableOp�
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_22/Conv2DConv2Dinputs'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_7/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_23/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_8/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_24/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_9/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
-sequential_10/conv2d_29/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_29/Conv2DConv2D max_pooling2d_9/MaxPool:output:05sequential_10/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_29/BiasAddBiasAdd'sequential_10/conv2d_29/Conv2D:output:06sequential_10/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_29/ReluRelu(sequential_10/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_12/mulMul-sequential_10/up_sampling2d_12/Const:output:0/sequential_10/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_29/Relu:activations:0&sequential_10/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_30/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_30/Conv2DConv2DLsequential_10/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_30/BiasAddBiasAdd'sequential_10/conv2d_30/Conv2D:output:06sequential_10/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_30/ReluRelu(sequential_10/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_13/mulMul-sequential_10/up_sampling2d_13/Const:output:0/sequential_10/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_30/Relu:activations:0&sequential_10/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_31/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_31/Conv2DConv2DLsequential_10/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
.sequential_10/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_31/BiasAddBiasAdd'sequential_10/conv2d_31/Conv2D:output:06sequential_10/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_31/ReluRelu(sequential_10/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_14/mulMul-sequential_10/up_sampling2d_14/Const:output:0/sequential_10/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_31/Relu:activations:0&sequential_10/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_32/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_32/Conv2DConv2DLsequential_10/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_32/BiasAddBiasAdd'sequential_10/conv2d_32/Conv2D:output:06sequential_10/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_32/SigmoidSigmoid(sequential_10/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������z
IdentityIdentity#sequential_10/conv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp/^sequential_10/conv2d_29/BiasAdd/ReadVariableOp.^sequential_10/conv2d_29/Conv2D/ReadVariableOp/^sequential_10/conv2d_30/BiasAdd/ReadVariableOp.^sequential_10/conv2d_30/Conv2D/ReadVariableOp/^sequential_10/conv2d_31/BiasAdd/ReadVariableOp.^sequential_10/conv2d_31/Conv2D/ReadVariableOp/^sequential_10/conv2d_32/BiasAdd/ReadVariableOp.^sequential_10/conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_29/BiasAdd/ReadVariableOp.sequential_10/conv2d_29/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_29/Conv2D/ReadVariableOp-sequential_10/conv2d_29/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_30/BiasAdd/ReadVariableOp.sequential_10/conv2d_30/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_30/Conv2D/ReadVariableOp-sequential_10/conv2d_30/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_31/BiasAdd/ReadVariableOp.sequential_10/conv2d_31/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_31/Conv2D/ReadVariableOp-sequential_10/conv2d_31/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_32/BiasAdd/ReadVariableOp.sequential_10/conv2d_32/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_32/Conv2D/ReadVariableOp-sequential_10/conv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_9_layer_call_fn_177979

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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827�
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
�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_178264

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
.__inference_sequential_10_layer_call_fn_178026

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177075�
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_8_layer_call_fn_177949

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
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815�
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
�
E__inference_conv2d_32_layer_call_and_return_conditional_losses_178375

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
-:+���������������������������*
paddingSAME*
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
�
�
*__inference_conv2d_29_layer_call_fn_178253

inputs!
unknown:
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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
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
-:+���������������������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_31_layer_call_fn_178327

inputs!
unknown:
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941�
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
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�l
�
!__inference__wrapped_model_176794
conv2d_22_inputJ
0model_2_conv2d_22_conv2d_readvariableop_resource:?
1model_2_conv2d_22_biasadd_readvariableop_resource:J
0model_2_conv2d_23_conv2d_readvariableop_resource:?
1model_2_conv2d_23_biasadd_readvariableop_resource:J
0model_2_conv2d_24_conv2d_readvariableop_resource:?
1model_2_conv2d_24_biasadd_readvariableop_resource:X
>model_2_sequential_10_conv2d_29_conv2d_readvariableop_resource:M
?model_2_sequential_10_conv2d_29_biasadd_readvariableop_resource:X
>model_2_sequential_10_conv2d_30_conv2d_readvariableop_resource:M
?model_2_sequential_10_conv2d_30_biasadd_readvariableop_resource:X
>model_2_sequential_10_conv2d_31_conv2d_readvariableop_resource:M
?model_2_sequential_10_conv2d_31_biasadd_readvariableop_resource:X
>model_2_sequential_10_conv2d_32_conv2d_readvariableop_resource:M
?model_2_sequential_10_conv2d_32_biasadd_readvariableop_resource:
identity��(model_2/conv2d_22/BiasAdd/ReadVariableOp�'model_2/conv2d_22/Conv2D/ReadVariableOp�(model_2/conv2d_23/BiasAdd/ReadVariableOp�'model_2/conv2d_23/Conv2D/ReadVariableOp�(model_2/conv2d_24/BiasAdd/ReadVariableOp�'model_2/conv2d_24/Conv2D/ReadVariableOp�6model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp�5model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp�6model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOp�5model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOp�6model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOp�5model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOp�6model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOp�5model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOp�
'model_2/conv2d_22/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/conv2d_22/Conv2DConv2Dconv2d_22_input/model_2/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
(model_2/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv2d_22/BiasAddBiasAdd!model_2/conv2d_22/Conv2D:output:00model_2/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������|
model_2/conv2d_22/ReluRelu"model_2/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:����������
model_2/max_pooling2d_7/MaxPoolMaxPool$model_2/conv2d_22/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
'model_2/conv2d_23/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/conv2d_23/Conv2DConv2D(model_2/max_pooling2d_7/MaxPool:output:0/model_2/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
(model_2/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv2d_23/BiasAddBiasAdd!model_2/conv2d_23/Conv2D:output:00model_2/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������|
model_2/conv2d_23/ReluRelu"model_2/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:����������
model_2/max_pooling2d_8/MaxPoolMaxPool$model_2/conv2d_23/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
'model_2/conv2d_24/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/conv2d_24/Conv2DConv2D(model_2/max_pooling2d_8/MaxPool:output:0/model_2/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
(model_2/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv2d_24/BiasAddBiasAdd!model_2/conv2d_24/Conv2D:output:00model_2/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������|
model_2/conv2d_24/ReluRelu"model_2/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:����������
model_2/max_pooling2d_9/MaxPoolMaxPool$model_2/conv2d_24/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
5model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOpReadVariableOp>model_2_sequential_10_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&model_2/sequential_10/conv2d_29/Conv2DConv2D(model_2/max_pooling2d_9/MaxPool:output:0=model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
6model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp?model_2_sequential_10_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_2/sequential_10/conv2d_29/BiasAddBiasAdd/model_2/sequential_10/conv2d_29/Conv2D:output:0>model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
$model_2/sequential_10/conv2d_29/ReluRelu0model_2/sequential_10/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������}
,model_2/sequential_10/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.model_2/sequential_10/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
*model_2/sequential_10/up_sampling2d_12/mulMul5model_2/sequential_10/up_sampling2d_12/Const:output:07model_2/sequential_10/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
Cmodel_2/sequential_10/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighbor2model_2/sequential_10/conv2d_29/Relu:activations:0.model_2/sequential_10/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
5model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOpReadVariableOp>model_2_sequential_10_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&model_2/sequential_10/conv2d_30/Conv2DConv2DTmodel_2/sequential_10/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0=model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
6model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp?model_2_sequential_10_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_2/sequential_10/conv2d_30/BiasAddBiasAdd/model_2/sequential_10/conv2d_30/Conv2D:output:0>model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
$model_2/sequential_10/conv2d_30/ReluRelu0model_2/sequential_10/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������}
,model_2/sequential_10/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.model_2/sequential_10/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
*model_2/sequential_10/up_sampling2d_13/mulMul5model_2/sequential_10/up_sampling2d_13/Const:output:07model_2/sequential_10/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
Cmodel_2/sequential_10/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor2model_2/sequential_10/conv2d_30/Relu:activations:0.model_2/sequential_10/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
5model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOpReadVariableOp>model_2_sequential_10_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&model_2/sequential_10/conv2d_31/Conv2DConv2DTmodel_2/sequential_10/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0=model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
6model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp?model_2_sequential_10_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_2/sequential_10/conv2d_31/BiasAddBiasAdd/model_2/sequential_10/conv2d_31/Conv2D:output:0>model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
$model_2/sequential_10/conv2d_31/ReluRelu0model_2/sequential_10/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������}
,model_2/sequential_10/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.model_2/sequential_10/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
*model_2/sequential_10/up_sampling2d_14/mulMul5model_2/sequential_10/up_sampling2d_14/Const:output:07model_2/sequential_10/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
Cmodel_2/sequential_10/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor2model_2/sequential_10/conv2d_31/Relu:activations:0.model_2/sequential_10/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
5model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOpReadVariableOp>model_2_sequential_10_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&model_2/sequential_10/conv2d_32/Conv2DConv2DTmodel_2/sequential_10/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0=model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
6model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp?model_2_sequential_10_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
'model_2/sequential_10/conv2d_32/BiasAddBiasAdd/model_2/sequential_10/conv2d_32/Conv2D:output:0>model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
'model_2/sequential_10/conv2d_32/SigmoidSigmoid0model_2/sequential_10/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:����������
IdentityIdentity+model_2/sequential_10/conv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp)^model_2/conv2d_22/BiasAdd/ReadVariableOp(^model_2/conv2d_22/Conv2D/ReadVariableOp)^model_2/conv2d_23/BiasAdd/ReadVariableOp(^model_2/conv2d_23/Conv2D/ReadVariableOp)^model_2/conv2d_24/BiasAdd/ReadVariableOp(^model_2/conv2d_24/Conv2D/ReadVariableOp7^model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp6^model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp7^model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOp6^model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOp7^model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOp6^model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOp7^model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOp6^model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2T
(model_2/conv2d_22/BiasAdd/ReadVariableOp(model_2/conv2d_22/BiasAdd/ReadVariableOp2R
'model_2/conv2d_22/Conv2D/ReadVariableOp'model_2/conv2d_22/Conv2D/ReadVariableOp2T
(model_2/conv2d_23/BiasAdd/ReadVariableOp(model_2/conv2d_23/BiasAdd/ReadVariableOp2R
'model_2/conv2d_23/Conv2D/ReadVariableOp'model_2/conv2d_23/Conv2D/ReadVariableOp2T
(model_2/conv2d_24/BiasAdd/ReadVariableOp(model_2/conv2d_24/BiasAdd/ReadVariableOp2R
'model_2/conv2d_24/Conv2D/ReadVariableOp'model_2/conv2d_24/Conv2D/ReadVariableOp2p
6model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp6model_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp2n
5model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp5model_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp2p
6model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOp6model_2/sequential_10/conv2d_30/BiasAdd/ReadVariableOp2n
5model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOp5model_2/sequential_10/conv2d_30/Conv2D/ReadVariableOp2p
6model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOp6model_2/sequential_10/conv2d_31/BiasAdd/ReadVariableOp2n
5model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOp5model_2/sequential_10/conv2d_31/Conv2D/ReadVariableOp2p
6model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOp6model_2/sequential_10/conv2d_32/BiasAdd/ReadVariableOp2n
5model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOp5model_2/sequential_10/conv2d_32/Conv2D/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_177273

inputsB
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
.__inference_sequential_10_layer_call_fn_177115
conv2d_29_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_29_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177075�
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_29_input
�a
�
C__inference_model_2_layer_call_and_return_conditional_losses_177894

inputsB
(conv2d_22_conv2d_readvariableop_resource:7
)conv2d_22_biasadd_readvariableop_resource:B
(conv2d_23_conv2d_readvariableop_resource:7
)conv2d_23_biasadd_readvariableop_resource:B
(conv2d_24_conv2d_readvariableop_resource:7
)conv2d_24_biasadd_readvariableop_resource:P
6sequential_10_conv2d_29_conv2d_readvariableop_resource:E
7sequential_10_conv2d_29_biasadd_readvariableop_resource:P
6sequential_10_conv2d_30_conv2d_readvariableop_resource:E
7sequential_10_conv2d_30_biasadd_readvariableop_resource:P
6sequential_10_conv2d_31_conv2d_readvariableop_resource:E
7sequential_10_conv2d_31_biasadd_readvariableop_resource:P
6sequential_10_conv2d_32_conv2d_readvariableop_resource:E
7sequential_10_conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_22/BiasAdd/ReadVariableOp�conv2d_22/Conv2D/ReadVariableOp� conv2d_23/BiasAdd/ReadVariableOp�conv2d_23/Conv2D/ReadVariableOp� conv2d_24/BiasAdd/ReadVariableOp�conv2d_24/Conv2D/ReadVariableOp�.sequential_10/conv2d_29/BiasAdd/ReadVariableOp�-sequential_10/conv2d_29/Conv2D/ReadVariableOp�.sequential_10/conv2d_30/BiasAdd/ReadVariableOp�-sequential_10/conv2d_30/Conv2D/ReadVariableOp�.sequential_10/conv2d_31/BiasAdd/ReadVariableOp�-sequential_10/conv2d_31/Conv2D/ReadVariableOp�.sequential_10/conv2d_32/BiasAdd/ReadVariableOp�-sequential_10/conv2d_32/Conv2D/ReadVariableOp�
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_22/Conv2DConv2Dinputs'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_7/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_23/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_8/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_24/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_9/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
-sequential_10/conv2d_29/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_29/Conv2DConv2D max_pooling2d_9/MaxPool:output:05sequential_10/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_29/BiasAddBiasAdd'sequential_10/conv2d_29/Conv2D:output:06sequential_10/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_29/ReluRelu(sequential_10/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_12/mulMul-sequential_10/up_sampling2d_12/Const:output:0/sequential_10/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_29/Relu:activations:0&sequential_10/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_30/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_30/Conv2DConv2DLsequential_10/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_30/BiasAddBiasAdd'sequential_10/conv2d_30/Conv2D:output:06sequential_10/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_30/ReluRelu(sequential_10/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_13/mulMul-sequential_10/up_sampling2d_13/Const:output:0/sequential_10/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_30/Relu:activations:0&sequential_10/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_31/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_31/Conv2DConv2DLsequential_10/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
.sequential_10/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_31/BiasAddBiasAdd'sequential_10/conv2d_31/Conv2D:output:06sequential_10/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_31/ReluRelu(sequential_10/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������u
$sequential_10/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_10/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_10/up_sampling2d_14/mulMul-sequential_10/up_sampling2d_14/Const:output:0/sequential_10/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_10/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_10/conv2d_31/Relu:activations:0&sequential_10/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
-sequential_10/conv2d_32/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_10/conv2d_32/Conv2DConv2DLsequential_10/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_10/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/conv2d_32/BiasAddBiasAdd'sequential_10/conv2d_32/Conv2D:output:06sequential_10/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_10/conv2d_32/SigmoidSigmoid(sequential_10/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������z
IdentityIdentity#sequential_10/conv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp/^sequential_10/conv2d_29/BiasAdd/ReadVariableOp.^sequential_10/conv2d_29/Conv2D/ReadVariableOp/^sequential_10/conv2d_30/BiasAdd/ReadVariableOp.^sequential_10/conv2d_30/Conv2D/ReadVariableOp/^sequential_10/conv2d_31/BiasAdd/ReadVariableOp.^sequential_10/conv2d_31/Conv2D/ReadVariableOp/^sequential_10/conv2d_32/BiasAdd/ReadVariableOp.^sequential_10/conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_29/BiasAdd/ReadVariableOp.sequential_10/conv2d_29/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_29/Conv2D/ReadVariableOp-sequential_10/conv2d_29/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_30/BiasAdd/ReadVariableOp.sequential_10/conv2d_30/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_30/Conv2D/ReadVariableOp-sequential_10/conv2d_30/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_31/BiasAdd/ReadVariableOp.sequential_10/conv2d_31/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_31/Conv2D/ReadVariableOp-sequential_10/conv2d_31/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_32/BiasAdd/ReadVariableOp.sequential_10/conv2d_32/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_32/Conv2D/ReadVariableOp-sequential_10/conv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_178156

inputsB
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
.__inference_sequential_10_layer_call_fn_178068
inputs_0!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177390w
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
M
1__inference_up_sampling2d_14_layer_call_fn_178343

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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884�
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
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_178200
inputs_0B
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs_0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�$
�
C__inference_model_2_layer_call_and_return_conditional_losses_177513

inputs*
conv2d_22_177477:
conv2d_22_177479:*
conv2d_23_177483:
conv2d_23_177485:*
conv2d_24_177489:
conv2d_24_177491:.
sequential_10_177495:"
sequential_10_177497:.
sequential_10_177499:"
sequential_10_177501:.
sequential_10_177503:"
sequential_10_177505:.
sequential_10_177507:"
sequential_10_177509:
identity��!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�%sequential_10/StatefulPartitionedCall�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_177477conv2d_22_177479*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187�
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_23_177483conv2d_23_177485*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_24_177489conv2d_24_177491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0sequential_10_177495sequential_10_177497sequential_10_177499sequential_10_177501sequential_10_177503sequential_10_177505sequential_10_177507sequential_10_177509*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177390�
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_177323
conv2d_22_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_177292w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
�
�
*__inference_conv2d_32_layer_call_fn_178364

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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959�
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
�
�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177914

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
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
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
�!
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_177169
conv2d_29_input*
conv2d_29_177145:
conv2d_29_177147:*
conv2d_30_177151:
conv2d_30_177153:*
conv2d_31_177157:
conv2d_31_177159:*
conv2d_32_177163:
conv2d_32_177165:
identity��!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall�!conv2d_31/StatefulPartitionedCall�!conv2d_32/StatefulPartitionedCall�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCallconv2d_29_inputconv2d_29_177145conv2d_29_177147*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905�
 up_sampling2d_12/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_30_177151conv2d_30_177153*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923�
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865�
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_31_177157conv2d_31_177159*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941�
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_32_177163conv2d_32_177165*
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959�
IdentityIdentity*conv2d_32/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_29_input
�
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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

�
.__inference_sequential_10_layer_call_fn_176985
conv2d_29_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_29_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_176966�
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_29_input
�
h
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_178318

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
�
�
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
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
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
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
-:+���������������������������w
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
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
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
�Z
�
__inference__traced_save_178536
file_prefix/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop6
2savev2_adam_m_conv2d_22_kernel_read_readvariableop6
2savev2_adam_v_conv2d_22_kernel_read_readvariableop4
0savev2_adam_m_conv2d_22_bias_read_readvariableop4
0savev2_adam_v_conv2d_22_bias_read_readvariableop6
2savev2_adam_m_conv2d_23_kernel_read_readvariableop6
2savev2_adam_v_conv2d_23_kernel_read_readvariableop4
0savev2_adam_m_conv2d_23_bias_read_readvariableop4
0savev2_adam_v_conv2d_23_bias_read_readvariableop6
2savev2_adam_m_conv2d_24_kernel_read_readvariableop6
2savev2_adam_v_conv2d_24_kernel_read_readvariableop4
0savev2_adam_m_conv2d_24_bias_read_readvariableop4
0savev2_adam_v_conv2d_24_bias_read_readvariableop6
2savev2_adam_m_conv2d_29_kernel_read_readvariableop6
2savev2_adam_v_conv2d_29_kernel_read_readvariableop4
0savev2_adam_m_conv2d_29_bias_read_readvariableop4
0savev2_adam_v_conv2d_29_bias_read_readvariableop6
2savev2_adam_m_conv2d_30_kernel_read_readvariableop6
2savev2_adam_v_conv2d_30_kernel_read_readvariableop4
0savev2_adam_m_conv2d_30_bias_read_readvariableop4
0savev2_adam_v_conv2d_30_bias_read_readvariableop6
2savev2_adam_m_conv2d_31_kernel_read_readvariableop6
2savev2_adam_v_conv2d_31_kernel_read_readvariableop4
0savev2_adam_m_conv2d_31_bias_read_readvariableop4
0savev2_adam_v_conv2d_31_bias_read_readvariableop6
2savev2_adam_m_conv2d_32_kernel_read_readvariableop6
2savev2_adam_v_conv2d_32_kernel_read_readvariableop4
0savev2_adam_m_conv2d_32_bias_read_readvariableop4
0savev2_adam_v_conv2d_32_bias_read_readvariableop$
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*�
value�B�/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop2savev2_adam_m_conv2d_22_kernel_read_readvariableop2savev2_adam_v_conv2d_22_kernel_read_readvariableop0savev2_adam_m_conv2d_22_bias_read_readvariableop0savev2_adam_v_conv2d_22_bias_read_readvariableop2savev2_adam_m_conv2d_23_kernel_read_readvariableop2savev2_adam_v_conv2d_23_kernel_read_readvariableop0savev2_adam_m_conv2d_23_bias_read_readvariableop0savev2_adam_v_conv2d_23_bias_read_readvariableop2savev2_adam_m_conv2d_24_kernel_read_readvariableop2savev2_adam_v_conv2d_24_kernel_read_readvariableop0savev2_adam_m_conv2d_24_bias_read_readvariableop0savev2_adam_v_conv2d_24_bias_read_readvariableop2savev2_adam_m_conv2d_29_kernel_read_readvariableop2savev2_adam_v_conv2d_29_kernel_read_readvariableop0savev2_adam_m_conv2d_29_bias_read_readvariableop0savev2_adam_v_conv2d_29_bias_read_readvariableop2savev2_adam_m_conv2d_30_kernel_read_readvariableop2savev2_adam_v_conv2d_30_kernel_read_readvariableop0savev2_adam_m_conv2d_30_bias_read_readvariableop0savev2_adam_v_conv2d_30_bias_read_readvariableop2savev2_adam_m_conv2d_31_kernel_read_readvariableop2savev2_adam_v_conv2d_31_kernel_read_readvariableop0savev2_adam_m_conv2d_31_bias_read_readvariableop0savev2_adam_v_conv2d_31_bias_read_readvariableop2savev2_adam_m_conv2d_32_kernel_read_readvariableop2savev2_adam_v_conv2d_32_kernel_read_readvariableop0savev2_adam_m_conv2d_32_bias_read_readvariableop0savev2_adam_v_conv2d_32_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *=
dtypes3
12/	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::::::::: : ::::::::::::::::::::::::::::: : : 2(
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
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
::-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: 
�!
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_176966

inputs*
conv2d_29_176906:
conv2d_29_176908:*
conv2d_30_176924:
conv2d_30_176926:*
conv2d_31_176942:
conv2d_31_176944:*
conv2d_32_176960:
conv2d_32_176962:
identity��!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall�!conv2d_31/StatefulPartitionedCall�!conv2d_32/StatefulPartitionedCall�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_29_176906conv2d_29_176908*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905�
 up_sampling2d_12/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_30_176924conv2d_30_176926*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923�
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865�
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_31_176942conv2d_31_176944*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941�
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_32_176960conv2d_32_176962*
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959�
IdentityIdentity*conv2d_32/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_13_layer_call_fn_178306

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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865�
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
�$
�
C__inference_model_2_layer_call_and_return_conditional_losses_177616
conv2d_22_input*
conv2d_22_177580:
conv2d_22_177582:*
conv2d_23_177586:
conv2d_23_177588:*
conv2d_24_177592:
conv2d_24_177594:.
sequential_10_177598:"
sequential_10_177600:.
sequential_10_177602:"
sequential_10_177604:.
sequential_10_177606:"
sequential_10_177608:.
sequential_10_177610:"
sequential_10_177612:
identity��!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�%sequential_10/StatefulPartitionedCall�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputconv2d_22_177580conv2d_22_177582*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187�
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_23_177586conv2d_23_177588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_24_177592conv2d_24_177594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0sequential_10_177598sequential_10_177600sequential_10_177602sequential_10_177604sequential_10_177606sequential_10_177608sequential_10_177610sequential_10_177612*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177273�
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
�!
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_177142
conv2d_29_input*
conv2d_29_177118:
conv2d_29_177120:*
conv2d_30_177124:
conv2d_30_177126:*
conv2d_31_177130:
conv2d_31_177132:*
conv2d_32_177136:
conv2d_32_177138:
identity��!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall�!conv2d_31/StatefulPartitionedCall�!conv2d_32/StatefulPartitionedCall�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCallconv2d_29_inputconv2d_29_177118conv2d_29_177120*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905�
 up_sampling2d_12/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_30_177124conv2d_30_177126*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923�
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865�
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_31_177130conv2d_31_177132*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941�
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_32_177136conv2d_32_177138*
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959�
IdentityIdentity*conv2d_32/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_29_input
�
�
E__inference_conv2d_31_layer_call_and_return_conditional_losses_178338

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
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
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
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
-:+���������������������������w
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
h
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_178355

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
�
�
*__inference_conv2d_30_layer_call_fn_178290

inputs!
unknown:
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923�
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
�
h
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884

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
�

�
.__inference_sequential_10_layer_call_fn_178047
inputs_0!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177273w
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
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_177577
conv2d_22_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_177513w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
�
�
*__inference_conv2d_22_layer_call_fn_177903

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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
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
�
�
$__inference_signature_wrapper_177692
conv2d_22_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_176794w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_22_input
��
�
"__inference__traced_restore_178684
file_prefix;
!assignvariableop_conv2d_22_kernel:/
!assignvariableop_1_conv2d_22_bias:=
#assignvariableop_2_conv2d_23_kernel:/
!assignvariableop_3_conv2d_23_bias:=
#assignvariableop_4_conv2d_24_kernel:/
!assignvariableop_5_conv2d_24_bias:=
#assignvariableop_6_conv2d_29_kernel:/
!assignvariableop_7_conv2d_29_bias:=
#assignvariableop_8_conv2d_30_kernel:/
!assignvariableop_9_conv2d_30_bias:>
$assignvariableop_10_conv2d_31_kernel:0
"assignvariableop_11_conv2d_31_bias:>
$assignvariableop_12_conv2d_32_kernel:0
"assignvariableop_13_conv2d_32_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: E
+assignvariableop_16_adam_m_conv2d_22_kernel:E
+assignvariableop_17_adam_v_conv2d_22_kernel:7
)assignvariableop_18_adam_m_conv2d_22_bias:7
)assignvariableop_19_adam_v_conv2d_22_bias:E
+assignvariableop_20_adam_m_conv2d_23_kernel:E
+assignvariableop_21_adam_v_conv2d_23_kernel:7
)assignvariableop_22_adam_m_conv2d_23_bias:7
)assignvariableop_23_adam_v_conv2d_23_bias:E
+assignvariableop_24_adam_m_conv2d_24_kernel:E
+assignvariableop_25_adam_v_conv2d_24_kernel:7
)assignvariableop_26_adam_m_conv2d_24_bias:7
)assignvariableop_27_adam_v_conv2d_24_bias:E
+assignvariableop_28_adam_m_conv2d_29_kernel:E
+assignvariableop_29_adam_v_conv2d_29_kernel:7
)assignvariableop_30_adam_m_conv2d_29_bias:7
)assignvariableop_31_adam_v_conv2d_29_bias:E
+assignvariableop_32_adam_m_conv2d_30_kernel:E
+assignvariableop_33_adam_v_conv2d_30_kernel:7
)assignvariableop_34_adam_m_conv2d_30_bias:7
)assignvariableop_35_adam_v_conv2d_30_bias:E
+assignvariableop_36_adam_m_conv2d_31_kernel:E
+assignvariableop_37_adam_v_conv2d_31_kernel:7
)assignvariableop_38_adam_m_conv2d_31_bias:7
)assignvariableop_39_adam_v_conv2d_31_bias:E
+assignvariableop_40_adam_m_conv2d_32_kernel:E
+assignvariableop_41_adam_v_conv2d_32_kernel:7
)assignvariableop_42_adam_m_conv2d_32_bias:7
)assignvariableop_43_adam_v_conv2d_32_bias:#
assignvariableop_44_total: #
assignvariableop_45_count: 
identity_47��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*�
value�B�/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_22_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_22_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_23_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_23_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_24_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_24_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_29_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_29_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_30_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_30_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_31_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_31_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_32_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_32_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv2d_22_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv2d_22_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_conv2d_22_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_conv2d_22_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_m_conv2d_23_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_v_conv2d_23_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_conv2d_23_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_conv2d_23_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_24_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_24_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_24_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_24_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_29_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_29_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_29_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_29_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_m_conv2d_30_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_v_conv2d_30_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_conv2d_30_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_conv2d_30_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_m_conv2d_31_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_v_conv2d_31_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_m_conv2d_31_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_v_conv2d_31_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_m_conv2d_32_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_v_conv2d_32_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_conv2d_32_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_conv2d_32_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�$
�
C__inference_model_2_layer_call_and_return_conditional_losses_177292

inputs*
conv2d_22_177188:
conv2d_22_177190:*
conv2d_23_177206:
conv2d_23_177208:*
conv2d_24_177224:
conv2d_24_177226:.
sequential_10_177274:"
sequential_10_177276:.
sequential_10_177278:"
sequential_10_177280:.
sequential_10_177282:"
sequential_10_177284:.
sequential_10_177286:"
sequential_10_177288:
identity��!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�%sequential_10/StatefulPartitionedCall�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_177188conv2d_22_177190*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187�
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_176803�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_23_177206conv2d_23_177208*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177205�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_176815�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_24_177224conv2d_24_177226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177223�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_176827�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0sequential_10_177274sequential_10_177276sequential_10_177278sequential_10_177280sequential_10_177282sequential_10_177284sequential_10_177286sequential_10_177288*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_177273�
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�!
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_177075

inputs*
conv2d_29_177051:
conv2d_29_177053:*
conv2d_30_177057:
conv2d_30_177059:*
conv2d_31_177063:
conv2d_31_177065:*
conv2d_32_177069:
conv2d_32_177071:
identity��!conv2d_29/StatefulPartitionedCall�!conv2d_30/StatefulPartitionedCall�!conv2d_31/StatefulPartitionedCall�!conv2d_32/StatefulPartitionedCall�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_29_177051conv2d_29_177053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_176905�
 up_sampling2d_12/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_176846�
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_30_177057conv2d_30_177059*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_176923�
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865�
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_31_177063conv2d_31_177065*
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
GPU 2J 8� *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_176941�
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_176884�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_32_177069conv2d_32_177071*
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959�
IdentityIdentity*conv2d_32/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_176865

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
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_177390

inputsB
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177187

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
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_176959

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
-:+���������������������������*
paddingSAME*
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
�5
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_178244
inputs_0B
(conv2d_29_conv2d_readvariableop_resource:7
)conv2d_29_biasadd_readvariableop_resource:B
(conv2d_30_conv2d_readvariableop_resource:7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:
identity�� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp� conv2d_30/BiasAdd/ReadVariableOp�conv2d_30/Conv2D/ReadVariableOp� conv2d_31/BiasAdd/ReadVariableOp�conv2d_31/Conv2D/ReadVariableOp� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_29/Conv2DConv2Dinputs_0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_30/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_31/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:���������g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:�
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_31/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������r
conv2d_32/SigmoidSigmoidconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������l
IdentityIdentityconv2d_32/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
(__inference_model_2_layer_call_fn_177758

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_177513w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
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
conv2d_22_input@
!serving_default_conv2d_22_input:0���������I
sequential_108
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
�
?layer_with_weights-0
?layer-0
@layer-1
Alayer_with_weights-1
Alayer-2
Blayer-3
Clayer_with_weights-2
Clayer-4
Dlayer-5
Elayer_with_weights-3
Elayer-6
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
0
1
'2
(3
64
75
L6
M7
N8
O9
P10
Q11
R12
S13"
trackable_list_wrapper
�
0
1
'2
(3
64
75
L6
M7
N8
O9
P10
Q11
R12
S13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ytrace_0
Ztrace_1
[trace_2
\trace_32�
(__inference_model_2_layer_call_fn_177323
(__inference_model_2_layer_call_fn_177725
(__inference_model_2_layer_call_fn_177758
(__inference_model_2_layer_call_fn_177577�
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
 zYtrace_0zZtrace_1z[trace_2z\trace_3
�
]trace_0
^trace_1
_trace_2
`trace_32�
C__inference_model_2_layer_call_and_return_conditional_losses_177826
C__inference_model_2_layer_call_and_return_conditional_losses_177894
C__inference_model_2_layer_call_and_return_conditional_losses_177616
C__inference_model_2_layer_call_and_return_conditional_losses_177655�
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
 z]trace_0z^trace_1z_trace_2z`trace_3
�B�
!__inference__wrapped_model_176794conv2d_22_input"�
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
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla"
experimentalOptimizer
,
hserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
*__inference_conv2d_22_layer_call_fn_177903�
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
 zntrace_0
�
otrace_02�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177914�
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
 zotrace_0
*:(2conv2d_22/kernel
:2conv2d_22/bias
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
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
0__inference_max_pooling2d_7_layer_call_fn_177919�
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
 zutrace_0
�
vtrace_02�
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_177924�
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
 zvtrace_0
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
*__inference_conv2d_23_layer_call_fn_177933�
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
 z|trace_0
�
}trace_02�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177944�
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
 z}trace_0
*:(2conv2d_23/kernel
:2conv2d_23/bias
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
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_8_layer_call_fn_177949�
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
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_177954�
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
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_24_layer_call_fn_177963�
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
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177974�
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
*:(2conv2d_24/kernel
:2conv2d_24/bias
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
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_9_layer_call_fn_177979�
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_177984�
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
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Lkernel
Mbias
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
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel
Obias
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
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias
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
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Rkernel
Sbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
X
L0
M1
N2
O3
P4
Q5
R6
S7"
trackable_list_wrapper
X
L0
M1
N2
O3
P4
Q5
R6
S7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_52�
.__inference_sequential_10_layer_call_fn_176985
.__inference_sequential_10_layer_call_fn_178005
.__inference_sequential_10_layer_call_fn_178026
.__inference_sequential_10_layer_call_fn_177115
.__inference_sequential_10_layer_call_fn_178047
.__inference_sequential_10_layer_call_fn_178068�
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
 z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_52�
I__inference_sequential_10_layer_call_and_return_conditional_losses_178112
I__inference_sequential_10_layer_call_and_return_conditional_losses_178156
I__inference_sequential_10_layer_call_and_return_conditional_losses_177142
I__inference_sequential_10_layer_call_and_return_conditional_losses_177169
I__inference_sequential_10_layer_call_and_return_conditional_losses_178200
I__inference_sequential_10_layer_call_and_return_conditional_losses_178244�
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
 z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5
*:(2conv2d_29/kernel
:2conv2d_29/bias
*:(2conv2d_30/kernel
:2conv2d_30/bias
*:(2conv2d_31/kernel
:2conv2d_31/bias
*:(2conv2d_32/kernel
:2conv2d_32/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_2_layer_call_fn_177323conv2d_22_input"�
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
(__inference_model_2_layer_call_fn_177725inputs"�
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
(__inference_model_2_layer_call_fn_177758inputs"�
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
(__inference_model_2_layer_call_fn_177577conv2d_22_input"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_177826inputs"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_177894inputs"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_177616conv2d_22_input"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_177655conv2d_22_input"�
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
�
b0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
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
$__inference_signature_wrapper_177692conv2d_22_input"�
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
*__inference_conv2d_22_layer_call_fn_177903inputs"�
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177914inputs"�
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
0__inference_max_pooling2d_7_layer_call_fn_177919inputs"�
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
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_177924inputs"�
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
*__inference_conv2d_23_layer_call_fn_177933inputs"�
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177944inputs"�
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
0__inference_max_pooling2d_8_layer_call_fn_177949inputs"�
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
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_177954inputs"�
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
*__inference_conv2d_24_layer_call_fn_177963inputs"�
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
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177974inputs"�
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
0__inference_max_pooling2d_9_layer_call_fn_177979inputs"�
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_177984inputs"�
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
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_29_layer_call_fn_178253�
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_178264�
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
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_up_sampling2d_12_layer_call_fn_178269�
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
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_178281�
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
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
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
*__inference_conv2d_30_layer_call_fn_178290�
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_178301�
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
1__inference_up_sampling2d_13_layer_call_fn_178306�
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
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_178318�
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
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
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
*__inference_conv2d_31_layer_call_fn_178327�
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_178338�
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
1__inference_up_sampling2d_14_layer_call_fn_178343�
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
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_178355�
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
R0
S1"
trackable_list_wrapper
.
R0
S1"
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
*__inference_conv2d_32_layer_call_fn_178364�
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_178375�
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
Q
?0
@1
A2
B3
C4
D5
E6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_10_layer_call_fn_176985conv2d_29_input"�
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
.__inference_sequential_10_layer_call_fn_178005inputs"�
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
.__inference_sequential_10_layer_call_fn_178026inputs"�
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
.__inference_sequential_10_layer_call_fn_177115conv2d_29_input"�
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
.__inference_sequential_10_layer_call_fn_178047inputs_0"�
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
.__inference_sequential_10_layer_call_fn_178068inputs_0"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_178112inputs"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_178156inputs"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_177142conv2d_29_input"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_177169conv2d_29_input"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_178200inputs_0"�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_178244inputs_0"�
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
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
/:-2Adam/m/conv2d_22/kernel
/:-2Adam/v/conv2d_22/kernel
!:2Adam/m/conv2d_22/bias
!:2Adam/v/conv2d_22/bias
/:-2Adam/m/conv2d_23/kernel
/:-2Adam/v/conv2d_23/kernel
!:2Adam/m/conv2d_23/bias
!:2Adam/v/conv2d_23/bias
/:-2Adam/m/conv2d_24/kernel
/:-2Adam/v/conv2d_24/kernel
!:2Adam/m/conv2d_24/bias
!:2Adam/v/conv2d_24/bias
/:-2Adam/m/conv2d_29/kernel
/:-2Adam/v/conv2d_29/kernel
!:2Adam/m/conv2d_29/bias
!:2Adam/v/conv2d_29/bias
/:-2Adam/m/conv2d_30/kernel
/:-2Adam/v/conv2d_30/kernel
!:2Adam/m/conv2d_30/bias
!:2Adam/v/conv2d_30/bias
/:-2Adam/m/conv2d_31/kernel
/:-2Adam/v/conv2d_31/kernel
!:2Adam/m/conv2d_31/bias
!:2Adam/v/conv2d_31/bias
/:-2Adam/m/conv2d_32/kernel
/:-2Adam/v/conv2d_32/kernel
!:2Adam/m/conv2d_32/bias
!:2Adam/v/conv2d_32/bias
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
*__inference_conv2d_29_layer_call_fn_178253inputs"�
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_178264inputs"�
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
1__inference_up_sampling2d_12_layer_call_fn_178269inputs"�
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
�B�
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_178281inputs"�
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
*__inference_conv2d_30_layer_call_fn_178290inputs"�
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_178301inputs"�
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
1__inference_up_sampling2d_13_layer_call_fn_178306inputs"�
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
�B�
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_178318inputs"�
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
*__inference_conv2d_31_layer_call_fn_178327inputs"�
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_178338inputs"�
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
1__inference_up_sampling2d_14_layer_call_fn_178343inputs"�
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
�B�
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_178355inputs"�
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
*__inference_conv2d_32_layer_call_fn_178364inputs"�
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
E__inference_conv2d_32_layer_call_and_return_conditional_losses_178375inputs"�
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
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
!__inference__wrapped_model_176794�'(67LMNOPQRS@�=
6�3
1�.
conv2d_22_input���������
� "E�B
@
sequential_10/�,
sequential_10����������
E__inference_conv2d_22_layer_call_and_return_conditional_losses_177914s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_22_layer_call_fn_177903h7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_23_layer_call_and_return_conditional_losses_177944s'(7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_23_layer_call_fn_177933h'(7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_24_layer_call_and_return_conditional_losses_177974s677�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_24_layer_call_fn_177963h677�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_29_layer_call_and_return_conditional_losses_178264sLM7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
*__inference_conv2d_29_layer_call_fn_178253hLM7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
E__inference_conv2d_30_layer_call_and_return_conditional_losses_178301�NOI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
*__inference_conv2d_30_layer_call_fn_178290�NOI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
E__inference_conv2d_31_layer_call_and_return_conditional_losses_178338�PQI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
*__inference_conv2d_31_layer_call_fn_178327�PQI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
E__inference_conv2d_32_layer_call_and_return_conditional_losses_178375�RSI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
*__inference_conv2d_32_layer_call_fn_178364�RSI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_177924�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_7_layer_call_fn_177919�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_177954�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_8_layer_call_fn_177949�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_177984�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_9_layer_call_fn_177979�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_model_2_layer_call_and_return_conditional_losses_177616�'(67LMNOPQRSH�E
>�;
1�.
conv2d_22_input���������
p 

 
� "4�1
*�'
tensor_0���������
� �
C__inference_model_2_layer_call_and_return_conditional_losses_177655�'(67LMNOPQRSH�E
>�;
1�.
conv2d_22_input���������
p

 
� "4�1
*�'
tensor_0���������
� �
C__inference_model_2_layer_call_and_return_conditional_losses_177826�'(67LMNOPQRS?�<
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
C__inference_model_2_layer_call_and_return_conditional_losses_177894�'(67LMNOPQRS?�<
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
(__inference_model_2_layer_call_fn_177323�'(67LMNOPQRSH�E
>�;
1�.
conv2d_22_input���������
p 

 
� ")�&
unknown����������
(__inference_model_2_layer_call_fn_177577�'(67LMNOPQRSH�E
>�;
1�.
conv2d_22_input���������
p

 
� ")�&
unknown����������
(__inference_model_2_layer_call_fn_177725|'(67LMNOPQRS?�<
5�2
(�%
inputs���������
p 

 
� ")�&
unknown����������
(__inference_model_2_layer_call_fn_177758|'(67LMNOPQRS?�<
5�2
(�%
inputs���������
p

 
� ")�&
unknown����������
I__inference_sequential_10_layer_call_and_return_conditional_losses_177142�LMNOPQRSH�E
>�;
1�.
conv2d_29_input���������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_177169�LMNOPQRSH�E
>�;
1�.
conv2d_29_input���������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_178112�LMNOPQRS?�<
5�2
(�%
inputs���������
p 

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_178156�LMNOPQRS?�<
5�2
(�%
inputs���������
p

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_178200�LMNOPQRSF�C
<�9
/�,
*�'
inputs_0���������
p 

 
� "4�1
*�'
tensor_0���������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_178244�LMNOPQRSF�C
<�9
/�,
*�'
inputs_0���������
p

 
� "4�1
*�'
tensor_0���������
� �
.__inference_sequential_10_layer_call_fn_176985�LMNOPQRSH�E
>�;
1�.
conv2d_29_input���������
p 

 
� ";�8
unknown+����������������������������
.__inference_sequential_10_layer_call_fn_177115�LMNOPQRSH�E
>�;
1�.
conv2d_29_input���������
p

 
� ";�8
unknown+����������������������������
.__inference_sequential_10_layer_call_fn_178005�LMNOPQRS?�<
5�2
(�%
inputs���������
p 

 
� ";�8
unknown+����������������������������
.__inference_sequential_10_layer_call_fn_178026�LMNOPQRS?�<
5�2
(�%
inputs���������
p

 
� ";�8
unknown+����������������������������
.__inference_sequential_10_layer_call_fn_178047}LMNOPQRSF�C
<�9
/�,
*�'
inputs_0���������
p 

 
� ")�&
unknown����������
.__inference_sequential_10_layer_call_fn_178068}LMNOPQRSF�C
<�9
/�,
*�'
inputs_0���������
p

 
� ")�&
unknown����������
$__inference_signature_wrapper_177692�'(67LMNOPQRSS�P
� 
I�F
D
conv2d_22_input1�.
conv2d_22_input���������"E�B
@
sequential_10/�,
sequential_10����������
L__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_178281�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_up_sampling2d_12_layer_call_fn_178269�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_178318�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_up_sampling2d_13_layer_call_fn_178306�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_178355�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_up_sampling2d_14_layer_call_fn_178343�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4������������������������������������