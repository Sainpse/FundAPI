??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??	
y
Dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
2*
shared_nameDense_1/kernel
r
"Dense_1/kernel/Read/ReadVariableOpReadVariableOpDense_1/kernel*
_output_shapes
:	?
2*
dtype0
p
Dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameDense_1/bias
i
 Dense_1/bias/Read/ReadVariableOpReadVariableOpDense_1/bias*
_output_shapes
:2*
dtype0
x
Dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*
shared_nameDense_2/kernel
q
"Dense_2/kernel/Read/ReadVariableOpReadVariableOpDense_2/kernel*
_output_shapes

:22*
dtype0
p
Dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameDense_2/bias
i
 Dense_2/bias/Read/ReadVariableOpReadVariableOpDense_2/bias*
_output_shapes
:2*
dtype0
x
Dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*
shared_nameDense_3/kernel
q
"Dense_3/kernel/Read/ReadVariableOpReadVariableOpDense_3/kernel*
_output_shapes

:22*
dtype0
p
Dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameDense_3/bias
i
 Dense_3/bias/Read/ReadVariableOpReadVariableOpDense_3/bias*
_output_shapes
:2*
dtype0
x
Dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*
shared_nameDense_4/kernel
q
"Dense_4/kernel/Read/ReadVariableOpReadVariableOpDense_4/kernel*
_output_shapes

:22*
dtype0
p
Dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameDense_4/bias
i
 Dense_4/bias/Read/ReadVariableOpReadVariableOpDense_4/bias*
_output_shapes
:2*
dtype0
v
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_nameOutput/kernel
o
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes

:2*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/Dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
2*&
shared_nameAdam/Dense_1/kernel/m
?
)Adam/Dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/m*
_output_shapes
:	?
2*
dtype0
~
Adam/Dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_1/bias/m
w
'Adam/Dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/m*
_output_shapes
:2*
dtype0
?
Adam/Dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_2/kernel/m

)Adam/Dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_2/kernel/m*
_output_shapes

:22*
dtype0
~
Adam/Dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_2/bias/m
w
'Adam/Dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_2/bias/m*
_output_shapes
:2*
dtype0
?
Adam/Dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_3/kernel/m

)Adam/Dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_3/kernel/m*
_output_shapes

:22*
dtype0
~
Adam/Dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_3/bias/m
w
'Adam/Dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_3/bias/m*
_output_shapes
:2*
dtype0
?
Adam/Dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_4/kernel/m

)Adam/Dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_4/kernel/m*
_output_shapes

:22*
dtype0
~
Adam/Dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_4/bias/m
w
'Adam/Dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_4/bias/m*
_output_shapes
:2*
dtype0
?
Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*%
shared_nameAdam/Output/kernel/m
}
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes

:2*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:*
dtype0
?
Adam/Dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
2*&
shared_nameAdam/Dense_1/kernel/v
?
)Adam/Dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/v*
_output_shapes
:	?
2*
dtype0
~
Adam/Dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_1/bias/v
w
'Adam/Dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/v*
_output_shapes
:2*
dtype0
?
Adam/Dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_2/kernel/v

)Adam/Dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_2/kernel/v*
_output_shapes

:22*
dtype0
~
Adam/Dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_2/bias/v
w
'Adam/Dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_2/bias/v*
_output_shapes
:2*
dtype0
?
Adam/Dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_3/kernel/v

)Adam/Dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_3/kernel/v*
_output_shapes

:22*
dtype0
~
Adam/Dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_3/bias/v
w
'Adam/Dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_3/bias/v*
_output_shapes
:2*
dtype0
?
Adam/Dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/Dense_4/kernel/v

)Adam/Dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_4/kernel/v*
_output_shapes

:22*
dtype0
~
Adam/Dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/Dense_4/bias/v
w
'Adam/Dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_4/bias/v*
_output_shapes
:2*
dtype0
?
Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*%
shared_nameAdam/Output/kernel/v
}
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes

:2*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?5B?5 B?5
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?
/iter

0beta_1

1beta_2
	2decay
