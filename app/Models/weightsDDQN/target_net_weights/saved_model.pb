??
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
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
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
 
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
 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
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
 
 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
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
 
 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
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
 
 
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
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
 
 
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
!	variables
"trainable_variables
#regularization_losses
 
 
 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
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
 
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
+	variables
,trainable_variables
-regularization_losses
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
*
0
1
2
3
4
5

R0
 
 

0
1
 
 
 
 

0
1
 
 
 
 

0
1
 
 
 
 

0
 1
 
 
 
 
 
 
 
 
 

)0
*1
 
 
 
 
4
	Stotal
	Tcount
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

U	variables
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
&__inference_signature_wrapper_15450199
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"Dense_1/kernel/Read/ReadVariableOp Dense_1/bias/Read/ReadVariableOp"Dense_2/kernel/Read/ReadVariableOp Dense_2/bias/Read/ReadVariableOp"Dense_3/kernel/Read/ReadVariableOp Dense_3/bias/Read/ReadVariableOp"Dense_4/kernel/Read/ReadVariableOp Dense_4/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2*
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
!__inference__traced_save_15450659
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameDense_1/kernelDense_1/biasDense_2/kernelDense_2/biasDense_3/kernelDense_3/biasDense_4/kernelDense_4/biasOutput/kernelOutput/biastotalcount*
Tin
2*
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
$__inference__traced_restore_15450705??
?
?
E__inference_Dense_1_layer_call_and_return_conditional_losses_15450414

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
?
?
*__inference_Dense_4_layer_call_fn_15450493

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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761o
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

?
/__inference_sequential_1_layer_call_fn_15449838
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
GPU2 *0J 8? *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449815o
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

f
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450537

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
?
D__inference_Output_layer_call_and_return_conditional_losses_15449784

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
?

f
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449868

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
?
__inference_loss_fn_3_15450600K
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
0Dense_4/kernel/Regularizer/Square/ReadVariableOp0Dense_4/kernel/Regularizer/Square/ReadVariableOp
?
?
)__inference_Output_layer_call_fn_15450546

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
D__inference_Output_layer_call_and_return_conditional_losses_15449784o
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
/__inference_sequential_1_layer_call_fn_15450040
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
GPU2 *0J 8? *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449992o
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761

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
?
?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15450510

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
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449772

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
?
?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715

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
??
?
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450148
dense_1_input#
dense_1_15450097:	?
2
dense_1_15450099:2"
dense_2_15450102:22
dense_2_15450104:2"
dense_3_15450107:22
dense_3_15450109:2"
dense_4_15450112:22
dense_4_15450114:2!
output_15450118:2
output_15450120:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_15450097dense_1_15450099*
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15450102dense_2_15450104*
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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15450107dense_3_15450109*
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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15450112dense_4_15450114*
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449868?
Output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_15450118output_15450120*
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
D__inference_Output_layer_call_and_return_conditional_losses_15449784?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15450097*
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
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15450102*
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
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15450107*
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
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15450112*
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
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
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
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
??
?
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449992

