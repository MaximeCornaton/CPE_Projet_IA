Ľň(
ź
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ľ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeíout_type"	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
°
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.15.02v2.15.0-rc1-8-g6887368d6d48Ł˝'
Ŕ
Adam/lstm_5/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *-

debug_nameAdam/lstm_5/lstm_cell/bias/v/*
dtype0*
shape:*-
shared_nameAdam/lstm_5/lstm_cell/bias/v

0Adam/lstm_5/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell/bias/v*
_output_shapes	
:*
dtype0
é
(Adam/lstm_5/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/lstm_5/lstm_cell/recurrent_kernel/v/*
dtype0*
shape:
*9
shared_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/v
§
<Adam/lstm_5/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/lstm_5/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Ę
Adam/lstm_5/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: */

debug_name!Adam/lstm_5/lstm_cell/kernel/v/*
dtype0*
shape:	*/
shared_name Adam/lstm_5/lstm_cell/kernel/v

2Adam/lstm_5/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell/kernel/v*
_output_shapes
:	*
dtype0
¨
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *%

debug_nameAdam/dense_14/bias/v/*
dtype0*
shape:ŻM*%
shared_nameAdam/dense_14/bias/v
z
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes	
:ŻM*
dtype0
ł
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *'

debug_nameAdam/dense_14/kernel/v/*
dtype0*
shape:
ŻM*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v* 
_output_shapes
:
ŻM*
dtype0
Ç
Adam/embedding_8/embeddings/vVarHandleOp*
_output_shapes
: *.

debug_name Adam/embedding_8/embeddings/v/*
dtype0*
shape:	ŻM*.
shared_nameAdam/embedding_8/embeddings/v

1Adam/embedding_8/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/v*
_output_shapes
:	ŻM*
dtype0
Ŕ
Adam/lstm_5/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *-

debug_nameAdam/lstm_5/lstm_cell/bias/m/*
dtype0*
shape:*-
shared_nameAdam/lstm_5/lstm_cell/bias/m

0Adam/lstm_5/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell/bias/m*
_output_shapes	
:*
dtype0
é
(Adam/lstm_5/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/lstm_5/lstm_cell/recurrent_kernel/m/*
dtype0*
shape:
*9
shared_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/m
§
<Adam/lstm_5/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/lstm_5/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Ę
Adam/lstm_5/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: */

debug_name!Adam/lstm_5/lstm_cell/kernel/m/*
dtype0*
shape:	*/
shared_name Adam/lstm_5/lstm_cell/kernel/m

2Adam/lstm_5/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell/kernel/m*
_output_shapes
:	*
dtype0
¨
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *%

debug_nameAdam/dense_14/bias/m/*
dtype0*
shape:ŻM*%
shared_nameAdam/dense_14/bias/m
z
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes	
:ŻM*
dtype0
ł
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *'

debug_nameAdam/dense_14/kernel/m/*
dtype0*
shape:
ŻM*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m* 
_output_shapes
:
ŻM*
dtype0
Ç
Adam/embedding_8/embeddings/mVarHandleOp*
_output_shapes
: *.

debug_name Adam/embedding_8/embeddings/m/*
dtype0*
shape:	ŻM*.
shared_nameAdam/embedding_8/embeddings/m

1Adam/embedding_8/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/m*
_output_shapes
:	ŻM*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0

Adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameAdam/learning_rate/*
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0


Adam/decayVarHandleOp*
_output_shapes
: *

debug_nameAdam/decay/*
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

Adam/beta_2VarHandleOp*
_output_shapes
: *

debug_nameAdam/beta_2/*
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0

Adam/beta_1VarHandleOp*
_output_shapes
: *

debug_nameAdam/beta_1/*
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0

	Adam/iterVarHandleOp*
_output_shapes
: *

debug_name
Adam/iter/*
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
Ť
lstm_5/lstm_cell/biasVarHandleOp*
_output_shapes
: *&

debug_namelstm_5/lstm_cell/bias/*
dtype0*
shape:*&
shared_namelstm_5/lstm_cell/bias
|
)lstm_5/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell/bias*
_output_shapes	
:*
dtype0
Ô
!lstm_5/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *2

debug_name$"lstm_5/lstm_cell/recurrent_kernel/*
dtype0*
shape:
*2
shared_name#!lstm_5/lstm_cell/recurrent_kernel

5lstm_5/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_5/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
ľ
lstm_5/lstm_cell/kernelVarHandleOp*
_output_shapes
: *(

debug_namelstm_5/lstm_cell/kernel/*
dtype0*
shape:	*(
shared_namelstm_5/lstm_cell/kernel

+lstm_5/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell/kernel*
_output_shapes
:	*
dtype0

dense_14/biasVarHandleOp*
_output_shapes
: *

debug_namedense_14/bias/*
dtype0*
shape:ŻM*
shared_namedense_14/bias
l
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes	
:ŻM*
dtype0

dense_14/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_14/kernel/*
dtype0*
shape:
ŻM* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
ŻM*
dtype0
˛
embedding_8/embeddingsVarHandleOp*
_output_shapes
: *'

debug_nameembedding_8/embeddings/*
dtype0*
shape:	ŻM*'
shared_nameembedding_8/embeddings

*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings*
_output_shapes
:	ŻM*
dtype0
z
serving_default_input_6Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
Ë
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6embedding_8/embeddingslstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/biasdense_14/kerneldense_14/bias*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3353253

NoOpNoOp
Ř8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*8
value8B8 B˙7
Ű
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*

	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
Ś
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias*
.
0
-1
.2
/3
+4
,5*
.
0
-1
.2
/3
+4
,5*
* 
°
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

5trace_0
6trace_1* 

7trace_0
8trace_1* 
* 
ś
9iter

:beta_1

;beta_2
	<decay
=learning_ratemz+m{,m|-m}.m~/mv+v,v-v.v/v*

>serving_default* 

0*

0*
* 

?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 
jd
VARIABLE_VALUEembedding_8/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1
/2*

-0
.1
/2*
* 


Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
6
Ptrace_0
Qtrace_1
Rtrace_2
Strace_3* 
* 
ă
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator
[
state_size

-kernel
.recurrent_kernel
/bias*
* 
* 
* 
* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

atrace_0* 

btrace_0* 

+0
,1*

+0
,1*
* 

cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

htrace_0* 

itrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_5/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_5/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_5/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

j0
k1*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 

lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
q	variables
r	keras_api
	stotal
	tcount*
H
u	variables
v	keras_api
	wtotal
	xcount
y
_fn_kwargs*
* 
* 
* 
* 
* 

s0
t1*

q	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

w0
x1*

u	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUEAdam/embedding_8/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_5/lstm_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/lstm_5/lstm_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm_5/lstm_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_8/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_5/lstm_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/lstm_5/lstm_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm_5/lstm_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding_8/embeddingsdense_14/kerneldense_14/biaslstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding_8/embeddings/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/lstm_5/lstm_cell/kernel/m(Adam/lstm_5/lstm_cell/recurrent_kernel/mAdam/lstm_5/lstm_cell/bias/mAdam/embedding_8/embeddings/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/lstm_5/lstm_cell/kernel/v(Adam/lstm_5/lstm_cell/recurrent_kernel/vAdam/lstm_5/lstm_cell/bias/vConst*(
Tin!
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_3355235

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_8/embeddingsdense_14/kerneldense_14/biaslstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding_8/embeddings/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/lstm_5/lstm_cell/kernel/m(Adam/lstm_5/lstm_cell/recurrent_kernel/mAdam/lstm_5/lstm_cell/bias/mAdam/embedding_8/embeddings/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/lstm_5/lstm_cell/kernel/v(Adam/lstm_5/lstm_cell/recurrent_kernel/vAdam/lstm_5/lstm_cell/bias/v*'
Tin 
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_3355325˛&
é@
Í
*__inference_gpu_lstm_with_fallback_3352958

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÍ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_51e5d0a5-e181-49bd-a01e-483b6c001d74*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
´:
Á
!__inference_standard_lstm_3352400

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3352315*
condR
while_cond_3352314*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_57212dc2-5bd5-4267-8168-597d5ed229d0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
é@
Í
*__inference_gpu_lstm_with_fallback_3354841

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÍ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2a55939f-4309-4204-b842-875d821841ca*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 A
Í
*__inference_gpu_lstm_with_fallback_3353987

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÖ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_27d8301f-155d-40df-9006-d18b6f74f3c7*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3351426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
é@
Í
*__inference_gpu_lstm_with_fallback_3351169

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÍ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_aff05a66-1a49-4ae9-9abb-cb498fca2182*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş6
Ű
"__inference__wrapped_model_3351357
input_6	B
/model_lstm_embedding_8_embedding_lookup_3350920:	ŻMA
.model_lstm_lstm_5_read_readvariableop_resource:	D
0model_lstm_lstm_5_read_1_readvariableop_resource:
?
0model_lstm_lstm_5_read_2_readvariableop_resource:	F
2model_lstm_dense_14_matmul_readvariableop_resource:
ŻMB
3model_lstm_dense_14_biasadd_readvariableop_resource:	ŻM
identity˘*model_LSTM/dense_14/BiasAdd/ReadVariableOp˘)model_LSTM/dense_14/MatMul/ReadVariableOp˘'model_LSTM/embedding_8/embedding_lookup˘%model_LSTM/lstm_5/Read/ReadVariableOp˘'model_LSTM/lstm_5/Read_1/ReadVariableOp˘'model_LSTM/lstm_5/Read_2/ReadVariableOp
'model_LSTM/embedding_8/embedding_lookupResourceGather/model_lstm_embedding_8_embedding_lookup_3350920input_6*
Tindices0	*B
_class8
64loc:@model_LSTM/embedding_8/embedding_lookup/3350920*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0¤
0model_LSTM/embedding_8/embedding_lookup/IdentityIdentity0model_LSTM/embedding_8/embedding_lookup:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_LSTM/lstm_5/ShapeShape9model_LSTM/embedding_8/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::íĎo
%model_LSTM/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_LSTM/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_LSTM/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ť
model_LSTM/lstm_5/strided_sliceStridedSlice model_LSTM/lstm_5/Shape:output:0.model_LSTM/lstm_5/strided_slice/stack:output:00model_LSTM/lstm_5/strided_slice/stack_1:output:00model_LSTM/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 model_LSTM/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Š
model_LSTM/lstm_5/zeros/packedPack(model_LSTM/lstm_5/strided_slice:output:0)model_LSTM/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
model_LSTM/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
model_LSTM/lstm_5/zerosFill'model_LSTM/lstm_5/zeros/packed:output:0&model_LSTM/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
"model_LSTM/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :­
 model_LSTM/lstm_5/zeros_1/packedPack(model_LSTM/lstm_5/strided_slice:output:0+model_LSTM/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
model_LSTM/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
model_LSTM/lstm_5/zeros_1Fill)model_LSTM/lstm_5/zeros_1/packed:output:0(model_LSTM/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_LSTM/lstm_5/Read/ReadVariableOpReadVariableOp.model_lstm_lstm_5_read_readvariableop_resource*
_output_shapes
:	*
dtype0
model_LSTM/lstm_5/IdentityIdentity-model_LSTM/lstm_5/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	
'model_LSTM/lstm_5/Read_1/ReadVariableOpReadVariableOp0model_lstm_lstm_5_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
model_LSTM/lstm_5/Identity_1Identity/model_LSTM/lstm_5/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:

'model_LSTM/lstm_5/Read_2/ReadVariableOpReadVariableOp0model_lstm_lstm_5_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0
model_LSTM/lstm_5/Identity_2Identity/model_LSTM/lstm_5/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ö
!model_LSTM/lstm_5/PartitionedCallPartitionedCall9model_LSTM/embedding_8/embedding_lookup/Identity:output:0 model_LSTM/lstm_5/zeros:output:0"model_LSTM/lstm_5/zeros_1:output:0#model_LSTM/lstm_5/Identity:output:0%model_LSTM/lstm_5/Identity_1:output:0%model_LSTM/lstm_5/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3351075k
model_LSTM/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ť
model_LSTM/flatten_5/ReshapeReshape*model_LSTM/lstm_5/PartitionedCall:output:1#model_LSTM/flatten_5/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)model_LSTM/dense_14/MatMul/ReadVariableOpReadVariableOp2model_lstm_dense_14_matmul_readvariableop_resource* 
_output_shapes
:
ŻM*
dtype0ą
model_LSTM/dense_14/MatMulMatMul%model_LSTM/flatten_5/Reshape:output:01model_LSTM/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM
*model_LSTM/dense_14/BiasAdd/ReadVariableOpReadVariableOp3model_lstm_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:ŻM*
dtype0ł
model_LSTM/dense_14/BiasAddBiasAdd$model_LSTM/dense_14/MatMul:product:02model_LSTM/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM
model_LSTM/dense_14/SoftmaxSoftmax$model_LSTM/dense_14/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMu
IdentityIdentity%model_LSTM/dense_14/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMĄ
NoOpNoOp+^model_LSTM/dense_14/BiasAdd/ReadVariableOp*^model_LSTM/dense_14/MatMul/ReadVariableOp(^model_LSTM/embedding_8/embedding_lookup&^model_LSTM/lstm_5/Read/ReadVariableOp(^model_LSTM/lstm_5/Read_1/ReadVariableOp(^model_LSTM/lstm_5/Read_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 2X
*model_LSTM/dense_14/BiasAdd/ReadVariableOp*model_LSTM/dense_14/BiasAdd/ReadVariableOp2V
)model_LSTM/dense_14/MatMul/ReadVariableOp)model_LSTM/dense_14/MatMul/ReadVariableOp2R
'model_LSTM/embedding_8/embedding_lookup'model_LSTM/embedding_8/embedding_lookup2N
%model_LSTM/lstm_5/Read/ReadVariableOp%model_LSTM/lstm_5/Read/ReadVariableOp2R
'model_LSTM/lstm_5/Read_1/ReadVariableOp'model_LSTM/lstm_5/Read_1/ReadVariableOp2R
'model_LSTM/lstm_5/Read_2/ReadVariableOp'model_LSTM/lstm_5/Read_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:'#
!
_user_specified_name	3350920:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
 A
Í
*__inference_gpu_lstm_with_fallback_3351605

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÖ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_f0543b17-fd9d-4ce3-a417-82d0a3898f8d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
§


%__inference_signature_wrapper_3353253
input_6	
unknown:	ŻM
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:
ŻM
	unknown_4:	ŻM
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_3351357p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353249:'#
!
_user_specified_name	3353247:'#
!
_user_specified_name	3353245:'#
!
_user_specified_name	3353243:'#
!
_user_specified_name	3353241:'#
!
_user_specified_name	3353239:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
Ů
ś
(__inference_lstm_5_layer_call_fn_3353312

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353137t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353308:'#
!
_user_specified_name	3353306:'#
!
_user_specified_name	3353304:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3354662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
é@
Í
*__inference_gpu_lstm_with_fallback_3352494

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÍ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_57212dc2-5bd5-4267-8168-597d5ed229d0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
´:
Á
!__inference_standard_lstm_3354747

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3354662*
condR
while_cond_3354661*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2a55939f-4309-4204-b842-875d821841ca*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
´:
Á
!__inference_standard_lstm_3352864

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3352779*
condR
while_cond_3352778*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_51e5d0a5-e181-49bd-a01e-483b6c001d74*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÚÖ

 __inference__traced_save_3355235
file_prefix@
-read_disablecopyonread_embedding_8_embeddings:	ŻM<
(read_1_disablecopyonread_dense_14_kernel:
ŻM5
&read_2_disablecopyonread_dense_14_bias:	ŻMC
0read_3_disablecopyonread_lstm_5_lstm_cell_kernel:	N
:read_4_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel:
=
.read_5_disablecopyonread_lstm_5_lstm_cell_bias:	,
"read_6_disablecopyonread_adam_iter:	 .
$read_7_disablecopyonread_adam_beta_1: .
$read_8_disablecopyonread_adam_beta_2: -
#read_9_disablecopyonread_adam_decay: 6
,read_10_disablecopyonread_adam_learning_rate: +
!read_11_disablecopyonread_total_1: +
!read_12_disablecopyonread_count_1: )
read_13_disablecopyonread_total: )
read_14_disablecopyonread_count: J
7read_15_disablecopyonread_adam_embedding_8_embeddings_m:	ŻMD
0read_16_disablecopyonread_adam_dense_14_kernel_m:
ŻM=
.read_17_disablecopyonread_adam_dense_14_bias_m:	ŻMK
8read_18_disablecopyonread_adam_lstm_5_lstm_cell_kernel_m:	V
Bread_19_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_m:
E
6read_20_disablecopyonread_adam_lstm_5_lstm_cell_bias_m:	J
7read_21_disablecopyonread_adam_embedding_8_embeddings_v:	ŻMD
0read_22_disablecopyonread_adam_dense_14_kernel_v:
ŻM=
.read_23_disablecopyonread_adam_dense_14_bias_v:	ŻMK
8read_24_disablecopyonread_adam_lstm_5_lstm_cell_kernel_v:	V
Bread_25_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_v:
E
6read_26_disablecopyonread_adam_lstm_5_lstm_cell_bias_v:	
savev2_const
identity_55˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_12/DisableCopyOnRead˘Read_12/ReadVariableOp˘Read_13/DisableCopyOnRead˘Read_13/ReadVariableOp˘Read_14/DisableCopyOnRead˘Read_14/ReadVariableOp˘Read_15/DisableCopyOnRead˘Read_15/ReadVariableOp˘Read_16/DisableCopyOnRead˘Read_16/ReadVariableOp˘Read_17/DisableCopyOnRead˘Read_17/ReadVariableOp˘Read_18/DisableCopyOnRead˘Read_18/ReadVariableOp˘Read_19/DisableCopyOnRead˘Read_19/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_20/DisableCopyOnRead˘Read_20/ReadVariableOp˘Read_21/DisableCopyOnRead˘Read_21/ReadVariableOp˘Read_22/DisableCopyOnRead˘Read_22/ReadVariableOp˘Read_23/DisableCopyOnRead˘Read_23/ReadVariableOp˘Read_24/DisableCopyOnRead˘Read_24/ReadVariableOp˘Read_25/DisableCopyOnRead˘Read_25/ReadVariableOp˘Read_26/DisableCopyOnRead˘Read_26/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_embedding_8_embeddings"/device:CPU:0*
_output_shapes
 Ş
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_embedding_8_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ŻM*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ŻMb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	ŻM|
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_dense_14_kernel"/device:CPU:0*
_output_shapes
 Ş
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_dense_14_kernel^Read_1/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ŻM*
dtype0o

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻMe

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻMz
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_dense_14_bias"/device:CPU:0*
_output_shapes
 Ł
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_dense_14_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ŻM*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ŻM`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:ŻM
Read_3/DisableCopyOnReadDisableCopyOnRead0read_3_disablecopyonread_lstm_5_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ą
Read_3/ReadVariableOpReadVariableOp0read_3_disablecopyonread_lstm_5_lstm_cell_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_4/DisableCopyOnReadDisableCopyOnRead:read_4_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ź
Read_4/ReadVariableOpReadVariableOp:read_4_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_5/DisableCopyOnReadDisableCopyOnRead.read_5_disablecopyonread_lstm_5_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ť
Read_5/ReadVariableOpReadVariableOp.read_5_disablecopyonread_lstm_5_lstm_cell_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_adam_iter^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_adam_beta_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_adam_beta_2^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_adam_decay^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 Ś
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_adam_learning_rate^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_11/DisableCopyOnReadDisableCopyOnRead!read_11_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 
Read_11/ReadVariableOpReadVariableOp!read_11_disablecopyonread_total_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_12/DisableCopyOnReadDisableCopyOnRead!read_12_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 
Read_12/ReadVariableOpReadVariableOp!read_12_disablecopyonread_count_1^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_total^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_14/DisableCopyOnReadDisableCopyOnReadread_14_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOpread_14_disablecopyonread_count^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_15/DisableCopyOnReadDisableCopyOnRead7read_15_disablecopyonread_adam_embedding_8_embeddings_m"/device:CPU:0*
_output_shapes
 ş
Read_15/ReadVariableOpReadVariableOp7read_15_disablecopyonread_adam_embedding_8_embeddings_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ŻM*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ŻMf
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	ŻM
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_adam_dense_14_kernel_m"/device:CPU:0*
_output_shapes
 ´
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_adam_dense_14_kernel_m^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ŻM*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻMg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻM
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_dense_14_bias_m"/device:CPU:0*
_output_shapes
 ­
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_dense_14_bias_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ŻM*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ŻMb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:ŻM
Read_18/DisableCopyOnReadDisableCopyOnRead8read_18_disablecopyonread_adam_lstm_5_lstm_cell_kernel_m"/device:CPU:0*
_output_shapes
 ť
Read_18/ReadVariableOpReadVariableOp8read_18_disablecopyonread_adam_lstm_5_lstm_cell_kernel_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_19/DisableCopyOnReadDisableCopyOnReadBread_19_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_m"/device:CPU:0*
_output_shapes
 Ć
Read_19/ReadVariableOpReadVariableOpBread_19_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_adam_lstm_5_lstm_cell_bias_m"/device:CPU:0*
_output_shapes
 ľ
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_adam_lstm_5_lstm_cell_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_21/DisableCopyOnReadDisableCopyOnRead7read_21_disablecopyonread_adam_embedding_8_embeddings_v"/device:CPU:0*
_output_shapes
 ş
Read_21/ReadVariableOpReadVariableOp7read_21_disablecopyonread_adam_embedding_8_embeddings_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ŻM*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ŻMf
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	ŻM
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_dense_14_kernel_v"/device:CPU:0*
_output_shapes
 ´
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_dense_14_kernel_v^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ŻM*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻMg
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ŻM
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_dense_14_bias_v"/device:CPU:0*
_output_shapes
 ­
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_dense_14_bias_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ŻM*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ŻMb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:ŻM
Read_24/DisableCopyOnReadDisableCopyOnRead8read_24_disablecopyonread_adam_lstm_5_lstm_cell_kernel_v"/device:CPU:0*
_output_shapes
 ť
Read_24/ReadVariableOpReadVariableOp8read_24_disablecopyonread_adam_lstm_5_lstm_cell_kernel_v^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_25/DisableCopyOnReadDisableCopyOnReadBread_25_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_v"/device:CPU:0*
_output_shapes
 Ć
Read_25/ReadVariableOpReadVariableOpBread_25_disablecopyonread_adam_lstm_5_lstm_cell_recurrent_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_adam_lstm_5_lstm_cell_bias_v"/device:CPU:0*
_output_shapes
 ľ
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_adam_lstm_5_lstm_cell_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:ý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ś
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĽ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ŕ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: ś
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:<8
6
_user_specified_nameAdam/lstm_5/lstm_cell/bias/v:HD
B
_user_specified_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/v:>:
8
_user_specified_name Adam/lstm_5/lstm_cell/kernel/v:40
.
_user_specified_nameAdam/dense_14/bias/v:62
0
_user_specified_nameAdam/dense_14/kernel/v:=9
7
_user_specified_nameAdam/embedding_8/embeddings/v:<8
6
_user_specified_nameAdam/lstm_5/lstm_cell/bias/m:HD
B
_user_specified_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/m:>:
8
_user_specified_name Adam/lstm_5/lstm_cell/kernel/m:40
.
_user_specified_nameAdam/dense_14/bias/m:62
0
_user_specified_nameAdam/dense_14/kernel/m:=9
7
_user_specified_nameAdam/embedding_8/embeddings/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*
&
$
_user_specified_name
Adam/decay:+	'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:51
/
_user_specified_namelstm_5/lstm_cell/bias:A=
;
_user_specified_name#!lstm_5/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_5/lstm_cell/kernel:-)
'
_user_specified_namedense_14/bias:/+
)
_user_specified_namedense_14/kernel:62
0
_user_specified_nameembedding_8/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354593

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ˇ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3354320n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
ő
=__inference___backward_gpu_lstm_with_fallback_3353988_3354164
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Á
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesý
ú:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_27d8301f-155d-40df-9006-d18b6f74f3c7*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3354163*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:_
[
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý

ů
E__inference_dense_14_layer_call_and_return_conditional_losses_3355051

inputs2
matmul_readvariableop_resource:
ŻM.
biasadd_readvariableop_resource:	ŻM
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ŻM*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ŻM*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ů
ś
(__inference_lstm_5_layer_call_fn_3353301

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3352673t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353297:'#
!
_user_specified_name	3353295:'#
!
_user_specified_name	3353293:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
Ś
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3353152
input_6	&
embedding_8_3352708:	ŻM!
lstm_5_3353138:	"
lstm_5_3353140:

lstm_5_3353142:	$
dense_14_3353146:
ŻM
dense_14_3353148:	ŻM
identity˘ dense_14/StatefulPartitionedCall˘#embedding_8/StatefulPartitionedCall˘lstm_5/StatefulPartitionedCallí
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinput_6embedding_8_3352708*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_8_layer_call_and_return_conditional_losses_3352243¨
lstm_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0lstm_5_3353138lstm_5_3353140lstm_5_3353142*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353137Ý
flatten_5/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_3352686
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_14_3353146dense_14_3353148*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_3352698y
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM
NoOpNoOp!^dense_14/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:'#
!
_user_specified_name	3353148:'#
!
_user_specified_name	3353146:'#
!
_user_specified_name	3353142:'#
!
_user_specified_name	3353140:'#
!
_user_specified_name	3353138:'#
!
_user_specified_name	3352708:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
ą
ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3351784

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ŕ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3351511w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą
§
H__inference_embedding_8_layer_call_and_return_conditional_losses_3352243

inputs	+
embedding_lookup_3352238:	ŻM
identity˘embedding_lookupť
embedding_lookupResourceGatherembedding_lookup_3352238inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/3352238*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:'#
!
_user_specified_name	3352238:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
´:
Á
!__inference_standard_lstm_3351075

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3350990*
condR
while_cond_3350989*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_aff05a66-1a49-4ae9-9abb-cb498fca2182*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ľ

Ć
while_cond_3350989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3350989___redundant_placeholder05
1while_while_cond_3350989___redundant_placeholder15
1while_while_cond_3350989___redundant_placeholder25
1while_while_cond_3350989___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
řL
Ľ
(__forward_gpu_lstm_with_fallback_3352208

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_66e11f75-4cd3-4b48-b6c4-1b1cbaa0e8a4*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3352033_3352209*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ľ

Ć
while_cond_3353380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3353380___redundant_placeholder05
1while_while_cond_3353380___redundant_placeholder15
1while_while_cond_3353380___redundant_placeholder25
1while_while_cond_3353380___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ľ

Ć
while_cond_3353807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3353807___redundant_placeholder05
1while_while_cond_3353807___redundant_placeholder15
1while_while_cond_3353807___redundant_placeholder25
1while_while_cond_3353807___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3352673

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ˇ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3352400n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë
ő
=__inference___backward_gpu_lstm_with_fallback_3351170_3351346
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:¸
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Đ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_aff05a66-1a49-4ae9-9abb-cb498fca2182*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3351345*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:V
R
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3352211

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ŕ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3351938w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą
§
H__inference_embedding_8_layer_call_and_return_conditional_losses_3353268

inputs	+
embedding_lookup_3353263:	ŻM
identity˘embedding_lookupť
embedding_lookupResourceGatherembedding_lookup_3353263inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/3353263*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:'#
!
_user_specified_name	3353263:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĘL
Ľ
(__forward_gpu_lstm_with_fallback_3355017

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ń
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2a55939f-4309-4204-b842-875d821841ca*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3354842_3355018*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĘL
Ľ
(__forward_gpu_lstm_with_fallback_3352670

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ń
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_57212dc2-5bd5-4267-8168-597d5ed229d0*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3352495_3352671*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


#__inference__traced_restore_3355325
file_prefix:
'assignvariableop_embedding_8_embeddings:	ŻM6
"assignvariableop_1_dense_14_kernel:
ŻM/
 assignvariableop_2_dense_14_bias:	ŻM=
*assignvariableop_3_lstm_5_lstm_cell_kernel:	H
4assignvariableop_4_lstm_5_lstm_cell_recurrent_kernel:
7
(assignvariableop_5_lstm_5_lstm_cell_bias:	&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: D
1assignvariableop_15_adam_embedding_8_embeddings_m:	ŻM>
*assignvariableop_16_adam_dense_14_kernel_m:
ŻM7
(assignvariableop_17_adam_dense_14_bias_m:	ŻME
2assignvariableop_18_adam_lstm_5_lstm_cell_kernel_m:	P
<assignvariableop_19_adam_lstm_5_lstm_cell_recurrent_kernel_m:
?
0assignvariableop_20_adam_lstm_5_lstm_cell_bias_m:	D
1assignvariableop_21_adam_embedding_8_embeddings_v:	ŻM>
*assignvariableop_22_adam_dense_14_kernel_v:
ŻM7
(assignvariableop_23_adam_dense_14_bias_v:	ŻME
2assignvariableop_24_adam_lstm_5_lstm_cell_kernel_v:	P
<assignvariableop_25_adam_lstm_5_lstm_cell_recurrent_kernel_v:
?
0assignvariableop_26_adam_lstm_5_lstm_cell_bias_v:	
identity_28˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ś
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ť
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ş
AssignVariableOpAssignVariableOp'assignvariableop_embedding_8_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:š
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_14_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_14_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_3AssignVariableOp*assignvariableop_3_lstm_5_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_4AssignVariableOp4assignvariableop_4_lstm_5_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_5AssignVariableOp(assignvariableop_5_lstm_5_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:ł
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ľ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ľ
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ę
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_8_embeddings_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_14_kernel_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_14_bias_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_lstm_5_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ő
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_lstm_5_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_lstm_5_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ę
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_8_embeddings_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_14_kernel_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_14_bias_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_lstm_5_lstm_cell_kernel_vIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ő
AssignVariableOp_25AssignVariableOp<assignvariableop_25_adam_lstm_5_lstm_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_lstm_5_lstm_cell_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ą
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ę
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_28Identity_28:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:<8
6
_user_specified_nameAdam/lstm_5/lstm_cell/bias/v:HD
B
_user_specified_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/v:>:
8
_user_specified_name Adam/lstm_5/lstm_cell/kernel/v:40
.
_user_specified_nameAdam/dense_14/bias/v:62
0
_user_specified_nameAdam/dense_14/kernel/v:=9
7
_user_specified_nameAdam/embedding_8/embeddings/v:<8
6
_user_specified_nameAdam/lstm_5/lstm_cell/bias/m:HD
B
_user_specified_name*(Adam/lstm_5/lstm_cell/recurrent_kernel/m:>:
8
_user_specified_name Adam/lstm_5/lstm_cell/kernel/m:40
.
_user_specified_nameAdam/dense_14/bias/m:62
0
_user_specified_nameAdam/dense_14/kernel/m:=9
7
_user_specified_nameAdam/embedding_8/embeddings/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*
&
$
_user_specified_name
Adam/decay:+	'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:51
/
_user_specified_namelstm_5/lstm_cell/bias:A=
;
_user_specified_name#!lstm_5/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_5/lstm_cell/kernel:-)
'
_user_specified_namedense_14/bias:/+
)
_user_specified_namedense_14/kernel:62
0
_user_specified_nameembedding_8/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ë
ő
=__inference___backward_gpu_lstm_with_fallback_3352959_3353135
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:¸
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Đ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_51e5d0a5-e181-49bd-a01e-483b6c001d74*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3353134*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:V
R
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3355020

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ˇ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3354747n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ę:
Á
!__inference_standard_lstm_3351511

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3351426*
condR
while_cond_3351425*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_f0543b17-fd9d-4ce3-a417-82d0a3898f8d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3353808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
řL
Ľ
(__forward_gpu_lstm_with_fallback_3353736

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2c0fb682-e79a-4f9a-823f-2d77840195d6*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3353561_3353737*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
é@
Í
*__inference_gpu_lstm_with_fallback_3354414

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÍ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_42c7b595-2a1a-4ceb-a41c-2ff262d22b46*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ę:
Á
!__inference_standard_lstm_3353893

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3353808*
condR
while_cond_3353807*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_27d8301f-155d-40df-9006-d18b6f74f3c7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĘL
Ľ
(__forward_gpu_lstm_with_fallback_3354590

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ń
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_42c7b595-2a1a-4ceb-a41c-2ff262d22b46*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3354415_3354591*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
š
Ŕ
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354166
inputs_0/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Â
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3353893w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
	
¸
(__inference_lstm_5_layer_call_fn_3353279
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallő
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3351784}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353275:'#
!
_user_specified_name	3353273:'#
!
_user_specified_name	3353271:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
Ë
ő
=__inference___backward_gpu_lstm_with_fallback_3352495_3352671
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:¸
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Đ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_57212dc2-5bd5-4267-8168-597d5ed229d0*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3352670*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:V
R
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
řL
Ľ
(__forward_gpu_lstm_with_fallback_3354163

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_27d8301f-155d-40df-9006-d18b6f74f3c7*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3353988_3354164*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ľ

Ć
while_cond_3354234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3354234___redundant_placeholder05
1while_while_cond_3354234___redundant_placeholder15
1while_while_cond_3354234___redundant_placeholder25
1while_while_cond_3354234___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ě
ő
=__inference___backward_gpu_lstm_with_fallback_3353561_3353737
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Á
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesý
ú:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_2c0fb682-e79a-4f9a-823f-2d77840195d6*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3353736*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:_
[
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĘL
Ľ
(__forward_gpu_lstm_with_fallback_3353134

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ń
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_51e5d0a5-e181-49bd-a01e-483b6c001d74*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3352959_3353135*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ž
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353137

inputs/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ˇ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3352864n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
řL
Ľ
(__forward_gpu_lstm_with_fallback_3351781

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_f0543b17-fd9d-4ce3-a417-82d0a3898f8d*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3351606_3351782*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
ő
=__inference___backward_gpu_lstm_with_fallback_3351606_3351782
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Á
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesý
ú:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_f0543b17-fd9d-4ce3-a417-82d0a3898f8d*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3351781*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:_
[
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
G
+__inference_flatten_5_layer_call_fn_3355025

inputs
identity˛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_3352686a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_3355031

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3352779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ľ

Ć
while_cond_3351852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3351852___redundant_placeholder05
1while_while_cond_3351852___redundant_placeholder15
1while_while_cond_3351852___redundant_placeholder25
1while_while_cond_3351852___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ě
ő
=__inference___backward_gpu_lstm_with_fallback_3352033_3352209
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Á
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesý
ú:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_66e11f75-4cd3-4b48-b6c4-1b1cbaa0e8a4*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3352208*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:_
[
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
ő
=__inference___backward_gpu_lstm_with_fallback_3354415_3354591
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:¸
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Đ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_42c7b595-2a1a-4ceb-a41c-2ff262d22b46*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3354590*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:V
R
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 A
Í
*__inference_gpu_lstm_with_fallback_3352032

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÖ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_66e11f75-4cd3-4b48-b6c4-1b1cbaa0e8a4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_3352686

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3350990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
+
Đ
while_body_3352315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ë
ő
=__inference___backward_gpu_lstm_with_fallback_3354842_3355018
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:¸
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎŠ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Đ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::íĎĘ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Č::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_2a55939f-4309-4204-b842-875d821841ca*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3355017*
go_backwards( *

time_major( :C?

_output_shapes
: 
%
_user_specified_nameconcat/axis:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:FB

_output_shapes

:Č
"
_user_specified_name
concat_1:ZV
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameExpandDims_1:XT
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
ExpandDims:V
R
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	transpose:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:LH

_output_shapes
:
*
_user_specified_nametranspose_9/perm:VR
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
CudnnRNN:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
Đ
while_body_3354235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
´:
Á
!__inference_standard_lstm_3354320

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3354235*
condR
while_cond_3354234*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_42c7b595-2a1a-4ceb-a41c-2ff262d22b46*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
Ś
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3352705
input_6	&
embedding_8_3352244:	ŻM!
lstm_5_3352674:	"
lstm_5_3352676:

lstm_5_3352678:	$
dense_14_3352699:
ŻM
dense_14_3352701:	ŻM
identity˘ dense_14/StatefulPartitionedCall˘#embedding_8/StatefulPartitionedCall˘lstm_5/StatefulPartitionedCallí
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinput_6embedding_8_3352244*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_8_layer_call_and_return_conditional_losses_3352243¨
lstm_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0lstm_5_3352674lstm_5_3352676lstm_5_3352678*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3352673Ý
flatten_5/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_3352686
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_14_3352699dense_14_3352701*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_3352698y
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM
NoOpNoOp!^dense_14/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:'#
!
_user_specified_name	3352701:'#
!
_user_specified_name	3352699:'#
!
_user_specified_name	3352678:'#
!
_user_specified_name	3352676:'#
!
_user_specified_name	3352674:'#
!
_user_specified_name	3352244:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
ę:
Á
!__inference_standard_lstm_3351938

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3351853*
condR
while_cond_3351852*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_66e11f75-4cd3-4b48-b6c4-1b1cbaa0e8a4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ľ

Ć
while_cond_3352778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3352778___redundant_placeholder05
1while_while_cond_3352778___redundant_placeholder15
1while_while_cond_3352778___redundant_placeholder25
1while_while_cond_3352778___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ę:
Á
!__inference_standard_lstm_3353466

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:* 
_read_only_resource_inputs
 *
bodyR
while_body_3353381*
condR
while_cond_3353380*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2c0fb682-e79a-4f9a-823f-2d77840195d6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ó


,__inference_model_LSTM_layer_call_fn_3353169
input_6	
unknown:	ŻM
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:
ŻM
	unknown_4:	ŻM
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3352705p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353165:'#
!
_user_specified_name	3353163:'#
!
_user_specified_name	3353161:'#
!
_user_specified_name	3353159:'#
!
_user_specified_name	3353157:'#
!
_user_specified_name	3353155:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
Ý

ů
E__inference_dense_14_layer_call_and_return_conditional_losses_3352698

inputs2
matmul_readvariableop_resource:
ŻM.
biasadd_readvariableop_resource:	ŻM
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ŻM*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ŻM*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻMS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
š
Ŕ
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353739
inputs_0/
read_readvariableop_resource:	2
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Â
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3353466w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
 A
Í
*__inference_gpu_lstm_with_fallback_3353560

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ČÖ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_2c0fb682-e79a-4f9a-823f-2d77840195d6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3353381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ľ

Ć
while_cond_3354661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3354661___redundant_placeholder05
1while_while_cond_3354661___redundant_placeholder15
1while_while_cond_3354661___redundant_placeholder25
1while_while_cond_3354661___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ľ

Ć
while_cond_3351425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3351425___redundant_placeholder05
1while_while_cond_3351425___redundant_placeholder15
1while_while_cond_3351425___redundant_placeholder25
1while_while_cond_3351425___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
	
¸
(__inference_lstm_5_layer_call_fn_3353290
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallő
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_3352211}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353286:'#
!
_user_specified_name	3353284:'#
!
_user_specified_name	3353282:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
Ľ

Ć
while_cond_3352314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3352314___redundant_placeholder05
1while_while_cond_3352314___redundant_placeholder15
1while_while_cond_3352314___redundant_placeholder25
1while_while_cond_3352314___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
°

-__inference_embedding_8_layer_call_fn_3353260

inputs	
unknown:	ŻM
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_8_layer_call_and_return_conditional_losses_3352243s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353256:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ó


,__inference_model_LSTM_layer_call_fn_3353186
input_6	
unknown:	ŻM
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:
ŻM
	unknown_4:	ŻM
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3353152p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3353182:'#
!
_user_specified_name	3353180:'#
!
_user_specified_name	3353178:'#
!
_user_specified_name	3353176:'#
!
_user_specified_name	3353174:'#
!
_user_specified_name	3353172:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_6
ů

*__inference_dense_14_layer_call_fn_3355040

inputs
unknown:
ŻM
	unknown_0:	ŻM
identity˘StatefulPartitionedCallŰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_3352698p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ŻM<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	3355036:'#
!
_user_specified_name	3355034:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
+
Đ
while_body_3351853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	:
::A
=

_output_shapes	
:

_user_specified_namebias:R	N
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ĘL
Ľ
(__forward_gpu_lstm_with_fallback_3351345

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ń
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	:
:*=
api_implements+)lstm_aff05a66-1a49-4ae9-9abb-cb498fca2182*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3351170_3351346*
go_backwards( *

time_major( :A=

_output_shapes	
:

_user_specified_namebias:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:GC

_output_shapes
:	
 
_user_specified_namekernel:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"íL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ź
serving_default
;
input_60
serving_default_input_6:0	˙˙˙˙˙˙˙˙˙=
dense_141
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙ŻMtensorflow/serving/predict:Ý
ň
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Ľ
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias"
_tf_keras_layer
J
0
-1
.2
/3
+4
,5"
trackable_list_wrapper
J
0
-1
.2
/3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ë
5trace_0
6trace_12
,__inference_model_LSTM_layer_call_fn_3353169
,__inference_model_LSTM_layer_call_fn_3353186ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z5trace_0z6trace_1

7trace_0
8trace_12Ę
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3352705
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3353152ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z7trace_0z8trace_1
ÍBĘ
"__inference__wrapped_model_3351357input_6"
˛
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ĺ
9iter

:beta_1

;beta_2
	<decay
=learning_ratemz+m{,m|-m}.m~/mv+v,v-v.v/v"
	optimizer
,
>serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ç
Dtrace_02Ę
-__inference_embedding_8_layer_call_fn_3353260
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zDtrace_0

Etrace_02ĺ
H__inference_embedding_8_layer_call_and_return_conditional_losses_3353268
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zEtrace_0
):'	ŻM2embedding_8/embeddings
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
š

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ŕ
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32ő
(__inference_lstm_5_layer_call_fn_3353279
(__inference_lstm_5_layer_call_fn_3353290
(__inference_lstm_5_layer_call_fn_3353301
(__inference_lstm_5_layer_call_fn_3353312Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
Ě
Ptrace_0
Qtrace_1
Rtrace_2
Strace_32á
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353739
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354166
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354593
C__inference_lstm_5_layer_call_and_return_conditional_losses_3355020Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zPtrace_0zQtrace_1zRtrace_2zStrace_3
"
_generic_user_object
ř
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator
[
state_size

-kernel
.recurrent_kernel
/bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ĺ
atrace_02Č
+__inference_flatten_5_layer_call_fn_3355025
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zatrace_0

btrace_02ă
F__inference_flatten_5_layer_call_and_return_conditional_losses_3355031
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zbtrace_0
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ä
htrace_02Ç
*__inference_dense_14_layer_call_fn_3355040
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zhtrace_0
˙
itrace_02â
E__inference_dense_14_layer_call_and_return_conditional_losses_3355051
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zitrace_0
#:!
ŻM2dense_14/kernel
:ŻM2dense_14/bias
*:(	2lstm_5/lstm_cell/kernel
5:3
2!lstm_5/lstm_cell/recurrent_kernel
$:"2lstm_5/lstm_cell/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ëBč
,__inference_model_LSTM_layer_call_fn_3353169input_6"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
,__inference_model_LSTM_layer_call_fn_3353186input_6"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3352705input_6"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3353152input_6"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ŃBÎ
%__inference_signature_wrapper_3353253input_6"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs
	jinput_6
kwonlydefaults
 
annotationsŞ *
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
×BÔ
-__inference_embedding_8_layer_call_fn_3353260inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ňBď
H__inference_embedding_8_layer_call_and_return_conditional_losses_3353268inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ůBö
(__inference_lstm_5_layer_call_fn_3353279inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
(__inference_lstm_5_layer_call_fn_3353290inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
(__inference_lstm_5_layer_call_fn_3353301inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
(__inference_lstm_5_layer_call_fn_3353312inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353739inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354166inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354593inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_lstm_5_layer_call_and_return_conditional_losses_3355020inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
 "
trackable_list_wrapper
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
ŐBŇ
+__inference_flatten_5_layer_call_fn_3355025inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đBí
F__inference_flatten_5_layer_call_and_return_conditional_losses_3355031inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÔBŃ
*__inference_dense_14_layer_call_fn_3355040inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
E__inference_dense_14_layer_call_and_return_conditional_losses_3355051inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
N
q	variables
r	keras_api
	stotal
	tcount"
_tf_keras_metric
^
u	variables
v	keras_api
	wtotal
	xcount
y
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
.
s0
t1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,	ŻM2Adam/embedding_8/embeddings/m
(:&
ŻM2Adam/dense_14/kernel/m
!:ŻM2Adam/dense_14/bias/m
/:-	2Adam/lstm_5/lstm_cell/kernel/m
::8
2(Adam/lstm_5/lstm_cell/recurrent_kernel/m
):'2Adam/lstm_5/lstm_cell/bias/m
.:,	ŻM2Adam/embedding_8/embeddings/v
(:&
ŻM2Adam/dense_14/kernel/v
!:ŻM2Adam/dense_14/bias/v
/:-	2Adam/lstm_5/lstm_cell/kernel/v
::8
2(Adam/lstm_5/lstm_cell/recurrent_kernel/v
):'2Adam/lstm_5/lstm_cell/bias/v
"__inference__wrapped_model_3351357p-./+,0˘-
&˘#
!
input_6˙˙˙˙˙˙˙˙˙	
Ş "4Ş1
/
dense_14# 
dense_14˙˙˙˙˙˙˙˙˙ŻMŽ
E__inference_dense_14_layer_call_and_return_conditional_losses_3355051e+,0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙ŻM
 
*__inference_dense_14_layer_call_fn_3355040Z+,0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙ŻM˛
H__inference_embedding_8_layer_call_and_return_conditional_losses_3353268f/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙	
Ş "0˘-
&#
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_embedding_8_layer_call_fn_3353260[/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙	
Ş "%"
unknown˙˙˙˙˙˙˙˙˙Ż
F__inference_flatten_5_layer_call_and_return_conditional_losses_3355031e4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
+__inference_flatten_5_layer_call_fn_3355025Z4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙Ú
C__inference_lstm_5_layer_call_and_return_conditional_losses_3353739-./O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş ":˘7
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ú
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354166-./O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş ":˘7
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ŕ
C__inference_lstm_5_layer_call_and_return_conditional_losses_3354593y-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙
 Ŕ
C__inference_lstm_5_layer_call_and_return_conditional_losses_3355020y-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙
 ´
(__inference_lstm_5_layer_call_fn_3353279-./O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "/,
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙´
(__inference_lstm_5_layer_call_fn_3353290-./O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "/,
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
(__inference_lstm_5_layer_call_fn_3353301n-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "&#
unknown˙˙˙˙˙˙˙˙˙
(__inference_lstm_5_layer_call_fn_3353312n-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "&#
unknown˙˙˙˙˙˙˙˙˙ź
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3352705q-./+,8˘5
.˘+
!
input_6˙˙˙˙˙˙˙˙˙	
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙ŻM
 ź
G__inference_model_LSTM_layer_call_and_return_conditional_losses_3353152q-./+,8˘5
.˘+
!
input_6˙˙˙˙˙˙˙˙˙	
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙ŻM
 
,__inference_model_LSTM_layer_call_fn_3353169f-./+,8˘5
.˘+
!
input_6˙˙˙˙˙˙˙˙˙	
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙ŻM
,__inference_model_LSTM_layer_call_fn_3353186f-./+,8˘5
.˘+
!
input_6˙˙˙˙˙˙˙˙˙	
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙ŻM¤
%__inference_signature_wrapper_3353253{-./+,;˘8
˘ 
1Ş.
,
input_6!
input_6˙˙˙˙˙˙˙˙˙	"4Ş1
/
dense_14# 
dense_14˙˙˙˙˙˙˙˙˙ŻM