3learning_ratem\m]m^m_m`mamb mc)md*mevfvgvhvivjvkvl vm)vn*vo
F
0
1
2
3
4
5
6
 7
)8
*9
F
0
1
2
3
4
5
6
 7
)8
*9
 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
	trainable_variables

regularization_losses
 
ZX
VARIABLE_VALUEDense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEDense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEDense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEDense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
!	variables
"trainable_variables
#regularization_losses
 
 
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
%	variables
&trainable_variables
'regularization_losses
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
+	variables
,trainable_variables
-regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
*
0
1
2
3
4
5

W0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Xtotal
	Ycount
Z	variables
[	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1

Z	variables
}{
VARIABLE_VALUEAdam/Dense_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_Dense_1_inputPlaceholder*(
_output_shapes
:??????????
*
dtype0*
shape:??????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_Dense_1_inputDense_1/kernelDense_1/biasDense_2/kernelDense_2/biasDense_3/kernelDense_3/biasDense_4/kernelDense_4/biasOutput/kernelOutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? */
f*R(
&__inference_signature_wrapper_15448803
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"Dense_1/kernel/Read/ReadVariableOp Dense_1/bias/Read/ReadVariableOp"Dense_2/kernel/Read/ReadVariableOp Dense_2/bias/Read/ReadVariableOp"Dense_3/kernel/Read/ReadVariableOp Dense_3/bias/Read/ReadVariableOp"Dense_4/kernel/Read/ReadVariableOp Dense_4/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/Dense_1/kernel/m/Read/ReadVariableOp'Adam/Dense_1/bias/m/Read/ReadVariableOp)Adam/Dense_2/kernel/m/Read/ReadVariableOp'Adam/Dense_2/bias/m/Read/ReadVariableOp)Adam/Dense_3/kernel/m/Read/ReadVariableOp'Adam/Dense_3/bias/m/Read/ReadVariableOp)Adam/Dense_4/kernel/m/Read/ReadVariableOp'Adam/Dense_4/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp)Adam/Dense_1/kernel/v/Read/ReadVariableOp'Adam/Dense_1/bias/v/Read/ReadVariableOp)Adam/Dense_2/kernel/v/Read/ReadVariableOp'Adam/Dense_2/bias/v/Read/ReadVariableOp)Adam/Dense_3/kernel/v/Read/ReadVariableOp'Adam/Dense_3/bias/v/Read/ReadVariableOp)Adam/Dense_4/kernel/v/Read/ReadVariableOp'Adam/Dense_4/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
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
GPU2 *0J 8? **
f%R#
!__inference__traced_save_15449338
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameDense_1/kernelDense_1/biasDense_2/kernelDense_2/biasDense_3/kernelDense_3/biasDense_4/kernelDense_4/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/Dense_1/kernel/mAdam/Dense_1/bias/mAdam/Dense_2/kernel/mAdam/Dense_2/bias/mAdam/Dense_3/kernel/mAdam/Dense_3/bias/mAdam/Dense_4/kernel/mAdam/Dense_4/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/Dense_1/kernel/vAdam/Dense_1/bias/vAdam/Dense_2/kernel/vAdam/Dense_2/bias/vAdam/Dense_3/kernel/vAdam/Dense_3/bias/vAdam/Dense_4/kernel/vAdam/Dense_4/bias/vAdam/Output/kernel/vAdam/Output/bias/v*1
Tin*
(2&*
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
GPU2 *0J 8? *-
f(R&
$__inference__traced_restore_15449459??
?
?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449114

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_15448638
dense_1_input
unknown:	?
2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15448590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
c
*__inference_dropout_layer_call_fn_15449124

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_15448370

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
H__inference_sequential_layer_call_and_return_conditional_losses_15448746
dense_1_input#
dense_1_15448695:	?
2
dense_1_15448697:2"
dense_2_15448700:22
dense_2_15448702:2"
dense_3_15448705:22
dense_3_15448707:2"
dense_4_15448710:22
dense_4_15448712:2!
output_15448716:2
output_15448718:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_15448695dense_1_15448697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15448700dense_2_15448702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15448705dense_3_15448707*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15448710dense_4_15448712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359?
dropout/StatefulPartitionedCallStatefulPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448466?
Output/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0output_15448716output_15448718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_15448382?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15448695*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15448700*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15448705*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15448710*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2B
Dense_2/StatefulPartitionedCallDense_2/StatefulPartitionedCall2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2B
Dense_3/StatefulPartitionedCallDense_3/StatefulPartitionedCall2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2B
Dense_4/StatefulPartitionedCallDense_4/StatefulPartitionedCall2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
__inference_loss_fn_0_15449171L
9dense_1_kernel_regularizer_square_readvariableop_resource:	?
2
identity??0Dense_1/kernel/Regularizer/Square/ReadVariableOp?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"Dense_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^Dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_3/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_15449182K
9dense_2_kernel_regularizer_square_readvariableop_resource:22
identity??0Dense_2/kernel/Regularizer/Square/ReadVariableOp?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_2_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"Dense_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^Dense_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_Dense_3_layer_call_fn_15449065

inputs
unknown:22
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
D__inference_Output_layer_call_and_return_conditional_losses_15449160

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_2/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?L
?	
H__inference_sequential_layer_call_and_return_conditional_losses_15448916

inputs9
&dense_1_matmul_readvariableop_resource:	?
25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:225
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:225
'dense_3_biasadd_readvariableop_resource:28
&dense_4_matmul_readvariableop_resource:225
'dense_4_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense_1/BiasAdd/ReadVariableOp?Dense_1/MatMul/ReadVariableOp?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/BiasAdd/ReadVariableOp?Dense_2/MatMul/ReadVariableOp?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/BiasAdd/ReadVariableOp?Dense_3/MatMul/ReadVariableOp?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/BiasAdd/ReadVariableOp?Dense_4/MatMul/ReadVariableOp?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0y
Dense_1/MatMulMatMulinputs%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_2/MatMulMatMulDense_1/Relu:activations:0%Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_2/BiasAddBiasAddDense_2/MatMul:product:0&Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_2/ReluReluDense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_3/MatMulMatMulDense_2/Relu:activations:0%Dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_3/BiasAddBiasAddDense_3/MatMul:product:0&Dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_3/ReluReluDense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_4/MatMulMatMulDense_3/Relu:activations:0%Dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_4/BiasAddBiasAddDense_4/MatMul:product:0&Dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_4/ReluReluDense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2j
dropout/IdentityIdentityDense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
Output/MatMulMatMuldropout/Identity:output:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Dense_1/BiasAdd/ReadVariableOp^Dense_1/MatMul/ReadVariableOp1^Dense_1/kernel/Regularizer/Square/ReadVariableOp^Dense_2/BiasAdd/ReadVariableOp^Dense_2/MatMul/ReadVariableOp1^Dense_2/kernel/Regularizer/Square/ReadVariableOp^Dense_3/BiasAdd/ReadVariableOp^Dense_3/MatMul/ReadVariableOp1^Dense_3/kernel/Regularizer/Square/ReadVariableOp^Dense_4/BiasAdd/ReadVariableOp^Dense_4/MatMul/ReadVariableOp1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2>
Dense_1/MatMul/ReadVariableOpDense_1/MatMul/ReadVariableOp2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2@
Dense_2/BiasAdd/ReadVariableOpDense_2/BiasAdd/ReadVariableOp2>
Dense_2/MatMul/ReadVariableOpDense_2/MatMul/ReadVariableOp2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2@
Dense_3/BiasAdd/ReadVariableOpDense_3/BiasAdd/ReadVariableOp2>
Dense_3/MatMul/ReadVariableOpDense_3/MatMul/ReadVariableOp2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2@
Dense_4/BiasAdd/ReadVariableOpDense_4/BiasAdd/ReadVariableOp2>
Dense_4/MatMul/ReadVariableOpDense_4/MatMul/ReadVariableOp2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_15448853

inputs
unknown:	?
2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15448590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
)__inference_Output_layer_call_fn_15449150

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_15448382o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_15448828

inputs
unknown:	?
2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15448413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?5
?	
#__inference__wrapped_model_15448266
dense_1_inputD
1sequential_dense_1_matmul_readvariableop_resource:	?
2@
2sequential_dense_1_biasadd_readvariableop_resource:2C
1sequential_dense_2_matmul_readvariableop_resource:22@
2sequential_dense_2_biasadd_readvariableop_resource:2C
1sequential_dense_3_matmul_readvariableop_resource:22@
2sequential_dense_3_biasadd_readvariableop_resource:2C
1sequential_dense_4_matmul_readvariableop_resource:22@
2sequential_dense_4_biasadd_readvariableop_resource:2B
0sequential_output_matmul_readvariableop_resource:2?
1sequential_output_biasadd_readvariableop_resource:
identity??)sequential/Dense_1/BiasAdd/ReadVariableOp?(sequential/Dense_1/MatMul/ReadVariableOp?)sequential/Dense_2/BiasAdd/ReadVariableOp?(sequential/Dense_2/MatMul/ReadVariableOp?)sequential/Dense_3/BiasAdd/ReadVariableOp?(sequential/Dense_3/MatMul/ReadVariableOp?)sequential/Dense_4/BiasAdd/ReadVariableOp?(sequential/Dense_4/MatMul/ReadVariableOp?(sequential/Output/BiasAdd/ReadVariableOp?'sequential/Output/MatMul/ReadVariableOp?
(sequential/Dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
sequential/Dense_1/MatMulMatMuldense_1_input0sequential/Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
)sequential/Dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential/Dense_1/BiasAddBiasAdd#sequential/Dense_1/MatMul:product:01sequential/Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2v
sequential/Dense_1/ReluRelu#sequential/Dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
(sequential/Dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential/Dense_2/MatMulMatMul%sequential/Dense_1/Relu:activations:00sequential/Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
)sequential/Dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential/Dense_2/BiasAddBiasAdd#sequential/Dense_2/MatMul:product:01sequential/Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2v
sequential/Dense_2/ReluRelu#sequential/Dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
(sequential/Dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential/Dense_3/MatMulMatMul%sequential/Dense_2/Relu:activations:00sequential/Dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
)sequential/Dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential/Dense_3/BiasAddBiasAdd#sequential/Dense_3/MatMul:product:01sequential/Dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2v
sequential/Dense_3/ReluRelu#sequential/Dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
(sequential/Dense_4/MatMul/ReadVariableOpReadVariableOp1sequential_dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential/Dense_4/MatMulMatMul%sequential/Dense_3/Relu:activations:00sequential/Dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
)sequential/Dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential/Dense_4/BiasAddBiasAdd#sequential/Dense_4/MatMul:product:01sequential/Dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2v
sequential/Dense_4/ReluRelu#sequential/Dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
sequential/dropout/IdentityIdentity%sequential/Dense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
'sequential/Output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
sequential/Output/MatMulMatMul$sequential/dropout/Identity:output:0/sequential/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(sequential/Output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/Output/BiasAddBiasAdd"sequential/Output/MatMul:product:00sequential/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp*^sequential/Dense_1/BiasAdd/ReadVariableOp)^sequential/Dense_1/MatMul/ReadVariableOp*^sequential/Dense_2/BiasAdd/ReadVariableOp)^sequential/Dense_2/MatMul/ReadVariableOp*^sequential/Dense_3/BiasAdd/ReadVariableOp)^sequential/Dense_3/MatMul/ReadVariableOp*^sequential/Dense_4/BiasAdd/ReadVariableOp)^sequential/Dense_4/MatMul/ReadVariableOp)^sequential/Output/BiasAdd/ReadVariableOp(^sequential/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2V
)sequential/Dense_1/BiasAdd/ReadVariableOp)sequential/Dense_1/BiasAdd/ReadVariableOp2T
(sequential/Dense_1/MatMul/ReadVariableOp(sequential/Dense_1/MatMul/ReadVariableOp2V
)sequential/Dense_2/BiasAdd/ReadVariableOp)sequential/Dense_2/BiasAdd/ReadVariableOp2T
(sequential/Dense_2/MatMul/ReadVariableOp(sequential/Dense_2/MatMul/ReadVariableOp2V
)sequential/Dense_3/BiasAdd/ReadVariableOp)sequential/Dense_3/BiasAdd/ReadVariableOp2T
(sequential/Dense_3/MatMul/ReadVariableOp(sequential/Dense_3/MatMul/ReadVariableOp2V
)sequential/Dense_4/BiasAdd/ReadVariableOp)sequential/Dense_4/BiasAdd/ReadVariableOp2T
(sequential/Dense_4/MatMul/ReadVariableOp(sequential/Dense_4/MatMul/ReadVariableOp2T
(sequential/Output/BiasAdd/ReadVariableOp(sequential/Output/BiasAdd/ReadVariableOp2R
'sequential/Output/MatMul/ReadVariableOp'sequential/Output/MatMul/ReadVariableOp:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
*__inference_Dense_4_layer_call_fn_15449097

inputs
unknown:22
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?S
?	
H__inference_sequential_layer_call_and_return_conditional_losses_15448986

inputs9
&dense_1_matmul_readvariableop_resource:	?
25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:225
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:225
'dense_3_biasadd_readvariableop_resource:28
&dense_4_matmul_readvariableop_resource:225
'dense_4_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense_1/BiasAdd/ReadVariableOp?Dense_1/MatMul/ReadVariableOp?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/BiasAdd/ReadVariableOp?Dense_2/MatMul/ReadVariableOp?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/BiasAdd/ReadVariableOp?Dense_3/MatMul/ReadVariableOp?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/BiasAdd/ReadVariableOp?Dense_4/MatMul/ReadVariableOp?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0y
Dense_1/MatMulMatMulinputs%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_2/MatMulMatMulDense_1/Relu:activations:0%Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_2/BiasAddBiasAddDense_2/MatMul:product:0&Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_2/ReluReluDense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_3/MatMulMatMulDense_2/Relu:activations:0%Dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_3/BiasAddBiasAddDense_3/MatMul:product:0&Dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_3/ReluReluDense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
Dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
Dense_4/MatMulMatMulDense_3/Relu:activations:0%Dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense_4/BiasAddBiasAddDense_4/MatMul:product:0&Dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
Dense_4/ReluReluDense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout/dropout/MulMulDense_4/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2_
dropout/dropout/ShapeShapeDense_4/Relu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
Output/MatMulMatMuldropout/dropout/Mul_1:z:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Dense_1/BiasAdd/ReadVariableOp^Dense_1/MatMul/ReadVariableOp1^Dense_1/kernel/Regularizer/Square/ReadVariableOp^Dense_2/BiasAdd/ReadVariableOp^Dense_2/MatMul/ReadVariableOp1^Dense_2/kernel/Regularizer/Square/ReadVariableOp^Dense_3/BiasAdd/ReadVariableOp^Dense_3/MatMul/ReadVariableOp1^Dense_3/kernel/Regularizer/Square/ReadVariableOp^Dense_4/BiasAdd/ReadVariableOp^Dense_4/MatMul/ReadVariableOp1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2>
Dense_1/MatMul/ReadVariableOpDense_1/MatMul/ReadVariableOp2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2@
Dense_2/BiasAdd/ReadVariableOpDense_2/BiasAdd/ReadVariableOp2>
Dense_2/MatMul/ReadVariableOpDense_2/MatMul/ReadVariableOp2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2@
Dense_3/BiasAdd/ReadVariableOpDense_3/BiasAdd/ReadVariableOp2>
Dense_3/MatMul/ReadVariableOpDense_3/MatMul/ReadVariableOp2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2@
Dense_4/BiasAdd/ReadVariableOpDense_4/BiasAdd/ReadVariableOp2>
Dense_4/MatMul/ReadVariableOpDense_4/MatMul/ReadVariableOp2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
*__inference_Dense_2_layer_call_fn_15449033

inputs
unknown:22
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
d
E__inference_dropout_layer_call_and_return_conditional_losses_15448466

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
d
E__inference_dropout_layer_call_and_return_conditional_losses_15449141

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?>
?
H__inference_sequential_layer_call_and_return_conditional_losses_15448413

inputs#
dense_1_15448291:	?
2
dense_1_15448293:2"
dense_2_15448314:22
dense_2_15448316:2"
dense_3_15448337:22
dense_3_15448339:2"
dense_4_15448360:22
dense_4_15448362:2!
output_15448383:2
output_15448385:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_15448291dense_1_15448293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15448314dense_2_15448316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15448337dense_3_15448339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15448360dense_4_15448362*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359?
dropout/PartitionedCallPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448370?
Output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0output_15448383output_15448385*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_15448382?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15448291*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15448314*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15448337*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15448360*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2B
Dense_2/StatefulPartitionedCallDense_2/StatefulPartitionedCall2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2B
Dense_3/StatefulPartitionedCallDense_3/StatefulPartitionedCall2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2B
Dense_4/StatefulPartitionedCallDense_4/StatefulPartitionedCall2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?	
?
D__inference_Output_layer_call_and_return_conditional_losses_15448382

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_15449129

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
H__inference_sequential_layer_call_and_return_conditional_losses_15448590

inputs#
dense_1_15448539:	?
2
dense_1_15448541:2"
dense_2_15448544:22
dense_2_15448546:2"
dense_3_15448549:22
dense_3_15448551:2"
dense_4_15448554:22
dense_4_15448556:2!
output_15448560:2
output_15448562:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_15448539dense_1_15448541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15448544dense_2_15448546*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15448549dense_3_15448551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15448554dense_4_15448556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359?
dropout/StatefulPartitionedCallStatefulPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448466?
Output/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0output_15448560output_15448562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_15448382?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15448539*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15448544*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15448549*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15448554*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2B
Dense_2/StatefulPartitionedCallDense_2/StatefulPartitionedCall2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2B
Dense_3/StatefulPartitionedCallDense_3/StatefulPartitionedCall2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2B
Dense_4/StatefulPartitionedCallDense_4/StatefulPartitionedCall2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_15448436
dense_1_input
unknown:	?
2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15448413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290

inputs1
matmul_readvariableop_resource:	?
2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_1/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?M
?
!__inference__traced_save_15449338
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?
2:2:22:2:22:2:22:2:2:: : : : : : : :	?
2:2:22:2:22:2:22:2:2::	?
2:2:22:2:22:2:22:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?
2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$	 

_output_shapes

:2: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?
2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	?
2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$  

_output_shapes

:22: !

_output_shapes
:2:$" 

_output_shapes

:22: #

_output_shapes
:2:$$ 

_output_shapes

:2: %

_output_shapes
::&

_output_shapes
: 
?
?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449050

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_2/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_15449459
file_prefix2
assignvariableop_dense_1_kernel:	?
2-
assignvariableop_1_dense_1_bias:23
!assignvariableop_2_dense_2_kernel:22-
assignvariableop_3_dense_2_bias:23
!assignvariableop_4_dense_3_kernel:22-
assignvariableop_5_dense_3_bias:23
!assignvariableop_6_dense_4_kernel:22-
assignvariableop_7_dense_4_bias:22
 assignvariableop_8_output_kernel:2,
assignvariableop_9_output_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: <
)assignvariableop_17_adam_dense_1_kernel_m:	?
25
'assignvariableop_18_adam_dense_1_bias_m:2;
)assignvariableop_19_adam_dense_2_kernel_m:225
'assignvariableop_20_adam_dense_2_bias_m:2;
)assignvariableop_21_adam_dense_3_kernel_m:225
'assignvariableop_22_adam_dense_3_bias_m:2;
)assignvariableop_23_adam_dense_4_kernel_m:225
'assignvariableop_24_adam_dense_4_bias_m:2:
(assignvariableop_25_adam_output_kernel_m:24
&assignvariableop_26_adam_output_bias_m:<
)assignvariableop_27_adam_dense_1_kernel_v:	?
25
'assignvariableop_28_adam_dense_1_bias_v:2;
)assignvariableop_29_adam_dense_2_kernel_v:225
'assignvariableop_30_adam_dense_2_bias_v:2;
)assignvariableop_31_adam_dense_3_kernel_v:225
'assignvariableop_32_adam_dense_3_bias_v:2;
)assignvariableop_33_adam_dense_4_kernel_v:225
'assignvariableop_34_adam_dense_4_bias_v:2:
(assignvariableop_35_adam_output_kernel_v:24
&assignvariableop_36_adam_output_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_output_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_output_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_4_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_4_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_output_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_output_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
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
?>
?
H__inference_sequential_layer_call_and_return_conditional_losses_15448692
dense_1_input#
dense_1_15448641:	?
2
dense_1_15448643:2"
dense_2_15448646:22
dense_2_15448648:2"
dense_3_15448651:22
dense_3_15448653:2"
dense_4_15448656:22
dense_4_15448658:2!
output_15448662:2
output_15448664:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_15448641dense_1_15448643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15448646dense_2_15448648*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_2_layer_call_and_return_conditional_losses_15448313?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15448651dense_3_15448653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_3_layer_call_and_return_conditional_losses_15448336?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15448656dense_4_15448658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_4_layer_call_and_return_conditional_losses_15448359?
dropout/PartitionedCallPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448370?
Output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0output_15448662output_15448664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_15448382?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15448641*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15448646*
_output_shapes

:22*
dtype0?
!Dense_2/kernel/Regularizer/SquareSquare8Dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_2/kernel/Regularizer/SumSum%Dense_2/kernel/Regularizer/Square:y:0)Dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_2/kernel/Regularizer/mulMul)Dense_2/kernel/Regularizer/mul/x:output:0'Dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15448651*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15448656*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2B
Dense_2/StatefulPartitionedCallDense_2/StatefulPartitionedCall2d
0Dense_2/kernel/Regularizer/Square/ReadVariableOp0Dense_2/kernel/Regularizer/Square/ReadVariableOp2B
Dense_3/StatefulPartitionedCallDense_3/StatefulPartitionedCall2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2B
Dense_4/StatefulPartitionedCallDense_4/StatefulPartitionedCall2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449018

inputs1
matmul_readvariableop_resource:	?
2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
!Dense_1/kernel/Regularizer/SquareSquare8Dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?
2q
 Dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_1/kernel/Regularizer/SumSum%Dense_1/kernel/Regularizer/Square:y:0)Dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_1/kernel/Regularizer/mulMul)Dense_1/kernel/Regularizer/mul/x:output:0'Dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_1/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_1/kernel/Regularizer/Square/ReadVariableOp0Dense_1/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449082

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp1^Dense_3/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
F
*__inference_dropout_layer_call_fn_15449119

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_15448370`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_Dense_1_layer_call_fn_15449001