inputs#
dense_1_15449941:	?
2
dense_1_15449943:2"
dense_2_15449946:22
dense_2_15449948:2"
dense_3_15449951:22
dense_3_15449953:2"
dense_4_15449956:22
dense_4_15449958:2!
output_15449962:2
output_15449964:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_15449941dense_1_15449943*
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15449946dense_2_15449948*
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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15449951dense_3_15449953*
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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15449956dense_4_15449958*
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449868?
Output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_15449962output_15449964*
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
D__inference_Output_layer_call_and_return_conditional_losses_15449784?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15449941*
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
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15449946*
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
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15449951*
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
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15449956*
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
NoOpNoOp ^Dense_1/StatefulPartitionedCall1^Dense_1/kernel/Regularizer/Square/ReadVariableOp ^Dense_2/StatefulPartitionedCall1^Dense_2/kernel/Regularizer/Square/ReadVariableOp ^Dense_3/StatefulPartitionedCall1^Dense_3/kernel/Regularizer/Square/ReadVariableOp ^Dense_4/StatefulPartitionedCall1^Dense_4/kernel/Regularizer/Square/ReadVariableOp^Output/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
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
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15450478

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
H
,__inference_dropout_1_layer_call_fn_15450515

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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449772`
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
?L
?	
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450312

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
:?????????2l
dropout_1/IdentityIdentityDense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
Output/MatMulMatMuldropout_1/Identity:output:0$Output/MatMul/ReadVariableOp:value:0*
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
&__inference_signature_wrapper_15450199
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
#__inference__wrapped_model_15449668o
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
?2
?
$__inference__traced_restore_15450705
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
assignvariableop_9_output_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: 
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
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
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
?
?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15450446

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
?
?
*__inference_Dense_1_layer_call_fn_15450397

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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692o
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
?6
?	
#__inference__wrapped_model_15449668
dense_1_inputF
3sequential_1_dense_1_matmul_readvariableop_resource:	?
2B
4sequential_1_dense_1_biasadd_readvariableop_resource:2E
3sequential_1_dense_2_matmul_readvariableop_resource:22B
4sequential_1_dense_2_biasadd_readvariableop_resource:2E
3sequential_1_dense_3_matmul_readvariableop_resource:22B
4sequential_1_dense_3_biasadd_readvariableop_resource:2E
3sequential_1_dense_4_matmul_readvariableop_resource:22B
4sequential_1_dense_4_biasadd_readvariableop_resource:2D
2sequential_1_output_matmul_readvariableop_resource:2A
3sequential_1_output_biasadd_readvariableop_resource:
identity??+sequential_1/Dense_1/BiasAdd/ReadVariableOp?*sequential_1/Dense_1/MatMul/ReadVariableOp?+sequential_1/Dense_2/BiasAdd/ReadVariableOp?*sequential_1/Dense_2/MatMul/ReadVariableOp?+sequential_1/Dense_3/BiasAdd/ReadVariableOp?*sequential_1/Dense_3/MatMul/ReadVariableOp?+sequential_1/Dense_4/BiasAdd/ReadVariableOp?*sequential_1/Dense_4/MatMul/ReadVariableOp?*sequential_1/Output/BiasAdd/ReadVariableOp?)sequential_1/Output/MatMul/ReadVariableOp?
*sequential_1/Dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
2*
dtype0?
sequential_1/Dense_1/MatMulMatMuldense_1_input2sequential_1/Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
+sequential_1/Dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_1/Dense_1/BiasAddBiasAdd%sequential_1/Dense_1/MatMul:product:03sequential_1/Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2z
sequential_1/Dense_1/ReluRelu%sequential_1/Dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_1/Dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential_1/Dense_2/MatMulMatMul'sequential_1/Dense_1/Relu:activations:02sequential_1/Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
+sequential_1/Dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_1/Dense_2/BiasAddBiasAdd%sequential_1/Dense_2/MatMul:product:03sequential_1/Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2z
sequential_1/Dense_2/ReluRelu%sequential_1/Dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_1/Dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential_1/Dense_3/MatMulMatMul'sequential_1/Dense_2/Relu:activations:02sequential_1/Dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
+sequential_1/Dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_1/Dense_3/BiasAddBiasAdd%sequential_1/Dense_3/MatMul:product:03sequential_1/Dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2z
sequential_1/Dense_3/ReluRelu%sequential_1/Dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_1/Dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0?
sequential_1/Dense_4/MatMulMatMul'sequential_1/Dense_3/Relu:activations:02sequential_1/Dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
+sequential_1/Dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_1/Dense_4/BiasAddBiasAdd%sequential_1/Dense_4/MatMul:product:03sequential_1/Dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2z
sequential_1/Dense_4/ReluRelu%sequential_1/Dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
sequential_1/dropout_1/IdentityIdentity'sequential_1/Dense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
)sequential_1/Output/MatMul/ReadVariableOpReadVariableOp2sequential_1_output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
sequential_1/Output/MatMulMatMul(sequential_1/dropout_1/Identity:output:01sequential_1/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*sequential_1/Output/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/Output/BiasAddBiasAdd$sequential_1/Output/MatMul:product:02sequential_1/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_1/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_1/Dense_1/BiasAdd/ReadVariableOp+^sequential_1/Dense_1/MatMul/ReadVariableOp,^sequential_1/Dense_2/BiasAdd/ReadVariableOp+^sequential_1/Dense_2/MatMul/ReadVariableOp,^sequential_1/Dense_3/BiasAdd/ReadVariableOp+^sequential_1/Dense_3/MatMul/ReadVariableOp,^sequential_1/Dense_4/BiasAdd/ReadVariableOp+^sequential_1/Dense_4/MatMul/ReadVariableOp+^sequential_1/Output/BiasAdd/ReadVariableOp*^sequential_1/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????
: : : : : : : : : : 2Z
+sequential_1/Dense_1/BiasAdd/ReadVariableOp+sequential_1/Dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/Dense_1/MatMul/ReadVariableOp*sequential_1/Dense_1/MatMul/ReadVariableOp2Z
+sequential_1/Dense_2/BiasAdd/ReadVariableOp+sequential_1/Dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/Dense_2/MatMul/ReadVariableOp*sequential_1/Dense_2/MatMul/ReadVariableOp2Z
+sequential_1/Dense_3/BiasAdd/ReadVariableOp+sequential_1/Dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/Dense_3/MatMul/ReadVariableOp*sequential_1/Dense_3/MatMul/ReadVariableOp2Z
+sequential_1/Dense_4/BiasAdd/ReadVariableOp+sequential_1/Dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/Dense_4/MatMul/ReadVariableOp*sequential_1/Dense_4/MatMul/ReadVariableOp2X
*sequential_1/Output/BiasAdd/ReadVariableOp*sequential_1/Output/BiasAdd/ReadVariableOp2V
)sequential_1/Output/MatMul/ReadVariableOp)sequential_1/Output/MatMul/ReadVariableOp:W S
(
_output_shapes
:??????????

'
_user_specified_nameDense_1_input
?
?
__inference_loss_fn_1_15450578K
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
?
?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738

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
?>
?
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450094
dense_1_input#
dense_1_15450043:	?
2
dense_1_15450045:2"
dense_2_15450048:22
dense_2_15450050:2"
dense_3_15450053:22
dense_3_15450055:2"
dense_4_15450058:22
dense_4_15450060:2!
output_15450064:2
output_15450066:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_15450043dense_1_15450045*
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15450048dense_2_15450050*
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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15450053dense_3_15450055*
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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15450058dense_4_15450060*
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761?
dropout_1/PartitionedCallPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449772?
Output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_15450064output_15450066*
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
D__inference_Output_layer_call_and_return_conditional_losses_15449784?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15450043*
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
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15450048*
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
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15450053*
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
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15450058*
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
?
?
*__inference_Dense_3_layer_call_fn_15450461

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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738o
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
?
?
*__inference_Dense_2_layer_call_fn_15450429

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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715o
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
__inference_loss_fn_0_15450567L
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
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450525

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
?	
?
D__inference_Output_layer_call_and_return_conditional_losses_15450556

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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692

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
?S
?	
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450382

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
:?????????2\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_1/dropout/MulMulDense_4/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2a
dropout_1/dropout/ShapeShapeDense_4/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
Output/MatMulMatMuldropout_1/dropout/Mul_1:z:0$Output/MatMul/ReadVariableOp:value:0*
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
?
__inference_loss_fn_2_15450589K
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
?"
?
!__inference__traced_save_15450659
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
&savev2_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
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

identity_1Identity_1:output:0*l
_input_shapes[
Y: :	?
2:2:22:2:22:2:22:2:2:: : : 2(
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
: 
?

?
/__inference_sequential_1_layer_call_fn_15450249

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
GPU2 *0J 8? *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449992o
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
?

?
/__inference_sequential_1_layer_call_fn_15450224

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
GPU2 *0J 8? *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449815o
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
?
e
,__inference_dropout_1_layer_call_fn_15450520

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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449868o
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
?>
?
J__inference_sequential_1_layer_call_and_return_conditional_losses_15449815

inputs#
dense_1_15449693:	?
2
dense_1_15449695:2"
dense_2_15449716:22
dense_2_15449718:2"
dense_3_15449739:22
dense_3_15449741:2"
dense_4_15449762:22
dense_4_15449764:2!
output_15449785:2
output_15449787:
identity??Dense_1/StatefulPartitionedCall?0Dense_1/kernel/Regularizer/Square/ReadVariableOp?Dense_2/StatefulPartitionedCall?0Dense_2/kernel/Regularizer/Square/ReadVariableOp?Dense_3/StatefulPartitionedCall?0Dense_3/kernel/Regularizer/Square/ReadVariableOp?Dense_4/StatefulPartitionedCall?0Dense_4/kernel/Regularizer/Square/ReadVariableOp?Output/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_15449693dense_1_15449695*
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15449692?
Dense_2/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0dense_2_15449716dense_2_15449718*
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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15449715?
Dense_3/StatefulPartitionedCallStatefulPartitionedCall(Dense_2/StatefulPartitionedCall:output:0dense_3_15449739dense_3_15449741*
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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15449738?
Dense_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_3/StatefulPartitionedCall:output:0dense_4_15449762dense_4_15449764*
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15449761?
dropout_1/PartitionedCallPartitionedCall(Dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_15449772?
Output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_15449785output_15449787*
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
D__inference_Output_layer_call_and_return_conditional_losses_15449784?
0Dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_15449693*
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
0Dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_15449716*
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
0Dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_15449739*
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
0Dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_15449762*
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

 
_user_specified_nameinputs"?L
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
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?z
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
W__call__
*X&call_and_return_all_conditional_losses
Y_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
"
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
 "
trackable_list_wrapper
<
f0
g1
h2
i3"
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
	trainable_variables

regularization_losses
W__call__
Y_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
jserving_default"
signature_map
!:	?
22Dense_1/kernel
:22Dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
f0"
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 :222Dense_2/kernel
:22Dense_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
g0"
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 :222Dense_3/kernel
:22Dense_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
h0"
trackable_list_wrapper
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 :222Dense_4/kernel
:22Dense_4/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
i0"
trackable_list_wrapper
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
!	variables
"trainable_variables
#regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
%	variables
&trainable_variables
'regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
:22Output/kernel
:2Output/bias
.
)0
*1"
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
+	variables
,trainable_variables
-regularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
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
J
0
1
2
3
4
5"
trackable_list_wrapper
'
R0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
f0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
h0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
i0"
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
.
)0
*1"
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
	Stotal
	Tcount
U	variables
V	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
?2?
/__inference_sequential_1_layer_call_fn_15449838
/__inference_sequential_1_layer_call_fn_15450224
/__inference_sequential_1_layer_call_fn_15450249
/__inference_sequential_1_layer_call_fn_15450040?
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
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450312
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450382
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450094
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450148?
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
#__inference__wrapped_model_15449668Dense_1_input"?
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
*__inference_Dense_1_layer_call_fn_15450397?
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15450414?
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
*__inference_Dense_2_layer_call_fn_15450429?
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
E__inference_Dense_2_layer_call_and_return_conditional_losses_15450446?
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
*__inference_Dense_3_layer_call_fn_15450461?
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
E__inference_Dense_3_layer_call_and_return_conditional_losses_15450478?
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
*__inference_Dense_4_layer_call_fn_15450493?
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
E__inference_Dense_4_layer_call_and_return_conditional_losses_15450510?
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
,__inference_dropout_1_layer_call_fn_15450515
,__inference_dropout_1_layer_call_fn_15450520?
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
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450525
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450537?
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
)__inference_Output_layer_call_fn_15450546?
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
D__inference_Output_layer_call_and_return_conditional_losses_15450556?
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
__inference_loss_fn_0_15450567?
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
__inference_loss_fn_1_15450578?
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
__inference_loss_fn_2_15450589?
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
__inference_loss_fn_3_15450600?
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
&__inference_signature_wrapper_15450199Dense_1_input"?
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
E__inference_Dense_1_layer_call_and_return_conditional_losses_15450414]0?-
&?#
!?
inputs??????????

? "%?"
?
0?????????2
? ~
*__inference_Dense_1_layer_call_fn_15450397P0?-
&?#
!?
inputs??????????

? "??????????2?
E__inference_Dense_2_layer_call_and_return_conditional_losses_15450446\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_2_layer_call_fn_15450429O/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_Dense_3_layer_call_and_return_conditional_losses_15450478\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_3_layer_call_fn_15450461O/?,
%?"
 ?
inputs?????????2
? "??????????2?
E__inference_Dense_4_layer_call_and_return_conditional_losses_15450510\ /?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????2
? }
*__inference_Dense_4_layer_call_fn_15450493O /?,
%?"
 ?
inputs?????????2
? "??????????2?
D__inference_Output_layer_call_and_return_conditional_losses_15450556\)*/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_Output_layer_call_fn_15450546O)*/?,
%?"
 ?
inputs?????????2
? "???????????
#__inference__wrapped_model_15449668v
 )*7?4
-?*
(?%
Dense_1_input??????????

? "/?,
*
Output ?
Output??????????
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450525\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
G__inference_dropout_1_layer_call_and_return_conditional_losses_15450537\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? 
,__inference_dropout_1_layer_call_fn_15450515O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2
,__inference_dropout_1_layer_call_fn_15450520O3?0
)?&
 ?
inputs?????????2
p
? "??????????2=
__inference_loss_fn_0_15450567?

? 
? "? =
__inference_loss_fn_1_15450578?

? 
? "? =
__inference_loss_fn_2_15450589?

? 
? "? =
__inference_loss_fn_3_15450600?

? 
? "? ?
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450094t
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
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450148t
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
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450312m
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
J__inference_sequential_1_layer_call_and_return_conditional_losses_15450382m
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
/__inference_sequential_1_layer_call_fn_15449838g
 )*??<
5?2
(?%
Dense_1_input??????????

p 

 
? "???????????
/__inference_sequential_1_layer_call_fn_15450040g
 )*??<
5?2
(?%
Dense_1_input??????????

p

 
? "???????????
/__inference_sequential_1_layer_call_fn_15450224`
 )*8?5
.?+
!?
inputs??????????

p 

 
? "???????????
/__inference_sequential_1_layer_call_fn_15450249`
 )*8?5
.?+
!?
inputs??????????

p

 
? "???????????
&__inference_signature_wrapper_15450199?
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