inputs
unknown:	?
2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_15448290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?

?
&__inference_signature_wrapper_15448803
dense_1_input
unknown:	?
2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *,
f'R%
#__inference__wrapped_model_15448266o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
__inference_loss_fn_2_15449193K
9dense_3_kernel_regularizer_square_readvariableop_resource:22
identity??0Dense_3/kernel/Regularizer/Square/ReadVariableOp?
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_3_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_3/kernel/Regularizer/SquareSquare8Dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_3/kernel/Regularizer/SumSum%Dense_3/kernel/Regularizer/Square:y:0)Dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_3/kernel/Regularizer/mulMul)Dense_3/kernel/Regularizer/mul/x:output:0'Dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"Dense_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^Dense_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0Dense_3/kernel/Regularizer/Square/ReadVariableOp0Dense_3/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_3_15449204K
9dense_4_kernel_regularizer_square_readvariableop_resource:22
identity??0Dense_4/kernel/Regularizer/Square/ReadVariableOp?
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_4_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:22*
dtype0?
!Dense_4/kernel/Regularizer/SquareSquare8Dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22q
 Dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
Dense_4/kernel/Regularizer/SumSum%Dense_4/kernel/Regularizer/Square:y:0)Dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 Dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
Dense_4/kernel/Regularizer/mulMul)Dense_4/kernel/Regularizer/mul/x:output:0'Dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"Dense_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^Dense_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
H
Dense_1_input7
serving_default_Dense_1_input:0??????????
:
Output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
p__call__
*q&call_and_return_all_conditional_losses
r_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/iter

0beta_1

1beta_2
	2decay
3learning_ratem\m]m^m_m`mamb mc)md*mevfvgvhvivjvkvl vm)vn*vo"
	optimizer
f
0
1
2
3
4
5
6
 7
)8
*9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
 7
)8
*9"
trackable_list_wrapper
?
0
?1
?2
?3"
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
	trainable_variables

regularization_losses
p__call__
r_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!:	?
22Dense_1/kernel
:22Dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 :222Dense_2/kernel
:22Dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 :222Dense_3/kernel
:22Dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 :222Dense_4/kernel
:22Dense_4/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
!	variables
"trainable_variables
#regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
%	variables
&trainable_variables
'regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
:22Output/kernel
:2Output/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
+	variables
,trainable_variables
-regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
'
W0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	Xtotal
	Ycount
Z	variables
[	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
X0
Y1"
trackable_list_wrapper
-
Z	variables"
_generic_user_object
&:$	?
22Adam/Dense_1/kernel/m
:22Adam/Dense_1/bias/m
%:#222Adam/Dense_2/kernel/m
:22Adam/Dense_2/bias/m
%:#222Adam/Dense_3/kernel/m
:22Adam/Dense_3/bias/m
%:#222Adam/Dense_4/kernel/m
:22Adam/Dense_4/bias/m
$:"22Adam/Output/kernel/m
:2Adam/Output/bias/m
&:$	?
22Adam/Dense_1/kernel/v
:22Adam/Dense_1/bias/v
%:#222Adam/Dense_2/kernel/v
:22Adam/Dense_2/bias/v
%:#222Adam/Dense_3/kernel/v
:22Adam/Dense_3/bias/v
%:#222Adam/Dense_4/kernel/v
:22Adam/Dense_4/bias/v
$:"22Adam/Output/kernel/v
:2Adam/Output/bias/v
?2?
-__inference_sequential_layer_call_fn_15448436
-__inference_sequential_layer_call_fn_15448828
-__inference_sequential_layer_call_fn_15448853
-__inference_sequential_layer_call_fn_15448638?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_layer_call_and_return_conditional_losses_15448916
H__inference_sequential_layer_call_and_return_conditional_losses_15448986
H__inference_sequential_layer_call_and_return_conditional_losses_15448692
H__inference_sequential_layer_call_and_return_conditional_losses_15448746?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_15448266Dense_1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dense_1_layer_call_fn_15449001?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449018?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dense_2_layer_call_fn_15449033?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449050?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dense_3_layer_call_fn_15449065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449082?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dense_4_layer_call_fn_15449097?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_layer_call_fn_15449119
*__inference_dropout_layer_call_fn_15449124?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_layer_call_and_return_conditional_losses_15449129
E__inference_dropout_layer_call_and_return_conditional_losses_15449141?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_Output_layer_call_fn_15449150?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_Output_layer_call_and_return_conditional_losses_15449160?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_15449171?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_15449182?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_15449193?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_15449204?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
&__inference_signature_wrapper_15448803Dense_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449018]0?-
&?#
!?
inputs??????????

? "%?"
?
0?????????2
? ~
*__inference_Dense_1_layer_call_fn_15449001P0?-
&?#
!?
inputs??????????

? "??????????2?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449050\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_2_layer_call_fn_15449033O/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449082\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_3_layer_call_fn_15449065O/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449114\ /?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_4_layer_call_fn_15449097O /?,
%?"
 ?
inputs?????????2
? "??????????2?
D__inference_Output_layer_call_and_return_conditional_losses_15449160\)*/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_Output_layer_call_fn_15449150O)*/?,
%?"
 ?
inputs?????????2
? "???????????
#__inference__wrapped_model_15448266v
 )*7?4
-?*
(?%
Dense_1_input??????????

? "/?,
*
Output ?
Output??????????
E__inference_dropout_layer_call_and_return_conditional_losses_15449129\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
E__inference_dropout_layer_call_and_return_conditional_losses_15449141\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? }
*__inference_dropout_layer_call_fn_15449119O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2}
*__inference_dropout_layer_call_fn_15449124O3?0
)?&
 ?
inputs?????????2
p
? "??????????2=
__inference_loss_fn_0_15449171?

? 
? "? =
__inference_loss_fn_1_15449182?

? 
? "? =
__inference_loss_fn_2_15449193?

? 
? "? =
__inference_loss_fn_3_15449204?

? 
? "? ?
H__inference_sequential_layer_call_and_return_conditional_losses_15448692t
 )*??<
5?2
(?%
Dense_1_input??????????

p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_15448746t
 )*??<
5?2
(?%
Dense_1_input??????????

p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_15448916m
 )*8?5
.?+
!?
inputs??????????

p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_15448986m
 )*8?5
.?+
!?
inputs??????????

p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_layer_call_fn_15448436g
 )*??<
5?2
(?%
Dense_1_input??????????

p 

 
? "???????????
-__inference_sequential_layer_call_fn_15448638g
 )*??<
5?2
(?%
Dense_1_input??????????

p

 
? "???????????
-__inference_sequential_layer_call_fn_15448828`
 )*8?5
.?+
!?
inputs??????????

p 

 
? "???????????
-__inference_sequential_layer_call_fn_15448853`
 )*8?5
.?+
!?
inputs??????????

p

 
? "???????????
&__inference_signature_wrapper_15448803?
 )*H?E
? 
>?;
9
Dense_1_input(?%
Dense_1_input??????????
"/?,
*
Output ?
Output?????????