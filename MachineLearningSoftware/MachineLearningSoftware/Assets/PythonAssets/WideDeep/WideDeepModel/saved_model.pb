В§
ѓ5Е5
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
ґ
AsString

input"T

output"
Ttype:
	2	
"
	precisionint€€€€€€€€€"

scientificbool( "
shortestbool( "
widthint€€€€€€€€€"
fillstring 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
TvaltypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint€€€€€€€€€"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
п
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
Г
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
Љ
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02b'v1.8.0-0-g93bc2e2072'Ён

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step
П
global_step
VariableV2*
shared_name *
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
	container *
shape: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
o
input_example_tensorPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
U
ParseExample/ConstConst*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_1Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_2Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_3Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_4Const*
valueB *
_output_shapes
: *
dtype0
b
ParseExample/ParseExample/namesConst*
valueB *
_output_shapes
: *
dtype0
q
'ParseExample/ParseExample/sparse_keys_0Const*
valueB B	education*
_output_shapes
: *
dtype0
v
'ParseExample/ParseExample/sparse_keys_1Const*
valueB Bmarital_status*
_output_shapes
: *
dtype0
r
'ParseExample/ParseExample/sparse_keys_2Const*
valueB B
occupation*
_output_shapes
: *
dtype0
t
'ParseExample/ParseExample/sparse_keys_3Const*
valueB Brelationship*
_output_shapes
: *
dtype0
q
'ParseExample/ParseExample/sparse_keys_4Const*
valueB B	workclass*
_output_shapes
: *
dtype0
j
&ParseExample/ParseExample/dense_keys_0Const*
valueB	 Bage*
_output_shapes
: *
dtype0
s
&ParseExample/ParseExample/dense_keys_1Const*
valueB Bcapital_gain*
_output_shapes
: *
dtype0
s
&ParseExample/ParseExample/dense_keys_2Const*
valueB Bcapital_loss*
_output_shapes
: *
dtype0
t
&ParseExample/ParseExample/dense_keys_3Const*
valueB Beducation_num*
_output_shapes
: *
dtype0
u
&ParseExample/ParseExample/dense_keys_4Const*
valueB Bhours_per_week*
_output_shapes
: *
dtype0
†
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3'ParseExample/ParseExample/sparse_keys_4&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4*
sparse_types	
2*0
dense_shapes 
:::::*
Ndense*љ
_output_shapes™
І:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::::€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Nsparse*
Tdense	
2
Р
4dnn/input_from_feature_columns/input_layer/age/ShapeShapeParseExample/ParseExample:15*
out_type0*
T0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/age/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
д
<dnn/input_from_feature_columns/input_layer/age/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/age/ShapeBdnn/input_from_feature_columns/input_layer/age/strided_slice/stackDdnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
А
>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ь
<dnn/input_from_feature_columns/input_layer/age/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/age/strided_slice>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
Ё
6dnn/input_from_feature_columns/input_layer/age/ReshapeReshapeParseExample/ParseExample:15<dnn/input_from_feature_columns/input_layer/age/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Щ
=dnn/input_from_feature_columns/input_layer/capital_gain/ShapeShapeParseExample/ParseExample:16*
out_type0*
T0*
_output_shapes
:
Х
Kdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ч
Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ч
Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
С
Ednn/input_from_feature_columns/input_layer/capital_gain/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital_gain/ShapeKdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Й
Gdnn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ч
Ednn/input_from_feature_columns/input_layer/capital_gain/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital_gain/strided_sliceGdnn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
п
?dnn/input_from_feature_columns/input_layer/capital_gain/ReshapeReshapeParseExample/ParseExample:16Ednn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Щ
=dnn/input_from_feature_columns/input_layer/capital_loss/ShapeShapeParseExample/ParseExample:17*
out_type0*
T0*
_output_shapes
:
Х
Kdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ч
Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ч
Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
С
Ednn/input_from_feature_columns/input_layer/capital_loss/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital_loss/ShapeKdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Й
Gdnn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ч
Ednn/input_from_feature_columns/input_layer/capital_loss/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital_loss/strided_sliceGdnn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
п
?dnn/input_from_feature_columns/input_layer/capital_loss/ReshapeReshapeParseExample/ParseExample:17Ednn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ґ
Udnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ConstConst*ђ
valueҐBЯB	BachelorsBHS-gradB11thBMastersB9thBSome-collegeB
Assoc-acdmB	Assoc-vocB7th-8thB	DoctorateBProf-schoolB5th-6thB10thB1st-4thB	PreschoolB12th*
_output_shapes
:*
dtype0
Ц
Tdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
Э
[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Э
[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ц
Udnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/rangeRange[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/startTdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/Size[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/delta*
_output_shapes
:*

Tidx0
к
Wdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ToInt64CastUdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
ж
Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
Ђ
`dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
Ю
ednn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_initInitializeTableV2Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ConstWdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ToInt64*

Tval0	*

Tkey0
ь
Pdnn/input_from_feature_columns/input_layer/education_indicator/hash_table_LookupLookupTableFindV2Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableParseExample/ParseExample:5`dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
•
Zdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
І
Ldnn/input_from_feature_columns/input_layer/education_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleParseExample/ParseExample:10Pdnn/input_from_feature_columns/input_layer/education_indicator/hash_table_LookupZdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDense/default_value*
validate_indices(*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	
С
Ldnn/input_from_feature_columns/input_layer/education_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
У
Ndnn/input_from_feature_columns/input_layer/education_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
О
Ldnn/input_from_feature_columns/input_layer/education_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0
Ф
Odnn/input_from_feature_columns/input_layer/education_indicator/one_hot/on_valueConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Х
Pdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
н
Fdnn/input_from_feature_columns/input_layer/education_indicator/one_hotOneHotLdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDenseLdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/depthOdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/on_valuePdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/off_value*
axis€€€€€€€€€*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
TI0	
І
Tdnn/input_from_feature_columns/input_layer/education_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
ґ
Bdnn/input_from_feature_columns/input_layer/education_indicator/SumSumFdnn/input_from_feature_columns/input_layer/education_indicator/one_hotTdnn/input_from_feature_columns/input_layer/education_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
∆
Ddnn/input_from_feature_columns/input_layer/education_indicator/ShapeShapeBdnn/input_from_feature_columns/input_layer/education_indicator/Sum*
out_type0*
T0*
_output_shapes
:
Ь
Rdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ю
Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ю
Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
і
Ldnn/input_from_feature_columns/input_layer/education_indicator/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/education_indicator/ShapeRdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stackTdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Р
Ndnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ђ
Ldnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/education_indicator/strided_sliceNdnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
£
Fdnn/input_from_feature_columns/input_layer/education_indicator/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/education_indicator/SumLdnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ъ
>dnn/input_from_feature_columns/input_layer/education_num/ShapeShapeParseExample/ParseExample:18*
out_type0*
T0*
_output_shapes
:
Ц
Ldnn/input_from_feature_columns/input_layer/education_num/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ш
Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ш
Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ц
Fdnn/input_from_feature_columns/input_layer/education_num/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/education_num/ShapeLdnn/input_from_feature_columns/input_layer/education_num/strided_slice/stackNdnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
К
Hdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ъ
Fdnn/input_from_feature_columns/input_layer/education_num/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/education_num/strided_sliceHdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
с
@dnn/input_from_feature_columns/input_layer/education_num/ReshapeReshapeParseExample/ParseExample:18Fdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ы
?dnn/input_from_feature_columns/input_layer/hours_per_week/ShapeShapeParseExample/ParseExample:19*
out_type0*
T0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Щ
Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Щ
Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ы
Gdnn/input_from_feature_columns/input_layer/hours_per_week/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/hours_per_week/ShapeMdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stackOdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Л
Idnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Э
Gdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/hours_per_week/strided_sliceIdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
у
Adnn/input_from_feature_columns/input_layer/hours_per_week/ReshapeReshapeParseExample/ParseExample:19Gdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
С
_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ConstConst*~
valueuBsBMarried-civ-spouseBDivorcedBMarried-spouse-absentBNever-marriedB	SeparatedBMarried-AF-spouseBWidowed*
_output_shapes
:*
dtype0
†
^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
І
ednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
І
ednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Њ
_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/rangeRangeednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/start^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/Sizeednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/delta*
_output_shapes
:*

Tidx0
ю
adnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ToInt64Cast_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
р
ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
µ
jdnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
∆
odnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_initInitializeTableV2ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/Constadnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ToInt64*

Tval0	*

Tkey0
Х
Udnn/input_from_feature_columns/input_layer/marital_status_indicator/hash_table_LookupLookupTableFindV2ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_tableParseExample/ParseExample:6jdnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
™
_dnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
Є
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDenseSparseToDenseParseExample/ParseExample:1ParseExample/ParseExample:11Udnn/input_from_feature_columns/input_layer/marital_status_indicator/hash_table_Lookup_dnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDense/default_value*
validate_indices(*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	
Ц
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ш
Sdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
У
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0
Щ
Tdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/on_valueConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ъ
Udnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
Kdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hotOneHotQdnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDenseQdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/depthTdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/on_valueUdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/off_value*
axis€€€€€€€€€*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
TI0	
ђ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
≈
Gdnn/input_from_feature_columns/input_layer/marital_status_indicator/SumSumKdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hotYdnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
–
Idnn/input_from_feature_columns/input_layer/marital_status_indicator/ShapeShapeGdnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum*
out_type0*
T0*
_output_shapes
:
°
Wdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
£
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
£
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ќ
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_sliceStridedSliceIdnn/input_from_feature_columns/input_layer/marital_status_indicator/ShapeWdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stackYdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_1Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Х
Sdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ї
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shapePackQdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_sliceSdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
≤
Kdnn/input_from_feature_columns/input_layer/marital_status_indicator/ReshapeReshapeGdnn/input_from_feature_columns/input_layer/marital_status_indicator/SumQdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ґ
Fdnn/input_from_feature_columns/input_layer/occupation_embedding/lookupStringToHashBucketFastParseExample/ParseExample:7*#
_output_shapes
:€€€€€€€€€*
num_bucketsи
є
{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
valueB"и     *
_output_shapes
:*
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
ђ
zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
Ѓ
|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
valueB
 *уµ>*
_output_shapes
: *
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
”
Еdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2 *k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
T0*
_output_shapes
:	и*
dtype0*

seed 
Э
ydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulЕdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	и*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
К
udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normalAddydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulzdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*
_output_shapes
:	и*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
ї
Xdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
VariableV2*
shared_name *k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
_output_shapes
:	и*
dtype0*
	container *
shape:	и
ъ
_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/AssignAssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
Џ
]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readIdentityXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
T0*
_output_shapes
:	и*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
≤
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
±
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
О
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SliceSliceParseExample/ParseExample:12hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/begingdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
ђ
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ConstConst*
valueB: *
_output_shapes
:*
dtype0
п
adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ProdProdbdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
ѓ
mdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
ђ
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ѓ
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:12mdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/indicesjdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
п
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/xPackadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Prodednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2*

axis *
T0	*
N*
_output_shapes
:
 
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:2ParseExample/ParseExample:12cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
х
sdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityIdentityFdnn/input_from_feature_columns/input_layer/occupation_embedding/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
≠
kdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
Й
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqualGreaterEqualsdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identitykdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
И
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/WhereWhereidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
љ
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ы
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ReshapeReshapebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Wherejdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ѓ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
И
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1GatherV2jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshapeldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Ѓ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Н
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2GatherV2sdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identityddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshapeldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Д
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/IdentityIdentityldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Є
vdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
ђ
Дdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsgdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Identityvdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Џ
Иdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
№
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
№
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ё
Вdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceДdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsИdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackКdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
√
ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/CastCastВdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
Џ
{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueUniqueЖdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ї
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
љ
Еdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueКdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
Tindices0	
…
tdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparseSparseSegmentMeanЕdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup}dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Unique:1ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
љ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
®
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1ReshapeЖdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ц
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ShapeShapetdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Ї
pdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Љ
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Љ
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
 
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_sliceStridedSlicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shapepdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackrdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
¶
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ц
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stackPackddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice*

axis *
T0*
N*
_output_shapes
:
В
adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/TileTilefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Ь
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_like	ZerosLiketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Џ
\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightsSelectadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Tilegdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_liketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
љ
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1CastParseExample/ParseExample:12*

DstT0*
_output_shapes
:*

SrcT0	
і
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
≥
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
џ
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1Slicecdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
А
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1Shape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights*
out_type0*
T0*
_output_shapes
:
і
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Љ
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
№
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2Sliceddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
™
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
я
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concatConcatV2ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ф
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Reshape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightscdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
л
Ednn/input_from_feature_columns/input_layer/occupation_embedding/ShapeShapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2*
out_type0*
T0*
_output_shapes
:
Э
Sdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Я
Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Я
Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
є
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceStridedSliceEdnn/input_from_feature_columns/input_layer/occupation_embedding/ShapeSdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackUdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
С
Odnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
ѓ
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shapePackMdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceOdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
…
Gdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeReshapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ж
[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ConstConst*W
valueNBLBHusbandBNot-in-familyBWifeB	Own-childB	UnmarriedBOther-relative*
_output_shapes
:*
dtype0
Ь
Zdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
£
adnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
£
adnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ѓ
[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/rangeRangeadnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/startZdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/Sizeadnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/delta*
_output_shapes
:*

Tidx0
ц
]dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ToInt64Cast[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
м
`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
±
fdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
ґ
kdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_initInitializeTableV2`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/Const]dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ToInt64*

Tval0	*

Tkey0
Л
Sdnn/input_from_feature_columns/input_layer/relationship_indicator/hash_table_LookupLookupTableFindV2`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_tableParseExample/ParseExample:8fdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
®
]dnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
≤
Odnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDenseSparseToDenseParseExample/ParseExample:3ParseExample/ParseExample:13Sdnn/input_from_feature_columns/input_layer/relationship_indicator/hash_table_Lookup]dnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDense/default_value*
validate_indices(*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	
Ф
Odnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ц
Qdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
С
Odnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0
Ч
Rdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/on_valueConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ш
Sdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
ь
Idnn/input_from_feature_columns/input_layer/relationship_indicator/one_hotOneHotOdnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDenseOdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/depthRdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/on_valueSdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/off_value*
axis€€€€€€€€€*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
TI0	
™
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
њ
Ednn/input_from_feature_columns/input_layer/relationship_indicator/SumSumIdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hotWdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
ћ
Gdnn/input_from_feature_columns/input_layer/relationship_indicator/ShapeShapeEdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum*
out_type0*
T0*
_output_shapes
:
Я
Udnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
°
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
°
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
√
Odnn/input_from_feature_columns/input_layer/relationship_indicator/strided_sliceStridedSliceGdnn/input_from_feature_columns/input_layer/relationship_indicator/ShapeUdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stackWdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_1Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
У
Qdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
µ
Odnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shapePackOdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_sliceQdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
ђ
Idnn/input_from_feature_columns/input_layer/relationship_indicator/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/relationship_indicator/SumOdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ж
Udnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ConstConst*}
valuetBr	BSelf-emp-not-incBPrivateB	State-govBFederal-govB	Local-govB?BSelf-emp-incBWithout-payBNever-worked*
_output_shapes
:	*
dtype0
Ц
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/SizeConst*
value	B :	*
_output_shapes
: *
dtype0
Э
[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Э
[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ц
Udnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/rangeRange[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/startTdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/Size[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/delta*
_output_shapes
:	*

Tidx0
к
Wdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ToInt64CastUdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range*

DstT0	*
_output_shapes
:	*

SrcT0
ж
Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
Ђ
`dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
Ю
ednn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_initInitializeTableV2Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ConstWdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ToInt64*

Tval0	*

Tkey0
ь
Pdnn/input_from_feature_columns/input_layer/workclass_indicator/hash_table_LookupLookupTableFindV2Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableParseExample/ParseExample:9`dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
•
Zdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
©
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDenseSparseToDenseParseExample/ParseExample:4ParseExample/ParseExample:14Pdnn/input_from_feature_columns/input_layer/workclass_indicator/hash_table_LookupZdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDense/default_value*
validate_indices(*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	
С
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
У
Ndnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
О
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/depthConst*
value	B :	*
_output_shapes
: *
dtype0
Ф
Odnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/on_valueConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Х
Pdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
н
Fdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hotOneHotLdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDenseLdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/depthOdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/on_valuePdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/off_value*
axis€€€€€€€€€*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	*
TI0	
І
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
ґ
Bdnn/input_from_feature_columns/input_layer/workclass_indicator/SumSumFdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hotTdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:€€€€€€€€€	*

Tidx0
∆
Ddnn/input_from_feature_columns/input_layer/workclass_indicator/ShapeShapeBdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum*
out_type0*
T0*
_output_shapes
:
Ь
Rdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ю
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ю
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
і
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/workclass_indicator/ShapeRdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stackTdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Р
Ndnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape/1Const*
value	B :	*
_output_shapes
: *
dtype0
ђ
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_sliceNdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
£
Fdnn/input_from_feature_columns/input_layer/workclass_indicator/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/workclass_indicator/SumLdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
м
1dnn/input_from_feature_columns/input_layer/concatConcatV26dnn/input_from_feature_columns/input_layer/age/Reshape?dnn/input_from_feature_columns/input_layer/capital_gain/Reshape?dnn/input_from_feature_columns/input_layer/capital_loss/ReshapeFdnn/input_from_feature_columns/input_layer/education_indicator/Reshape@dnn/input_from_feature_columns/input_layer/education_num/ReshapeAdnn/input_from_feature_columns/input_layer/hours_per_week/ReshapeKdnn/input_from_feature_columns/input_layer/marital_status_indicator/ReshapeGdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeIdnn/input_from_feature_columns/input_layer/relationship_indicator/ReshapeFdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N
*'
_output_shapes
:€€€€€€€€€3*

Tidx0
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"3   d   *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *иLЊ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *иL>*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ю
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:3d*
dtype0*

seed 
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
ђ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:3d*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ю
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:3d*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
«
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:3d*
dtype0*
	container *
shape
:3d
У
&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:3d*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ѓ
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:3d*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ѓ
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
ї
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0*
	container *
shape:d
ю
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:d*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
§
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*
_output_shapes
:d*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:3d
«
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€d
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:d
Я
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€d
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€d
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
В
dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:€€€€€€€€€d
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€d*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: *
dtype0
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"d   K   *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *£Ы=Њ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *£Ы=>*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ю
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:dK*
dtype0*

seed 
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
ђ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:dK*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ю
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:dK*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
«
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dK*
dtype0*
	container *
shape
:dK
У
&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:dK*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ѓ
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:dK*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueBK*    *
_output_shapes
:K*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
ї
dnn/hiddenlayer_1/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:K*
dtype0*
	container *
shape:K
ю
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:K*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
§
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*
_output_shapes
:K*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:dK
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€K
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:K
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€K
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€K
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€K
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€K*

SrcT0

j
dnn/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"K   2   *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *яX`Њ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *яX`>*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ю
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes

:K2*
dtype0*

seed 
Ъ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
ђ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:K2*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ю
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:K2*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
«
dnn/hiddenlayer_2/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:K2*
dtype0*
	container *
shape
:K2
У
&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:K2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ѓ
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes

:K2*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ѓ
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
valueB2*    *
_output_shapes
:2*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
ї
dnn/hiddenlayer_2/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:2*
dtype0*
	container *
shape:2
ю
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:2*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
§
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*
T0*
_output_shapes
:2*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
T0*
_output_shapes

:K2
ђ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€2
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
T0*
_output_shapes
:2
Я
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€2
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€2
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:€€€€€€€€€2
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€2*

SrcT0

j
dnn/zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"2      *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ј
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *√–РЊ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ј
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *√–Р>*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ю
Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes

:2*
dtype0*

seed 
Ъ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
ђ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ю
:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
«
dnn/hiddenlayer_3/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:2*
dtype0*
	container *
shape
:2
У
&dnn/hiddenlayer_3/kernel/part_0/AssignAssigndnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ѓ
$dnn/hiddenlayer_3/kernel/part_0/readIdentitydnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ѓ
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
ї
dnn/hiddenlayer_3/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
ю
$dnn/hiddenlayer_3/bias/part_0/AssignAssigndnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
§
"dnn/hiddenlayer_3/bias/part_0/readIdentitydnn/hiddenlayer_3/bias/part_0*
T0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
s
dnn/hiddenlayer_3/kernelIdentity$dnn/hiddenlayer_3/kernel/part_0/read*
T0*
_output_shapes

:2
ђ
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_3/biasIdentity"dnn/hiddenlayer_3/bias/part_0/read*
T0*
_output_shapes
:
Я
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Reludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€*

SrcT0

j
dnn/zero_fraction_3/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
†
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
T0*
_output_shapes
: 
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *ффхЊ*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *ффх>*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
Й
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
seed2 *+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:*
dtype0*

seed 
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
є
dnn/logits/kernel/part_0
VariableV2*
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
ч
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
Щ
dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
†
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*)
_class
loc:@dnn/logits/bias/part_0
≠
dnn/logits/bias/part_0
VariableV2*
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
в
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
П
dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes

:
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
В
dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€*

SrcT0

j
dnn/zero_fraction_4/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: *
dtype0
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: *
dtype0
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
≈
,linear/linear_model/age_bucketized/Bucketize	BucketizeParseExample/ParseExample:15*:

boundaries,
*"(  РA  »A  рA  B   B  4B  HB  \B  pB  ВB*
T0*'
_output_shapes
:€€€€€€€€€
Ф
(linear/linear_model/age_bucketized/ShapeShape,linear/linear_model/age_bucketized/Bucketize*
out_type0*
T0*
_output_shapes
:
А
6linear/linear_model/age_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
В
8linear/linear_model/age_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
В
8linear/linear_model/age_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
®
0linear/linear_model/age_bucketized/strided_sliceStridedSlice(linear/linear_model/age_bucketized/Shape6linear/linear_model/age_bucketized/strided_slice/stack8linear/linear_model/age_bucketized/strided_slice/stack_18linear/linear_model/age_bucketized/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
p
.linear/linear_model/age_bucketized/range/startConst*
value	B : *
_output_shapes
: *
dtype0
p
.linear/linear_model/age_bucketized/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ф
(linear/linear_model/age_bucketized/rangeRange.linear/linear_model/age_bucketized/range/start0linear/linear_model/age_bucketized/strided_slice.linear/linear_model/age_bucketized/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
s
1linear/linear_model/age_bucketized/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
÷
-linear/linear_model/age_bucketized/ExpandDims
ExpandDims(linear/linear_model/age_bucketized/range1linear/linear_model/age_bucketized/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
В
1linear/linear_model/age_bucketized/Tile/multiplesConst*
valueB"      *
_output_shapes
:*
dtype0
’
'linear/linear_model/age_bucketized/TileTile-linear/linear_model/age_bucketized/ExpandDims1linear/linear_model/age_bucketized/Tile/multiples*
T0*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
Г
0linear/linear_model/age_bucketized/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ћ
*linear/linear_model/age_bucketized/ReshapeReshape'linear/linear_model/age_bucketized/Tile0linear/linear_model/age_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
r
0linear/linear_model/age_bucketized/range_1/startConst*
value	B : *
_output_shapes
: *
dtype0
r
0linear/linear_model/age_bucketized/range_1/limitConst*
value	B :*
_output_shapes
: *
dtype0
r
0linear/linear_model/age_bucketized/range_1/deltaConst*
value	B :*
_output_shapes
: *
dtype0
с
*linear/linear_model/age_bucketized/range_1Range0linear/linear_model/age_bucketized/range_1/start0linear/linear_model/age_bucketized/range_1/limit0linear/linear_model/age_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
І
3linear/linear_model/age_bucketized/Tile_1/multiplesPack0linear/linear_model/age_bucketized/strided_slice*

axis *
T0*
N*
_output_shapes
:
“
)linear/linear_model/age_bucketized/Tile_1Tile*linear/linear_model/age_bucketized/range_13linear/linear_model/age_bucketized/Tile_1/multiples*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
Е
2linear/linear_model/age_bucketized/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
’
,linear/linear_model/age_bucketized/Reshape_1Reshape,linear/linear_model/age_bucketized/Bucketize2linear/linear_model/age_bucketized/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
j
(linear/linear_model/age_bucketized/mul/xConst*
value	B :*
_output_shapes
: *
dtype0
∞
&linear/linear_model/age_bucketized/mulMul(linear/linear_model/age_bucketized/mul/x)linear/linear_model/age_bucketized/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
±
&linear/linear_model/age_bucketized/addAdd,linear/linear_model/age_bucketized/Reshape_1&linear/linear_model/age_bucketized/mul*
T0*#
_output_shapes
:€€€€€€€€€
ќ
(linear/linear_model/age_bucketized/stackPack*linear/linear_model/age_bucketized/Reshape)linear/linear_model/age_bucketized/Tile_1*

axis *
T0*
N*'
_output_shapes
:€€€€€€€€€
Д
1linear/linear_model/age_bucketized/transpose/RankRank(linear/linear_model/age_bucketized/stack*
T0*
_output_shapes
: 
t
2linear/linear_model/age_bucketized/transpose/sub/yConst*
value	B :*
_output_shapes
: *
dtype0
њ
0linear/linear_model/age_bucketized/transpose/subSub1linear/linear_model/age_bucketized/transpose/Rank2linear/linear_model/age_bucketized/transpose/sub/y*
T0*
_output_shapes
: 
z
8linear/linear_model/age_bucketized/transpose/Range/startConst*
value	B : *
_output_shapes
: *
dtype0
z
8linear/linear_model/age_bucketized/transpose/Range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
К
2linear/linear_model/age_bucketized/transpose/RangeRange8linear/linear_model/age_bucketized/transpose/Range/start1linear/linear_model/age_bucketized/transpose/Rank8linear/linear_model/age_bucketized/transpose/Range/delta*
_output_shapes
:*

Tidx0
ƒ
2linear/linear_model/age_bucketized/transpose/sub_1Sub0linear/linear_model/age_bucketized/transpose/sub2linear/linear_model/age_bucketized/transpose/Range*
T0*
_output_shapes
:
÷
,linear/linear_model/age_bucketized/transpose	Transpose(linear/linear_model/age_bucketized/stack2linear/linear_model/age_bucketized/transpose/sub_1*
T0*
Tperm0*'
_output_shapes
:€€€€€€€€€
°
*linear/linear_model/age_bucketized/ToInt64Cast,linear/linear_model/age_bucketized/transpose*

DstT0	*'
_output_shapes
:€€€€€€€€€*

SrcT0
n
,linear/linear_model/age_bucketized/stack_1/1Const*
value	B :*
_output_shapes
: *
dtype0
ћ
*linear/linear_model/age_bucketized/stack_1Pack0linear/linear_model/age_bucketized/strided_slice,linear/linear_model/age_bucketized/stack_1/1*

axis *
T0*
N*
_output_shapes
:
Ф
,linear/linear_model/age_bucketized/ToInt64_1Cast*linear/linear_model/age_bucketized/stack_1*

DstT0	*
_output_shapes
:*

SrcT0
Щ
/linear/linear_model/age_bucketized/Shape_1/CastCast,linear/linear_model/age_bucketized/ToInt64_1*

DstT0*
_output_shapes
:*

SrcT0	
В
8linear/linear_model/age_bucketized/strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
Д
:linear/linear_model/age_bucketized/strided_slice_1/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Д
:linear/linear_model/age_bucketized/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ј
2linear/linear_model/age_bucketized/strided_slice_1StridedSlice/linear/linear_model/age_bucketized/Shape_1/Cast8linear/linear_model/age_bucketized/strided_slice_1/stack:linear/linear_model/age_bucketized/strided_slice_1/stack_1:linear/linear_model/age_bucketized/strided_slice_1/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
v
+linear/linear_model/age_bucketized/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ћ
)linear/linear_model/age_bucketized/Cast/xPack2linear/linear_model/age_bucketized/strided_slice_1+linear/linear_model/age_bucketized/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
О
'linear/linear_model/age_bucketized/CastCast)linear/linear_model/age_bucketized/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
у
0linear/linear_model/age_bucketized/SparseReshapeSparseReshape*linear/linear_model/age_bucketized/ToInt64,linear/linear_model/age_bucketized/ToInt64_1'linear/linear_model/age_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
Ы
9linear/linear_model/age_bucketized/SparseReshape/IdentityIdentity&linear/linear_model/age_bucketized/add*
T0*#
_output_shapes
:€€€€€€€€€
ё
Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes

:*
dtype0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
л
1linear/linear_model/age_bucketized/weights/part_0
VariableV2*
shared_name *D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
“
8linear/linear_model/age_bucketized/weights/part_0/AssignAssign1linear/linear_model/age_bucketized/weights/part_0Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
д
6linear/linear_model/age_bucketized/weights/part_0/readIdentity1linear/linear_model/age_bucketized/weights/part_0*
T0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
Е
;linear/linear_model/age_bucketized/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Д
:linear/linear_model/age_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Э
5linear/linear_model/age_bucketized/weighted_sum/SliceSlice2linear/linear_model/age_bucketized/SparseReshape:1;linear/linear_model/age_bucketized/weighted_sum/Slice/begin:linear/linear_model/age_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear_model/age_bucketized/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
и
4linear/linear_model/age_bucketized/weighted_sum/ProdProd5linear/linear_model/age_bucketized/weighted_sum/Slice5linear/linear_model/age_bucketized/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
В
@linear/linear_model/age_bucketized/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0

=linear/linear_model/age_bucketized/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
љ
8linear/linear_model/age_bucketized/weighted_sum/GatherV2GatherV22linear/linear_model/age_bucketized/SparseReshape:1@linear/linear_model/age_bucketized/weighted_sum/GatherV2/indices=linear/linear_model/age_bucketized/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
и
6linear/linear_model/age_bucketized/weighted_sum/Cast/xPack4linear/linear_model/age_bucketized/weighted_sum/Prod8linear/linear_model/age_bucketized/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
Ы
=linear/linear_model/age_bucketized/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/age_bucketized/SparseReshape2linear/linear_model/age_bucketized/SparseReshape:16linear/linear_model/age_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
ї
Flinear/linear_model/age_bucketized/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/age_bucketized/SparseReshape/Identity*
T0*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/age_bucketized/weighted_sum/GreaterEqual/yConst*
value	B : *
_output_shapes
: *
dtype0
В
<linear/linear_model/age_bucketized/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/age_bucketized/weighted_sum/SparseReshape/Identity>linear/linear_model/age_bucketized/weighted_sum/GreaterEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
Ѓ
5linear/linear_model/age_bucketized/weighted_sum/WhereWhere<linear/linear_model/age_bucketized/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/age_bucketized/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ф
7linear/linear_model/age_bucketized/weighted_sum/ReshapeReshape5linear/linear_model/age_bucketized/weighted_sum/Where=linear/linear_model/age_bucketized/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Б
?linear/linear_model/age_bucketized/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
‘
:linear/linear_model/age_bucketized/weighted_sum/GatherV2_1GatherV2=linear/linear_model/age_bucketized/weighted_sum/SparseReshape7linear/linear_model/age_bucketized/weighted_sum/Reshape?linear/linear_model/age_bucketized/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Б
?linear/linear_model/age_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
ў
:linear/linear_model/age_bucketized/weighted_sum/GatherV2_2GatherV2Flinear/linear_model/age_bucketized/weighted_sum/SparseReshape/Identity7linear/linear_model/age_bucketized/weighted_sum/Reshape?linear/linear_model/age_bucketized/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
™
8linear/linear_model/age_bucketized/weighted_sum/IdentityIdentity?linear/linear_model/age_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Л
Ilinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B : *
_output_shapes
: *
dtype0
 
Wlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows:linear/linear_model/age_bucketized/weighted_sum/GatherV2_1:linear/linear_model/age_bucketized/weighted_sum/GatherV2_28linear/linear_model/age_bucketized/weighted_sum/IdentityIlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
ђ
[linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ѓ
]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ѓ
]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ш
Ulinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
и
Llinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
€
Nlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
е
]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
ж
Xlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV26linear/linear_model/age_bucketized/weights/part_0/readNlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Unique]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
Tindices0
У
Glinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Р
?linear/linear_model/age_bucketized/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
†
9linear/linear_model/age_bucketized/weighted_sum/Reshape_1ReshapeYlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/age_bucketized/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Љ
5linear/linear_model/age_bucketized/weighted_sum/ShapeShapeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Н
Clinear/linear_model/age_bucketized/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
П
Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
П
Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
й
=linear/linear_model/age_bucketized/weighted_sum/strided_sliceStridedSlice5linear/linear_model/age_bucketized/weighted_sum/ShapeClinear/linear_model/age_bucketized/weighted_sum/strided_slice/stackElinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
y
7linear/linear_model/age_bucketized/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
п
5linear/linear_model/age_bucketized/weighted_sum/stackPack7linear/linear_model/age_bucketized/weighted_sum/stack/0=linear/linear_model/age_bucketized/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
ы
4linear/linear_model/age_bucketized/weighted_sum/TileTile9linear/linear_model/age_bucketized/weighted_sum/Reshape_15linear/linear_model/age_bucketized/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
¬
:linear/linear_model/age_bucketized/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
/linear/linear_model/age_bucketized/weighted_sumSelect4linear/linear_model/age_bucketized/weighted_sum/Tile:linear/linear_model/age_bucketized/weighted_sum/zeros_likeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
6linear/linear_model/age_bucketized/weighted_sum/Cast_1Cast2linear/linear_model/age_bucketized/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
З
=linear/linear_model/age_bucketized/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ж
<linear/linear_model/age_bucketized/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
І
7linear/linear_model/age_bucketized/weighted_sum/Slice_1Slice6linear/linear_model/age_bucketized/weighted_sum/Cast_1=linear/linear_model/age_bucketized/weighted_sum/Slice_1/begin<linear/linear_model/age_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
¶
7linear/linear_model/age_bucketized/weighted_sum/Shape_1Shape/linear/linear_model/age_bucketized/weighted_sum*
out_type0*
T0*
_output_shapes
:
З
=linear/linear_model/age_bucketized/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
П
<linear/linear_model/age_bucketized/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
®
7linear/linear_model/age_bucketized/weighted_sum/Slice_2Slice7linear/linear_model/age_bucketized/weighted_sum/Shape_1=linear/linear_model/age_bucketized/weighted_sum/Slice_2/begin<linear/linear_model/age_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear_model/age_bucketized/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ђ
6linear/linear_model/age_bucketized/weighted_sum/concatConcatV27linear/linear_model/age_bucketized/weighted_sum/Slice_17linear/linear_model/age_bucketized/weighted_sum/Slice_2;linear/linear_model/age_bucketized/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
н
9linear/linear_model/age_bucketized/weighted_sum/Reshape_2Reshape/linear/linear_model/age_bucketized/weighted_sum6linear/linear_model/age_bucketized/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
≠
Alinear/linear_model/age_bucketized_X_education_X_occupation/ShapeShape,linear/linear_model/age_bucketized/Bucketize*
out_type0*
T0*
_output_shapes
:
Щ
Olinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ы
Qlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ы
Qlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
•
Ilinear/linear_model/age_bucketized_X_education_X_occupation/strided_sliceStridedSliceAlinear/linear_model/age_bucketized_X_education_X_occupation/ShapeOlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stackQlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stack_1Qlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Й
Glinear/linear_model/age_bucketized_X_education_X_occupation/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Й
Glinear/linear_model/age_bucketized_X_education_X_occupation/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ў
Alinear/linear_model/age_bucketized_X_education_X_occupation/rangeRangeGlinear/linear_model/age_bucketized_X_education_X_occupation/range/startIlinear/linear_model/age_bucketized_X_education_X_occupation/strided_sliceGlinear/linear_model/age_bucketized_X_education_X_occupation/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
М
Jlinear/linear_model/age_bucketized_X_education_X_occupation/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
°
Flinear/linear_model/age_bucketized_X_education_X_occupation/ExpandDims
ExpandDimsAlinear/linear_model/age_bucketized_X_education_X_occupation/rangeJlinear/linear_model/age_bucketized_X_education_X_occupation/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
Ы
Jlinear/linear_model/age_bucketized_X_education_X_occupation/Tile/multiplesConst*
valueB"      *
_output_shapes
:*
dtype0
†
@linear/linear_model/age_bucketized_X_education_X_occupation/TileTileFlinear/linear_model/age_bucketized_X_education_X_occupation/ExpandDimsJlinear/linear_model/age_bucketized_X_education_X_occupation/Tile/multiples*
T0*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
Ь
Ilinear/linear_model/age_bucketized_X_education_X_occupation/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ч
Clinear/linear_model/age_bucketized_X_education_X_occupation/ReshapeReshape@linear/linear_model/age_bucketized_X_education_X_occupation/TileIlinear/linear_model/age_bucketized_X_education_X_occupation/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Л
Ilinear/linear_model/age_bucketized_X_education_X_occupation/range_1/startConst*
value	B : *
_output_shapes
: *
dtype0
Л
Ilinear/linear_model/age_bucketized_X_education_X_occupation/range_1/limitConst*
value	B :*
_output_shapes
: *
dtype0
Л
Ilinear/linear_model/age_bucketized_X_education_X_occupation/range_1/deltaConst*
value	B :*
_output_shapes
: *
dtype0
’
Clinear/linear_model/age_bucketized_X_education_X_occupation/range_1RangeIlinear/linear_model/age_bucketized_X_education_X_occupation/range_1/startIlinear/linear_model/age_bucketized_X_education_X_occupation/range_1/limitIlinear/linear_model/age_bucketized_X_education_X_occupation/range_1/delta*
_output_shapes
:*

Tidx0
ў
Llinear/linear_model/age_bucketized_X_education_X_occupation/Tile_1/multiplesPackIlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice*

axis *
T0*
N*
_output_shapes
:
Э
Blinear/linear_model/age_bucketized_X_education_X_occupation/Tile_1TileClinear/linear_model/age_bucketized_X_education_X_occupation/range_1Llinear/linear_model/age_bucketized_X_education_X_occupation/Tile_1/multiples*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
Ю
Klinear/linear_model/age_bucketized_X_education_X_occupation/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
З
Elinear/linear_model/age_bucketized_X_education_X_occupation/Reshape_1Reshape,linear/linear_model/age_bucketized/BucketizeKlinear/linear_model/age_bucketized_X_education_X_occupation/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Г
Alinear/linear_model/age_bucketized_X_education_X_occupation/mul/xConst*
value	B :*
_output_shapes
: *
dtype0
ы
?linear/linear_model/age_bucketized_X_education_X_occupation/mulMulAlinear/linear_model/age_bucketized_X_education_X_occupation/mul/xBlinear/linear_model/age_bucketized_X_education_X_occupation/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
ь
?linear/linear_model/age_bucketized_X_education_X_occupation/addAddElinear/linear_model/age_bucketized_X_education_X_occupation/Reshape_1?linear/linear_model/age_bucketized_X_education_X_occupation/mul*
T0*#
_output_shapes
:€€€€€€€€€
Щ
Alinear/linear_model/age_bucketized_X_education_X_occupation/stackPackClinear/linear_model/age_bucketized_X_education_X_occupation/ReshapeBlinear/linear_model/age_bucketized_X_education_X_occupation/Tile_1*

axis *
T0*
N*'
_output_shapes
:€€€€€€€€€
ґ
Jlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/RankRankAlinear/linear_model/age_bucketized_X_education_X_occupation/stack*
T0*
_output_shapes
: 
Н
Klinear/linear_model/age_bucketized_X_education_X_occupation/transpose/sub/yConst*
value	B :*
_output_shapes
: *
dtype0
К
Ilinear/linear_model/age_bucketized_X_education_X_occupation/transpose/subSubJlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/RankKlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/sub/y*
T0*
_output_shapes
: 
У
Qlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/Range/startConst*
value	B : *
_output_shapes
: *
dtype0
У
Qlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/Range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
о
Klinear/linear_model/age_bucketized_X_education_X_occupation/transpose/RangeRangeQlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/Range/startJlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/RankQlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/Range/delta*
_output_shapes
:*

Tidx0
П
Klinear/linear_model/age_bucketized_X_education_X_occupation/transpose/sub_1SubIlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/subKlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/Range*
T0*
_output_shapes
:
°
Elinear/linear_model/age_bucketized_X_education_X_occupation/transpose	TransposeAlinear/linear_model/age_bucketized_X_education_X_occupation/stackKlinear/linear_model/age_bucketized_X_education_X_occupation/transpose/sub_1*
T0*
Tperm0*'
_output_shapes
:€€€€€€€€€
”
Clinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64CastElinear/linear_model/age_bucketized_X_education_X_occupation/transpose*

DstT0	*'
_output_shapes
:€€€€€€€€€*

SrcT0
З
Elinear/linear_model/age_bucketized_X_education_X_occupation/stack_1/1Const*
value	B :*
_output_shapes
: *
dtype0
Ч
Clinear/linear_model/age_bucketized_X_education_X_occupation/stack_1PackIlinear/linear_model/age_bucketized_X_education_X_occupation/strided_sliceElinear/linear_model/age_bucketized_X_education_X_occupation/stack_1/1*

axis *
T0*
N*
_output_shapes
:
∆
Elinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64_1CastClinear/linear_model/age_bucketized_X_education_X_occupation/stack_1*

DstT0	*
_output_shapes
:*

SrcT0
Ћ
Elinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64_2Cast?linear/linear_model/age_bucketized_X_education_X_occupation/add*

DstT0	*#
_output_shapes
:€€€€€€€€€*

SrcT0
≠
Glinear/linear_model/age_bucketized_X_education_X_occupation/SparseCrossSparseCrossClinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64ParseExample/ParseExampleParseExample/ParseExample:2Elinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64_2ParseExample/ParseExample:5ParseExample/ParseExample:7Elinear/linear_model/age_bucketized_X_education_X_occupation/ToInt64_1ParseExample/ParseExample:10ParseExample/ParseExample:12*
sparse_types
2	*
dense_types
 *
num_bucketsи*
out_type0	*
hash_keyюят„м*
internal_type0	*
N*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
hashed_output(
ѕ
Hlinear/linear_model/age_bucketized_X_education_X_occupation/Shape_1/CastCastIlinear/linear_model/age_bucketized_X_education_X_occupation/SparseCross:2*

DstT0*
_output_shapes
:*

SrcT0	
Ы
Qlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
Э
Slinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Э
Slinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
і
Klinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1StridedSliceHlinear/linear_model/age_bucketized_X_education_X_occupation/Shape_1/CastQlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stackSlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stack_1Slinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
П
Dlinear/linear_model/age_bucketized_X_education_X_occupation/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Ч
Blinear/linear_model/age_bucketized_X_education_X_occupation/Cast/xPackKlinear/linear_model/age_bucketized_X_education_X_occupation/strided_slice_1Dlinear/linear_model/age_bucketized_X_education_X_occupation/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
ј
@linear/linear_model/age_bucketized_X_education_X_occupation/CastCastBlinear/linear_model/age_bucketized_X_education_X_occupation/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
я
Ilinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshapeSparseReshapeGlinear/linear_model/age_bucketized_X_education_X_occupation/SparseCrossIlinear/linear_model/age_bucketized_X_education_X_occupation/SparseCross:2@linear/linear_model/age_bucketized_X_education_X_occupation/Cast*-
_output_shapes
:€€€€€€€€€:
„
Rlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape/IdentityIdentityIlinear/linear_model/age_bucketized_X_education_X_occupation/SparseCross:1*
T0	*#
_output_shapes
:€€€€€€€€€
Ь
llinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"и     *
_output_shapes
:*
dtype0*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
Ж
blinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
—
\linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zerosFillllinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorblinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros/Const*
T0*
_output_shapes
:	и*

index_type0*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
Я
Jlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
VariableV2*
shared_name *]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0*
_output_shapes
:	и*
dtype0*
	container *
shape:	и
Ј
Qlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/AssignAssignJlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0\linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
∞
Olinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/readIdentityJlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0*
T0*
_output_shapes
:	и*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
Ю
Tlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Э
Slinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Б
Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SliceSliceKlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape:1Tlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice/beginSlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ш
Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
≥
Mlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ProdProdNlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SliceNlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
Ы
Ylinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
Ш
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
°
Qlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2GatherV2Klinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape:1Ylinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2/indicesVlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
≥
Olinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Cast/xPackMlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ProdQlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
€
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshapeSparseReshapeIlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshapeKlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape:1Olinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
н
_linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshape/IdentityIdentityRlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
Щ
Wlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
Ќ
Ulinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GreaterEqualGreaterEqual_linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshape/IdentityWlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
а
Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/WhereWhereUlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
©
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
њ
Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ReshapeReshapeNlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/WhereVlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ъ
Xlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
Є
Slinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_1GatherV2Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshapePlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ReshapeXlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Ъ
Xlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
љ
Slinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_2GatherV2_linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshape/IdentityPlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ReshapeXlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
№
Qlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/IdentityIdentityXlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
§
blinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
«
plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsSlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_1Slinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/GatherV2_2Qlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Identityblinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
≈
tlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
«
vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
«
vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
х
nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceplinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowstlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackvlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
Ъ
elinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/CastCastnlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
±
glinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/UniqueUniquerlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ч
vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
г
qlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Olinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/readglinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/Uniquevlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0*
Tindices0	
ч
`linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumqlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupilinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/Unique:1elinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
©
Xlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
л
Rlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_1Reshaperlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Xlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
о
Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/ShapeShape`linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
¶
\linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
®
^linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
®
^linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ж
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_sliceStridedSliceNlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Shape\linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stack^linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stack_1^linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Т
Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ї
Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/stackPackPlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/stack/0Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
∆
Mlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/TileTileRlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_1Nlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
ф
Slinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/zeros_like	ZerosLike`linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
К
Hlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sumSelectMlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/TileSlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/zeros_like`linear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ў
Olinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Cast_1CastKlinear/linear_model/age_bucketized_X_education_X_occupation/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
†
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Я
Ulinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Л
Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1SliceOlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Cast_1Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1/beginUlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ў
Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Shape_1ShapeHlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:
†
Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
®
Ulinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
М
Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2SlicePlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Shape_1Vlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2/beginUlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ц
Tlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
П
Olinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/concatConcatV2Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_1Plinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Slice_2Tlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Є
Rlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_2ReshapeHlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sumOlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Х
4linear/linear_model/education/education_lookup/ConstConst*ђ
valueҐBЯB	BachelorsBHS-gradB11thBMastersB9thBSome-collegeB
Assoc-acdmB	Assoc-vocB7th-8thB	DoctorateBProf-schoolB5th-6thB10thB1st-4thB	PreschoolB12th*
_output_shapes
:*
dtype0
u
3linear/linear_model/education/education_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
|
:linear/linear_model/education/education_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
|
:linear/linear_model/education/education_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Т
4linear/linear_model/education/education_lookup/rangeRange:linear/linear_model/education/education_lookup/range/start3linear/linear_model/education/education_lookup/Size:linear/linear_model/education/education_lookup/range/delta*
_output_shapes
:*

Tidx0
®
6linear/linear_model/education/education_lookup/ToInt64Cast4linear/linear_model/education/education_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
≈
9linear/linear_model/education/education_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
К
?linear/linear_model/education/education_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
Ъ
Dlinear/linear_model/education/education_lookup/hash_table/table_initInitializeTableV29linear/linear_model/education/education_lookup/hash_table4linear/linear_model/education/education_lookup/Const6linear/linear_model/education/education_lookup/ToInt64*

Tval0	*

Tkey0
Щ
/linear/linear_model/education/hash_table_LookupLookupTableFindV29linear/linear_model/education/education_lookup/hash_tableParseExample/ParseExample:5?linear/linear_model/education/education_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
В
(linear/linear_model/education/Shape/CastCastParseExample/ParseExample:10*

DstT0*
_output_shapes
:*

SrcT0	
{
1linear/linear_model/education/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
}
3linear/linear_model/education/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
}
3linear/linear_model/education/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ф
+linear/linear_model/education/strided_sliceStridedSlice(linear/linear_model/education/Shape/Cast1linear/linear_model/education/strided_slice/stack3linear/linear_model/education/strided_slice/stack_13linear/linear_model/education/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
q
&linear/linear_model/education/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ї
$linear/linear_model/education/Cast/xPack+linear/linear_model/education/strided_slice&linear/linear_model/education/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
Д
"linear/linear_model/education/CastCast$linear/linear_model/education/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
»
+linear/linear_model/education/SparseReshapeSparseReshapeParseExample/ParseExampleParseExample/ParseExample:10"linear/linear_model/education/Cast*-
_output_shapes
:€€€€€€€€€:
Я
4linear/linear_model/education/SparseReshape/IdentityIdentity/linear/linear_model/education/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
‘
>linear/linear_model/education/weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes

:*
dtype0*?
_class5
31loc:@linear/linear_model/education/weights/part_0
б
,linear/linear_model/education/weights/part_0
VariableV2*
shared_name *?
_class5
31loc:@linear/linear_model/education/weights/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
Њ
3linear/linear_model/education/weights/part_0/AssignAssign,linear/linear_model/education/weights/part_0>linear/linear_model/education/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0
’
1linear/linear_model/education/weights/part_0/readIdentity,linear/linear_model/education/weights/part_0*
T0*
_output_shapes

:*?
_class5
31loc:@linear/linear_model/education/weights/part_0
А
6linear/linear_model/education/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0

5linear/linear_model/education/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Й
0linear/linear_model/education/weighted_sum/SliceSlice-linear/linear_model/education/SparseReshape:16linear/linear_model/education/weighted_sum/Slice/begin5linear/linear_model/education/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
z
0linear/linear_model/education/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ў
/linear/linear_model/education/weighted_sum/ProdProd0linear/linear_model/education/weighted_sum/Slice0linear/linear_model/education/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
}
;linear/linear_model/education/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
z
8linear/linear_model/education/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
©
3linear/linear_model/education/weighted_sum/GatherV2GatherV2-linear/linear_model/education/SparseReshape:1;linear/linear_model/education/weighted_sum/GatherV2/indices8linear/linear_model/education/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
ў
1linear/linear_model/education/weighted_sum/Cast/xPack/linear/linear_model/education/weighted_sum/Prod3linear/linear_model/education/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
З
8linear/linear_model/education/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/education/SparseReshape-linear/linear_model/education/SparseReshape:11linear/linear_model/education/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
±
Alinear/linear_model/education/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/education/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
{
9linear/linear_model/education/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
у
7linear/linear_model/education/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/education/weighted_sum/SparseReshape/Identity9linear/linear_model/education/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
§
0linear/linear_model/education/weighted_sum/WhereWhere7linear/linear_model/education/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Л
8linear/linear_model/education/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
е
2linear/linear_model/education/weighted_sum/ReshapeReshape0linear/linear_model/education/weighted_sum/Where8linear/linear_model/education/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
|
:linear/linear_model/education/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ј
5linear/linear_model/education/weighted_sum/GatherV2_1GatherV28linear/linear_model/education/weighted_sum/SparseReshape2linear/linear_model/education/weighted_sum/Reshape:linear/linear_model/education/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
|
:linear/linear_model/education/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
≈
5linear/linear_model/education/weighted_sum/GatherV2_2GatherV2Alinear/linear_model/education/weighted_sum/SparseReshape/Identity2linear/linear_model/education/weighted_sum/Reshape:linear/linear_model/education/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
†
3linear/linear_model/education/weighted_sum/IdentityIdentity:linear/linear_model/education/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ж
Dlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
±
Rlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows5linear/linear_model/education/weighted_sum/GatherV2_15linear/linear_model/education/weighted_sum/GatherV2_23linear/linear_model/education/weighted_sum/IdentityDlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
І
Vlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
©
Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
©
Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
я
Plinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
ё
Glinear/linear_model/education/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
х
Ilinear/linear_model/education/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
џ
Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*?
_class5
31loc:@linear/linear_model/education/weights/part_0
Ќ
Slinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV21linear/linear_model/education/weights/part_0/readIlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/UniqueXlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
Tindices0	
€
Blinear/linear_model/education/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/education/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Л
:linear/linear_model/education/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
С
4linear/linear_model/education/weighted_sum/Reshape_1ReshapeTlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/education/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
≤
0linear/linear_model/education/weighted_sum/ShapeShapeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
И
>linear/linear_model/education/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
К
@linear/linear_model/education/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
К
@linear/linear_model/education/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
–
8linear/linear_model/education/weighted_sum/strided_sliceStridedSlice0linear/linear_model/education/weighted_sum/Shape>linear/linear_model/education/weighted_sum/strided_slice/stack@linear/linear_model/education/weighted_sum/strided_slice/stack_1@linear/linear_model/education/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
t
2linear/linear_model/education/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
а
0linear/linear_model/education/weighted_sum/stackPack2linear/linear_model/education/weighted_sum/stack/08linear/linear_model/education/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
м
/linear/linear_model/education/weighted_sum/TileTile4linear/linear_model/education/weighted_sum/Reshape_10linear/linear_model/education/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Є
5linear/linear_model/education/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Т
*linear/linear_model/education/weighted_sumSelect/linear/linear_model/education/weighted_sum/Tile5linear/linear_model/education/weighted_sum/zeros_likeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ь
1linear/linear_model/education/weighted_sum/Cast_1Cast-linear/linear_model/education/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
В
8linear/linear_model/education/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Б
7linear/linear_model/education/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
У
2linear/linear_model/education/weighted_sum/Slice_1Slice1linear/linear_model/education/weighted_sum/Cast_18linear/linear_model/education/weighted_sum/Slice_1/begin7linear/linear_model/education/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ь
2linear/linear_model/education/weighted_sum/Shape_1Shape*linear/linear_model/education/weighted_sum*
out_type0*
T0*
_output_shapes
:
В
8linear/linear_model/education/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
К
7linear/linear_model/education/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ф
2linear/linear_model/education/weighted_sum/Slice_2Slice2linear/linear_model/education/weighted_sum/Shape_18linear/linear_model/education/weighted_sum/Slice_2/begin7linear/linear_model/education/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
x
6linear/linear_model/education/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ч
1linear/linear_model/education/weighted_sum/concatConcatV22linear/linear_model/education/weighted_sum/Slice_12linear/linear_model/education/weighted_sum/Slice_26linear/linear_model/education/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ё
4linear/linear_model/education/weighted_sum/Reshape_2Reshape*linear/linear_model/education/weighted_sum1linear/linear_model/education/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
»
6linear/linear_model/education_X_occupation/SparseCrossSparseCrossParseExample/ParseExampleParseExample/ParseExample:2ParseExample/ParseExample:5ParseExample/ParseExample:7ParseExample/ParseExample:10ParseExample/ParseExample:12*
sparse_types
2*
dense_types
 *
num_bucketsи*
out_type0	*
hash_keyюят„м*
internal_type0*
N*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
hashed_output(
Ђ
5linear/linear_model/education_X_occupation/Shape/CastCast8linear/linear_model/education_X_occupation/SparseCross:2*

DstT0*
_output_shapes
:*

SrcT0	
И
>linear/linear_model/education_X_occupation/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
К
@linear/linear_model/education_X_occupation/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
К
@linear/linear_model/education_X_occupation/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
’
8linear/linear_model/education_X_occupation/strided_sliceStridedSlice5linear/linear_model/education_X_occupation/Shape/Cast>linear/linear_model/education_X_occupation/strided_slice/stack@linear/linear_model/education_X_occupation/strided_slice/stack_1@linear/linear_model/education_X_occupation/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
~
3linear/linear_model/education_X_occupation/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
в
1linear/linear_model/education_X_occupation/Cast/xPack8linear/linear_model/education_X_occupation/strided_slice3linear/linear_model/education_X_occupation/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
Ю
/linear/linear_model/education_X_occupation/CastCast1linear/linear_model/education_X_occupation/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
Ы
8linear/linear_model/education_X_occupation/SparseReshapeSparseReshape6linear/linear_model/education_X_occupation/SparseCross8linear/linear_model/education_X_occupation/SparseCross:2/linear/linear_model/education_X_occupation/Cast*-
_output_shapes
:€€€€€€€€€:
µ
Alinear/linear_model/education_X_occupation/SparseReshape/IdentityIdentity8linear/linear_model/education_X_occupation/SparseCross:1*
T0	*#
_output_shapes
:€€€€€€€€€
ъ
[linear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"и     *
_output_shapes
:*
dtype0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
д
Qlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
Н
Klinear/linear_model/education_X_occupation/weights/part_0/Initializer/zerosFill[linear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorQlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros/Const*
T0*
_output_shapes
:	и*

index_type0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
э
9linear/linear_model/education_X_occupation/weights/part_0
VariableV2*
shared_name *L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
_output_shapes
:	и*
dtype0*
	container *
shape:	и
у
@linear/linear_model/education_X_occupation/weights/part_0/AssignAssign9linear/linear_model/education_X_occupation/weights/part_0Klinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
э
>linear/linear_model/education_X_occupation/weights/part_0/readIdentity9linear/linear_model/education_X_occupation/weights/part_0*
T0*
_output_shapes
:	и*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
Н
Clinear/linear_model/education_X_occupation/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
М
Blinear/linear_model/education_X_occupation/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
љ
=linear/linear_model/education_X_occupation/weighted_sum/SliceSlice:linear/linear_model/education_X_occupation/SparseReshape:1Clinear/linear_model/education_X_occupation/weighted_sum/Slice/beginBlinear/linear_model/education_X_occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
З
=linear/linear_model/education_X_occupation/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
А
<linear/linear_model/education_X_occupation/weighted_sum/ProdProd=linear/linear_model/education_X_occupation/weighted_sum/Slice=linear/linear_model/education_X_occupation/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
К
Hlinear/linear_model/education_X_occupation/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
З
Elinear/linear_model/education_X_occupation/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ё
@linear/linear_model/education_X_occupation/weighted_sum/GatherV2GatherV2:linear/linear_model/education_X_occupation/SparseReshape:1Hlinear/linear_model/education_X_occupation/weighted_sum/GatherV2/indicesElinear/linear_model/education_X_occupation/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
А
>linear/linear_model/education_X_occupation/weighted_sum/Cast/xPack<linear/linear_model/education_X_occupation/weighted_sum/Prod@linear/linear_model/education_X_occupation/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
ї
Elinear/linear_model/education_X_occupation/weighted_sum/SparseReshapeSparseReshape8linear/linear_model/education_X_occupation/SparseReshape:linear/linear_model/education_X_occupation/SparseReshape:1>linear/linear_model/education_X_occupation/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ћ
Nlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/IdentityIdentityAlinear/linear_model/education_X_occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
И
Flinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
Ъ
Dlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqualGreaterEqualNlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/IdentityFlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Њ
=linear/linear_model/education_X_occupation/weighted_sum/WhereWhereDlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ш
Elinear/linear_model/education_X_occupation/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
М
?linear/linear_model/education_X_occupation/weighted_sum/ReshapeReshape=linear/linear_model/education_X_occupation/weighted_sum/WhereElinear/linear_model/education_X_occupation/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Й
Glinear/linear_model/education_X_occupation/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ф
Blinear/linear_model/education_X_occupation/weighted_sum/GatherV2_1GatherV2Elinear/linear_model/education_X_occupation/weighted_sum/SparseReshape?linear/linear_model/education_X_occupation/weighted_sum/ReshapeGlinear/linear_model/education_X_occupation/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Й
Glinear/linear_model/education_X_occupation/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
щ
Blinear/linear_model/education_X_occupation/weighted_sum/GatherV2_2GatherV2Nlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/Identity?linear/linear_model/education_X_occupation/weighted_sum/ReshapeGlinear/linear_model/education_X_occupation/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ї
@linear/linear_model/education_X_occupation/weighted_sum/IdentityIdentityGlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
У
Qlinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
т
_linear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsBlinear/linear_model/education_X_occupation/weighted_sum/GatherV2_1Blinear/linear_model/education_X_occupation/weighted_sum/GatherV2_2@linear/linear_model/education_X_occupation/weighted_sum/IdentityQlinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
і
clinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
ґ
elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
ґ
elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
†
]linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice_linear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsclinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackelinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
ш
Tlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/CastCast]linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
П
Vlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/UniqueUniquealinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
х
elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
О
`linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2>linear/linear_model/education_X_occupation/weights/part_0/readVlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Uniqueelinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
Tindices0	
≥
Olinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSum`linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupXlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Unique:1Tlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Ш
Glinear/linear_model/education_X_occupation/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Є
Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_1Reshapealinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Glinear/linear_model/education_X_occupation/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
ћ
=linear/linear_model/education_X_occupation/weighted_sum/ShapeShapeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Х
Klinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Ч
Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ч
Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
С
Elinear/linear_model/education_X_occupation/weighted_sum/strided_sliceStridedSlice=linear/linear_model/education_X_occupation/weighted_sum/ShapeKlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stackMlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_1Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
Б
?linear/linear_model/education_X_occupation/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
З
=linear/linear_model/education_X_occupation/weighted_sum/stackPack?linear/linear_model/education_X_occupation/weighted_sum/stack/0Elinear/linear_model/education_X_occupation/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
У
<linear/linear_model/education_X_occupation/weighted_sum/TileTileAlinear/linear_model/education_X_occupation/weighted_sum/Reshape_1=linear/linear_model/education_X_occupation/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
“
Blinear/linear_model/education_X_occupation/weighted_sum/zeros_like	ZerosLikeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
∆
7linear/linear_model/education_X_occupation/weighted_sumSelect<linear/linear_model/education_X_occupation/weighted_sum/TileBlinear/linear_model/education_X_occupation/weighted_sum/zeros_likeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ґ
>linear/linear_model/education_X_occupation/weighted_sum/Cast_1Cast:linear/linear_model/education_X_occupation/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
П
Elinear/linear_model/education_X_occupation/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
О
Dlinear/linear_model/education_X_occupation/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
«
?linear/linear_model/education_X_occupation/weighted_sum/Slice_1Slice>linear/linear_model/education_X_occupation/weighted_sum/Cast_1Elinear/linear_model/education_X_occupation/weighted_sum/Slice_1/beginDlinear/linear_model/education_X_occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ґ
?linear/linear_model/education_X_occupation/weighted_sum/Shape_1Shape7linear/linear_model/education_X_occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:
П
Elinear/linear_model/education_X_occupation/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Ч
Dlinear/linear_model/education_X_occupation/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
»
?linear/linear_model/education_X_occupation/weighted_sum/Slice_2Slice?linear/linear_model/education_X_occupation/weighted_sum/Shape_1Elinear/linear_model/education_X_occupation/weighted_sum/Slice_2/beginDlinear/linear_model/education_X_occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Е
Clinear/linear_model/education_X_occupation/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ћ
>linear/linear_model/education_X_occupation/weighted_sum/concatConcatV2?linear/linear_model/education_X_occupation/weighted_sum/Slice_1?linear/linear_model/education_X_occupation/weighted_sum/Slice_2Clinear/linear_model/education_X_occupation/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_2Reshape7linear/linear_model/education_X_occupation/weighted_sum>linear/linear_model/education_X_occupation/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
р
>linear/linear_model/marital_status/marital_status_lookup/ConstConst*~
valueuBsBMarried-civ-spouseBDivorcedBMarried-spouse-absentBNever-marriedB	SeparatedBMarried-AF-spouseBWidowed*
_output_shapes
:*
dtype0

=linear/linear_model/marital_status/marital_status_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
Ж
Dlinear/linear_model/marital_status/marital_status_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Ж
Dlinear/linear_model/marital_status/marital_status_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Ї
>linear/linear_model/marital_status/marital_status_lookup/rangeRangeDlinear/linear_model/marital_status/marital_status_lookup/range/start=linear/linear_model/marital_status/marital_status_lookup/SizeDlinear/linear_model/marital_status/marital_status_lookup/range/delta*
_output_shapes
:*

Tidx0
Љ
@linear/linear_model/marital_status/marital_status_lookup/ToInt64Cast>linear/linear_model/marital_status/marital_status_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
ѕ
Clinear/linear_model/marital_status/marital_status_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
Ф
Ilinear/linear_model/marital_status/marital_status_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
¬
Nlinear/linear_model/marital_status/marital_status_lookup/hash_table/table_initInitializeTableV2Clinear/linear_model/marital_status/marital_status_lookup/hash_table>linear/linear_model/marital_status/marital_status_lookup/Const@linear/linear_model/marital_status/marital_status_lookup/ToInt64*

Tval0	*

Tkey0
≤
4linear/linear_model/marital_status/hash_table_LookupLookupTableFindV2Clinear/linear_model/marital_status/marital_status_lookup/hash_tableParseExample/ParseExample:6Ilinear/linear_model/marital_status/marital_status_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
З
-linear/linear_model/marital_status/Shape/CastCastParseExample/ParseExample:11*

DstT0*
_output_shapes
:*

SrcT0	
А
6linear/linear_model/marital_status/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
В
8linear/linear_model/marital_status/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
В
8linear/linear_model/marital_status/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
0linear/linear_model/marital_status/strided_sliceStridedSlice-linear/linear_model/marital_status/Shape/Cast6linear/linear_model/marital_status/strided_slice/stack8linear/linear_model/marital_status/strided_slice/stack_18linear/linear_model/marital_status/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
v
+linear/linear_model/marital_status/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
 
)linear/linear_model/marital_status/Cast/xPack0linear/linear_model/marital_status/strided_slice+linear/linear_model/marital_status/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
О
'linear/linear_model/marital_status/CastCast)linear/linear_model/marital_status/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
‘
0linear/linear_model/marital_status/SparseReshapeSparseReshapeParseExample/ParseExample:1ParseExample/ParseExample:11'linear/linear_model/marital_status/Cast*-
_output_shapes
:€€€€€€€€€:
©
9linear/linear_model/marital_status/SparseReshape/IdentityIdentity4linear/linear_model/marital_status/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
ё
Clinear/linear_model/marital_status/weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes

:*
dtype0*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
л
1linear/linear_model/marital_status/weights/part_0
VariableV2*
shared_name *D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
“
8linear/linear_model/marital_status/weights/part_0/AssignAssign1linear/linear_model/marital_status/weights/part_0Clinear/linear_model/marital_status/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
д
6linear/linear_model/marital_status/weights/part_0/readIdentity1linear/linear_model/marital_status/weights/part_0*
T0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
Е
;linear/linear_model/marital_status/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Д
:linear/linear_model/marital_status/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Э
5linear/linear_model/marital_status/weighted_sum/SliceSlice2linear/linear_model/marital_status/SparseReshape:1;linear/linear_model/marital_status/weighted_sum/Slice/begin:linear/linear_model/marital_status/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear_model/marital_status/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
и
4linear/linear_model/marital_status/weighted_sum/ProdProd5linear/linear_model/marital_status/weighted_sum/Slice5linear/linear_model/marital_status/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
В
@linear/linear_model/marital_status/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0

=linear/linear_model/marital_status/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
љ
8linear/linear_model/marital_status/weighted_sum/GatherV2GatherV22linear/linear_model/marital_status/SparseReshape:1@linear/linear_model/marital_status/weighted_sum/GatherV2/indices=linear/linear_model/marital_status/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
и
6linear/linear_model/marital_status/weighted_sum/Cast/xPack4linear/linear_model/marital_status/weighted_sum/Prod8linear/linear_model/marital_status/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
Ы
=linear/linear_model/marital_status/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/marital_status/SparseReshape2linear/linear_model/marital_status/SparseReshape:16linear/linear_model/marital_status/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
ї
Flinear/linear_model/marital_status/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/marital_status/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/marital_status/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
В
<linear/linear_model/marital_status/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/marital_status/weighted_sum/SparseReshape/Identity>linear/linear_model/marital_status/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ѓ
5linear/linear_model/marital_status/weighted_sum/WhereWhere<linear/linear_model/marital_status/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/marital_status/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ф
7linear/linear_model/marital_status/weighted_sum/ReshapeReshape5linear/linear_model/marital_status/weighted_sum/Where=linear/linear_model/marital_status/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Б
?linear/linear_model/marital_status/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
‘
:linear/linear_model/marital_status/weighted_sum/GatherV2_1GatherV2=linear/linear_model/marital_status/weighted_sum/SparseReshape7linear/linear_model/marital_status/weighted_sum/Reshape?linear/linear_model/marital_status/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
Б
?linear/linear_model/marital_status/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
ў
:linear/linear_model/marital_status/weighted_sum/GatherV2_2GatherV2Flinear/linear_model/marital_status/weighted_sum/SparseReshape/Identity7linear/linear_model/marital_status/weighted_sum/Reshape?linear/linear_model/marital_status/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
™
8linear/linear_model/marital_status/weighted_sum/IdentityIdentity?linear/linear_model/marital_status/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Л
Ilinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
 
Wlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows:linear/linear_model/marital_status/weighted_sum/GatherV2_1:linear/linear_model/marital_status/weighted_sum/GatherV2_28linear/linear_model/marital_status/weighted_sum/IdentityIlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
ђ
[linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
Ѓ
]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Ѓ
]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ш
Ulinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
и
Llinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
€
Nlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
е
]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
ж
Xlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV26linear/linear_model/marital_status/weights/part_0/readNlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Unique]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
Tindices0	
У
Glinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Р
?linear/linear_model/marital_status/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
†
9linear/linear_model/marital_status/weighted_sum/Reshape_1ReshapeYlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/marital_status/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Љ
5linear/linear_model/marital_status/weighted_sum/ShapeShapeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Н
Clinear/linear_model/marital_status/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
П
Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
П
Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
й
=linear/linear_model/marital_status/weighted_sum/strided_sliceStridedSlice5linear/linear_model/marital_status/weighted_sum/ShapeClinear/linear_model/marital_status/weighted_sum/strided_slice/stackElinear/linear_model/marital_status/weighted_sum/strided_slice/stack_1Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
y
7linear/linear_model/marital_status/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
п
5linear/linear_model/marital_status/weighted_sum/stackPack7linear/linear_model/marital_status/weighted_sum/stack/0=linear/linear_model/marital_status/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
ы
4linear/linear_model/marital_status/weighted_sum/TileTile9linear/linear_model/marital_status/weighted_sum/Reshape_15linear/linear_model/marital_status/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
¬
:linear/linear_model/marital_status/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
/linear/linear_model/marital_status/weighted_sumSelect4linear/linear_model/marital_status/weighted_sum/Tile:linear/linear_model/marital_status/weighted_sum/zeros_likeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¶
6linear/linear_model/marital_status/weighted_sum/Cast_1Cast2linear/linear_model/marital_status/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
З
=linear/linear_model/marital_status/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ж
<linear/linear_model/marital_status/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
І
7linear/linear_model/marital_status/weighted_sum/Slice_1Slice6linear/linear_model/marital_status/weighted_sum/Cast_1=linear/linear_model/marital_status/weighted_sum/Slice_1/begin<linear/linear_model/marital_status/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
¶
7linear/linear_model/marital_status/weighted_sum/Shape_1Shape/linear/linear_model/marital_status/weighted_sum*
out_type0*
T0*
_output_shapes
:
З
=linear/linear_model/marital_status/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
П
<linear/linear_model/marital_status/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
®
7linear/linear_model/marital_status/weighted_sum/Slice_2Slice7linear/linear_model/marital_status/weighted_sum/Shape_1=linear/linear_model/marital_status/weighted_sum/Slice_2/begin<linear/linear_model/marital_status/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear_model/marital_status/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ђ
6linear/linear_model/marital_status/weighted_sum/concatConcatV27linear/linear_model/marital_status/weighted_sum/Slice_17linear/linear_model/marital_status/weighted_sum/Slice_2;linear/linear_model/marital_status/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
н
9linear/linear_model/marital_status/weighted_sum/Reshape_2Reshape/linear/linear_model/marital_status/weighted_sum6linear/linear_model/marital_status/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Х
%linear/linear_model/occupation/lookupStringToHashBucketFastParseExample/ParseExample:7*#
_output_shapes
:€€€€€€€€€*
num_bucketsи
Г
)linear/linear_model/occupation/Shape/CastCastParseExample/ParseExample:12*

DstT0*
_output_shapes
:*

SrcT0	
|
2linear/linear_model/occupation/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
~
4linear/linear_model/occupation/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
~
4linear/linear_model/occupation/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Щ
,linear/linear_model/occupation/strided_sliceStridedSlice)linear/linear_model/occupation/Shape/Cast2linear/linear_model/occupation/strided_slice/stack4linear/linear_model/occupation/strided_slice/stack_14linear/linear_model/occupation/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
r
'linear/linear_model/occupation/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Њ
%linear/linear_model/occupation/Cast/xPack,linear/linear_model/occupation/strided_slice'linear/linear_model/occupation/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
Ж
#linear/linear_model/occupation/CastCast%linear/linear_model/occupation/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
ћ
,linear/linear_model/occupation/SparseReshapeSparseReshapeParseExample/ParseExample:2ParseExample/ParseExample:12#linear/linear_model/occupation/Cast*-
_output_shapes
:€€€€€€€€€:
Ц
5linear/linear_model/occupation/SparseReshape/IdentityIdentity%linear/linear_model/occupation/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
в
Olinear/linear_model/occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"и     *
_output_shapes
:*
dtype0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
ћ
Elinear/linear_model/occupation/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
Ё
?linear/linear_model/occupation/weights/part_0/Initializer/zerosFillOlinear/linear_model/occupation/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/occupation/weights/part_0/Initializer/zeros/Const*
T0*
_output_shapes
:	и*

index_type0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
е
-linear/linear_model/occupation/weights/part_0
VariableV2*
shared_name *@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
_output_shapes
:	и*
dtype0*
	container *
shape:	и
√
4linear/linear_model/occupation/weights/part_0/AssignAssign-linear/linear_model/occupation/weights/part_0?linear/linear_model/occupation/weights/part_0/Initializer/zeros*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
ў
2linear/linear_model/occupation/weights/part_0/readIdentity-linear/linear_model/occupation/weights/part_0*
T0*
_output_shapes
:	и*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
Б
7linear/linear_model/occupation/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
А
6linear/linear_model/occupation/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Н
1linear/linear_model/occupation/weighted_sum/SliceSlice.linear/linear_model/occupation/SparseReshape:17linear/linear_model/occupation/weighted_sum/Slice/begin6linear/linear_model/occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
{
1linear/linear_model/occupation/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
№
0linear/linear_model/occupation/weighted_sum/ProdProd1linear/linear_model/occupation/weighted_sum/Slice1linear/linear_model/occupation/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
~
<linear/linear_model/occupation/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
{
9linear/linear_model/occupation/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
≠
4linear/linear_model/occupation/weighted_sum/GatherV2GatherV2.linear/linear_model/occupation/SparseReshape:1<linear/linear_model/occupation/weighted_sum/GatherV2/indices9linear/linear_model/occupation/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
№
2linear/linear_model/occupation/weighted_sum/Cast/xPack0linear/linear_model/occupation/weighted_sum/Prod4linear/linear_model/occupation/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
Л
9linear/linear_model/occupation/weighted_sum/SparseReshapeSparseReshape,linear/linear_model/occupation/SparseReshape.linear/linear_model/occupation/SparseReshape:12linear/linear_model/occupation/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
≥
Blinear/linear_model/occupation/weighted_sum/SparseReshape/IdentityIdentity5linear/linear_model/occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
|
:linear/linear_model/occupation/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ц
8linear/linear_model/occupation/weighted_sum/GreaterEqualGreaterEqualBlinear/linear_model/occupation/weighted_sum/SparseReshape/Identity:linear/linear_model/occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
¶
1linear/linear_model/occupation/weighted_sum/WhereWhere8linear/linear_model/occupation/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
М
9linear/linear_model/occupation/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
и
3linear/linear_model/occupation/weighted_sum/ReshapeReshape1linear/linear_model/occupation/weighted_sum/Where9linear/linear_model/occupation/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
}
;linear/linear_model/occupation/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ƒ
6linear/linear_model/occupation/weighted_sum/GatherV2_1GatherV29linear/linear_model/occupation/weighted_sum/SparseReshape3linear/linear_model/occupation/weighted_sum/Reshape;linear/linear_model/occupation/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
}
;linear/linear_model/occupation/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
…
6linear/linear_model/occupation/weighted_sum/GatherV2_2GatherV2Blinear/linear_model/occupation/weighted_sum/SparseReshape/Identity3linear/linear_model/occupation/weighted_sum/Reshape;linear/linear_model/occupation/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Ґ
4linear/linear_model/occupation/weighted_sum/IdentityIdentity;linear/linear_model/occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
З
Elinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
ґ
Slinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows6linear/linear_model/occupation/weighted_sum/GatherV2_16linear/linear_model/occupation/weighted_sum/GatherV2_24linear/linear_model/occupation/weighted_sum/IdentityElinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
®
Wlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
™
Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
™
Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
д
Qlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceSlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsWlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackYlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
а
Hlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/CastCastQlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
ч
Jlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/UniqueUniqueUlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ё
Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
“
Tlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV22linear/linear_model/occupation/weights/part_0/readJlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/UniqueYlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
Tindices0	
Г
Clinear/linear_model/occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumTlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupLlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Unique:1Hlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
М
;linear/linear_model/occupation/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Ф
5linear/linear_model/occupation/weighted_sum/Reshape_1ReshapeUlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2;linear/linear_model/occupation/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
і
1linear/linear_model/occupation/weighted_sum/ShapeShapeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Й
?linear/linear_model/occupation/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Л
Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Л
Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
’
9linear/linear_model/occupation/weighted_sum/strided_sliceStridedSlice1linear/linear_model/occupation/weighted_sum/Shape?linear/linear_model/occupation/weighted_sum/strided_slice/stackAlinear/linear_model/occupation/weighted_sum/strided_slice/stack_1Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
u
3linear/linear_model/occupation/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
г
1linear/linear_model/occupation/weighted_sum/stackPack3linear/linear_model/occupation/weighted_sum/stack/09linear/linear_model/occupation/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
п
0linear/linear_model/occupation/weighted_sum/TileTile5linear/linear_model/occupation/weighted_sum/Reshape_11linear/linear_model/occupation/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Ї
6linear/linear_model/occupation/weighted_sum/zeros_like	ZerosLikeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ц
+linear/linear_model/occupation/weighted_sumSelect0linear/linear_model/occupation/weighted_sum/Tile6linear/linear_model/occupation/weighted_sum/zeros_likeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ю
2linear/linear_model/occupation/weighted_sum/Cast_1Cast.linear/linear_model/occupation/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
Г
9linear/linear_model/occupation/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
В
8linear/linear_model/occupation/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Ч
3linear/linear_model/occupation/weighted_sum/Slice_1Slice2linear/linear_model/occupation/weighted_sum/Cast_19linear/linear_model/occupation/weighted_sum/Slice_1/begin8linear/linear_model/occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ю
3linear/linear_model/occupation/weighted_sum/Shape_1Shape+linear/linear_model/occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:
Г
9linear/linear_model/occupation/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Л
8linear/linear_model/occupation/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ш
3linear/linear_model/occupation/weighted_sum/Slice_2Slice3linear/linear_model/occupation/weighted_sum/Shape_19linear/linear_model/occupation/weighted_sum/Slice_2/begin8linear/linear_model/occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
y
7linear/linear_model/occupation/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ы
2linear/linear_model/occupation/weighted_sum/concatConcatV23linear/linear_model/occupation/weighted_sum/Slice_13linear/linear_model/occupation/weighted_sum/Slice_27linear/linear_model/occupation/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
б
5linear/linear_model/occupation/weighted_sum/Reshape_2Reshape+linear/linear_model/occupation/weighted_sum2linear/linear_model/occupation/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
≈
:linear/linear_model/relationship/relationship_lookup/ConstConst*W
valueNBLBHusbandBNot-in-familyBWifeB	Own-childB	UnmarriedBOther-relative*
_output_shapes
:*
dtype0
{
9linear/linear_model/relationship/relationship_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
В
@linear/linear_model/relationship/relationship_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
В
@linear/linear_model/relationship/relationship_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
™
:linear/linear_model/relationship/relationship_lookup/rangeRange@linear/linear_model/relationship/relationship_lookup/range/start9linear/linear_model/relationship/relationship_lookup/Size@linear/linear_model/relationship/relationship_lookup/range/delta*
_output_shapes
:*

Tidx0
і
<linear/linear_model/relationship/relationship_lookup/ToInt64Cast:linear/linear_model/relationship/relationship_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
Ћ
?linear/linear_model/relationship/relationship_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
Р
Elinear/linear_model/relationship/relationship_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
≤
Jlinear/linear_model/relationship/relationship_lookup/hash_table/table_initInitializeTableV2?linear/linear_model/relationship/relationship_lookup/hash_table:linear/linear_model/relationship/relationship_lookup/Const<linear/linear_model/relationship/relationship_lookup/ToInt64*

Tval0	*

Tkey0
®
2linear/linear_model/relationship/hash_table_LookupLookupTableFindV2?linear/linear_model/relationship/relationship_lookup/hash_tableParseExample/ParseExample:8Elinear/linear_model/relationship/relationship_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
Е
+linear/linear_model/relationship/Shape/CastCastParseExample/ParseExample:13*

DstT0*
_output_shapes
:*

SrcT0	
~
4linear/linear_model/relationship/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
А
6linear/linear_model/relationship/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
А
6linear/linear_model/relationship/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
£
.linear/linear_model/relationship/strided_sliceStridedSlice+linear/linear_model/relationship/Shape/Cast4linear/linear_model/relationship/strided_slice/stack6linear/linear_model/relationship/strided_slice/stack_16linear/linear_model/relationship/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
t
)linear/linear_model/relationship/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ƒ
'linear/linear_model/relationship/Cast/xPack.linear/linear_model/relationship/strided_slice)linear/linear_model/relationship/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
К
%linear/linear_model/relationship/CastCast'linear/linear_model/relationship/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
–
.linear/linear_model/relationship/SparseReshapeSparseReshapeParseExample/ParseExample:3ParseExample/ParseExample:13%linear/linear_model/relationship/Cast*-
_output_shapes
:€€€€€€€€€:
•
7linear/linear_model/relationship/SparseReshape/IdentityIdentity2linear/linear_model/relationship/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
Џ
Alinear/linear_model/relationship/weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes

:*
dtype0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
з
/linear/linear_model/relationship/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
 
6linear/linear_model/relationship/weights/part_0/AssignAssign/linear/linear_model/relationship/weights/part_0Alinear/linear_model/relationship/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
ё
4linear/linear_model/relationship/weights/part_0/readIdentity/linear/linear_model/relationship/weights/part_0*
T0*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
Г
9linear/linear_model/relationship/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
В
8linear/linear_model/relationship/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Х
3linear/linear_model/relationship/weighted_sum/SliceSlice0linear/linear_model/relationship/SparseReshape:19linear/linear_model/relationship/weighted_sum/Slice/begin8linear/linear_model/relationship/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
}
3linear/linear_model/relationship/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
в
2linear/linear_model/relationship/weighted_sum/ProdProd3linear/linear_model/relationship/weighted_sum/Slice3linear/linear_model/relationship/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
А
>linear/linear_model/relationship/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
}
;linear/linear_model/relationship/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
µ
6linear/linear_model/relationship/weighted_sum/GatherV2GatherV20linear/linear_model/relationship/SparseReshape:1>linear/linear_model/relationship/weighted_sum/GatherV2/indices;linear/linear_model/relationship/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
в
4linear/linear_model/relationship/weighted_sum/Cast/xPack2linear/linear_model/relationship/weighted_sum/Prod6linear/linear_model/relationship/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
У
;linear/linear_model/relationship/weighted_sum/SparseReshapeSparseReshape.linear/linear_model/relationship/SparseReshape0linear/linear_model/relationship/SparseReshape:14linear/linear_model/relationship/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ј
Dlinear/linear_model/relationship/weighted_sum/SparseReshape/IdentityIdentity7linear/linear_model/relationship/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
~
<linear/linear_model/relationship/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
ь
:linear/linear_model/relationship/weighted_sum/GreaterEqualGreaterEqualDlinear/linear_model/relationship/weighted_sum/SparseReshape/Identity<linear/linear_model/relationship/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
™
3linear/linear_model/relationship/weighted_sum/WhereWhere:linear/linear_model/relationship/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
О
;linear/linear_model/relationship/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
о
5linear/linear_model/relationship/weighted_sum/ReshapeReshape3linear/linear_model/relationship/weighted_sum/Where;linear/linear_model/relationship/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€

=linear/linear_model/relationship/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ћ
8linear/linear_model/relationship/weighted_sum/GatherV2_1GatherV2;linear/linear_model/relationship/weighted_sum/SparseReshape5linear/linear_model/relationship/weighted_sum/Reshape=linear/linear_model/relationship/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	

=linear/linear_model/relationship/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
—
8linear/linear_model/relationship/weighted_sum/GatherV2_2GatherV2Dlinear/linear_model/relationship/weighted_sum/SparseReshape/Identity5linear/linear_model/relationship/weighted_sum/Reshape=linear/linear_model/relationship/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
¶
6linear/linear_model/relationship/weighted_sum/IdentityIdentity=linear/linear_model/relationship/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Й
Glinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
ј
Ulinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/relationship/weighted_sum/GatherV2_18linear/linear_model/relationship/weighted_sum/GatherV2_26linear/linear_model/relationship/weighted_sum/IdentityGlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
™
Ylinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
ђ
[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
ђ
[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
о
Slinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceUlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsYlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
д
Jlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/CastCastSlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
ы
Llinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/UniqueUniqueWlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
б
[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
№
Vlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV24linear/linear_model/relationship/weights/part_0/readLlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Unique[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
Tindices0	
Л
Elinear/linear_model/relationship/weighted_sum/embedding_lookup_sparseSparseSegmentSumVlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupNlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Unique:1Jlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
О
=linear/linear_model/relationship/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Ъ
7linear/linear_model/relationship/weighted_sum/Reshape_1ReshapeWlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2=linear/linear_model/relationship/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Є
3linear/linear_model/relationship/weighted_sum/ShapeShapeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Л
Alinear/linear_model/relationship/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Н
Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Н
Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
я
;linear/linear_model/relationship/weighted_sum/strided_sliceStridedSlice3linear/linear_model/relationship/weighted_sum/ShapeAlinear/linear_model/relationship/weighted_sum/strided_slice/stackClinear/linear_model/relationship/weighted_sum/strided_slice/stack_1Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
w
5linear/linear_model/relationship/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
й
3linear/linear_model/relationship/weighted_sum/stackPack5linear/linear_model/relationship/weighted_sum/stack/0;linear/linear_model/relationship/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
х
2linear/linear_model/relationship/weighted_sum/TileTile7linear/linear_model/relationship/weighted_sum/Reshape_13linear/linear_model/relationship/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Њ
8linear/linear_model/relationship/weighted_sum/zeros_like	ZerosLikeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ю
-linear/linear_model/relationship/weighted_sumSelect2linear/linear_model/relationship/weighted_sum/Tile8linear/linear_model/relationship/weighted_sum/zeros_likeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
4linear/linear_model/relationship/weighted_sum/Cast_1Cast0linear/linear_model/relationship/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
Е
;linear/linear_model/relationship/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Д
:linear/linear_model/relationship/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Я
5linear/linear_model/relationship/weighted_sum/Slice_1Slice4linear/linear_model/relationship/weighted_sum/Cast_1;linear/linear_model/relationship/weighted_sum/Slice_1/begin:linear/linear_model/relationship/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ґ
5linear/linear_model/relationship/weighted_sum/Shape_1Shape-linear/linear_model/relationship/weighted_sum*
out_type0*
T0*
_output_shapes
:
Е
;linear/linear_model/relationship/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Н
:linear/linear_model/relationship/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
†
5linear/linear_model/relationship/weighted_sum/Slice_2Slice5linear/linear_model/relationship/weighted_sum/Shape_1;linear/linear_model/relationship/weighted_sum/Slice_2/begin:linear/linear_model/relationship/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
{
9linear/linear_model/relationship/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
£
4linear/linear_model/relationship/weighted_sum/concatConcatV25linear/linear_model/relationship/weighted_sum/Slice_15linear/linear_model/relationship/weighted_sum/Slice_29linear/linear_model/relationship/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
з
7linear/linear_model/relationship/weighted_sum/Reshape_2Reshape-linear/linear_model/relationship/weighted_sum4linear/linear_model/relationship/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
е
4linear/linear_model/workclass/workclass_lookup/ConstConst*}
valuetBr	BSelf-emp-not-incBPrivateB	State-govBFederal-govB	Local-govB?BSelf-emp-incBWithout-payBNever-worked*
_output_shapes
:	*
dtype0
u
3linear/linear_model/workclass/workclass_lookup/SizeConst*
value	B :	*
_output_shapes
: *
dtype0
|
:linear/linear_model/workclass/workclass_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
|
:linear/linear_model/workclass/workclass_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Т
4linear/linear_model/workclass/workclass_lookup/rangeRange:linear/linear_model/workclass/workclass_lookup/range/start3linear/linear_model/workclass/workclass_lookup/Size:linear/linear_model/workclass/workclass_lookup/range/delta*
_output_shapes
:	*

Tidx0
®
6linear/linear_model/workclass/workclass_lookup/ToInt64Cast4linear/linear_model/workclass/workclass_lookup/range*

DstT0	*
_output_shapes
:	*

SrcT0
≈
9linear/linear_model/workclass/workclass_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
К
?linear/linear_model/workclass/workclass_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
Ъ
Dlinear/linear_model/workclass/workclass_lookup/hash_table/table_initInitializeTableV29linear/linear_model/workclass/workclass_lookup/hash_table4linear/linear_model/workclass/workclass_lookup/Const6linear/linear_model/workclass/workclass_lookup/ToInt64*

Tval0	*

Tkey0
Щ
/linear/linear_model/workclass/hash_table_LookupLookupTableFindV29linear/linear_model/workclass/workclass_lookup/hash_tableParseExample/ParseExample:9?linear/linear_model/workclass/workclass_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:€€€€€€€€€*

Tout0	
В
(linear/linear_model/workclass/Shape/CastCastParseExample/ParseExample:14*

DstT0*
_output_shapes
:*

SrcT0	
{
1linear/linear_model/workclass/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
}
3linear/linear_model/workclass/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
}
3linear/linear_model/workclass/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ф
+linear/linear_model/workclass/strided_sliceStridedSlice(linear/linear_model/workclass/Shape/Cast1linear/linear_model/workclass/strided_slice/stack3linear/linear_model/workclass/strided_slice/stack_13linear/linear_model/workclass/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
q
&linear/linear_model/workclass/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ї
$linear/linear_model/workclass/Cast/xPack+linear/linear_model/workclass/strided_slice&linear/linear_model/workclass/Cast/x/1*

axis *
T0*
N*
_output_shapes
:
Д
"linear/linear_model/workclass/CastCast$linear/linear_model/workclass/Cast/x*

DstT0	*
_output_shapes
:*

SrcT0
 
+linear/linear_model/workclass/SparseReshapeSparseReshapeParseExample/ParseExample:4ParseExample/ParseExample:14"linear/linear_model/workclass/Cast*-
_output_shapes
:€€€€€€€€€:
Я
4linear/linear_model/workclass/SparseReshape/IdentityIdentity/linear/linear_model/workclass/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
‘
>linear/linear_model/workclass/weights/part_0/Initializer/zerosConst*
valueB	*    *
_output_shapes

:	*
dtype0*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
б
,linear/linear_model/workclass/weights/part_0
VariableV2*
shared_name *?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
_output_shapes

:	*
dtype0*
	container *
shape
:	
Њ
3linear/linear_model/workclass/weights/part_0/AssignAssign,linear/linear_model/workclass/weights/part_0>linear/linear_model/workclass/weights/part_0/Initializer/zeros*
T0*
_output_shapes

:	*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
’
1linear/linear_model/workclass/weights/part_0/readIdentity,linear/linear_model/workclass/weights/part_0*
T0*
_output_shapes

:	*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
А
6linear/linear_model/workclass/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0

5linear/linear_model/workclass/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Й
0linear/linear_model/workclass/weighted_sum/SliceSlice-linear/linear_model/workclass/SparseReshape:16linear/linear_model/workclass/weighted_sum/Slice/begin5linear/linear_model/workclass/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
z
0linear/linear_model/workclass/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ў
/linear/linear_model/workclass/weighted_sum/ProdProd0linear/linear_model/workclass/weighted_sum/Slice0linear/linear_model/workclass/weighted_sum/Const*
	keep_dims( *
T0	*
_output_shapes
: *

Tidx0
}
;linear/linear_model/workclass/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
z
8linear/linear_model/workclass/weighted_sum/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
©
3linear/linear_model/workclass/weighted_sum/GatherV2GatherV2-linear/linear_model/workclass/SparseReshape:1;linear/linear_model/workclass/weighted_sum/GatherV2/indices8linear/linear_model/workclass/weighted_sum/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
ў
1linear/linear_model/workclass/weighted_sum/Cast/xPack/linear/linear_model/workclass/weighted_sum/Prod3linear/linear_model/workclass/weighted_sum/GatherV2*

axis *
T0	*
N*
_output_shapes
:
З
8linear/linear_model/workclass/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/workclass/SparseReshape-linear/linear_model/workclass/SparseReshape:11linear/linear_model/workclass/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
±
Alinear/linear_model/workclass/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/workclass/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
{
9linear/linear_model/workclass/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
у
7linear/linear_model/workclass/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/workclass/weighted_sum/SparseReshape/Identity9linear/linear_model/workclass/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
§
0linear/linear_model/workclass/weighted_sum/WhereWhere7linear/linear_model/workclass/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Л
8linear/linear_model/workclass/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
е
2linear/linear_model/workclass/weighted_sum/ReshapeReshape0linear/linear_model/workclass/weighted_sum/Where8linear/linear_model/workclass/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
|
:linear/linear_model/workclass/weighted_sum/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ј
5linear/linear_model/workclass/weighted_sum/GatherV2_1GatherV28linear/linear_model/workclass/weighted_sum/SparseReshape2linear/linear_model/workclass/weighted_sum/Reshape:linear/linear_model/workclass/weighted_sum/GatherV2_1/axis*
Taxis0*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Tindices0	
|
:linear/linear_model/workclass/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
≈
5linear/linear_model/workclass/weighted_sum/GatherV2_2GatherV2Alinear/linear_model/workclass/weighted_sum/SparseReshape/Identity2linear/linear_model/workclass/weighted_sum/Reshape:linear/linear_model/workclass/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
†
3linear/linear_model/workclass/weighted_sum/IdentityIdentity:linear/linear_model/workclass/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ж
Dlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
±
Rlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows5linear/linear_model/workclass/weighted_sum/GatherV2_15linear/linear_model/workclass/weighted_sum/GatherV2_23linear/linear_model/workclass/weighted_sum/IdentityDlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
І
Vlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
©
Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
©
Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
я
Plinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
end_mask*
T0	*
shrink_axis_mask*

begin_mask*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
ellipsis_mask 
ё
Glinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0	
х
Ilinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
џ
Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
Ќ
Slinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV21linear/linear_model/workclass/weights/part_0/readIlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/UniqueXlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tparams0*'
_output_shapes
:€€€€€€€€€*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
Tindices0	
€
Blinear/linear_model/workclass/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Л
:linear/linear_model/workclass/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
С
4linear/linear_model/workclass/weighted_sum/Reshape_1ReshapeTlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/workclass/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
≤
0linear/linear_model/workclass/weighted_sum/ShapeShapeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
И
>linear/linear_model/workclass/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
К
@linear/linear_model/workclass/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
К
@linear/linear_model/workclass/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
–
8linear/linear_model/workclass/weighted_sum/strided_sliceStridedSlice0linear/linear_model/workclass/weighted_sum/Shape>linear/linear_model/workclass/weighted_sum/strided_slice/stack@linear/linear_model/workclass/weighted_sum/strided_slice/stack_1@linear/linear_model/workclass/weighted_sum/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
t
2linear/linear_model/workclass/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
а
0linear/linear_model/workclass/weighted_sum/stackPack2linear/linear_model/workclass/weighted_sum/stack/08linear/linear_model/workclass/weighted_sum/strided_slice*

axis *
T0*
N*
_output_shapes
:
м
/linear/linear_model/workclass/weighted_sum/TileTile4linear/linear_model/workclass/weighted_sum/Reshape_10linear/linear_model/workclass/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Є
5linear/linear_model/workclass/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Т
*linear/linear_model/workclass/weighted_sumSelect/linear/linear_model/workclass/weighted_sum/Tile5linear/linear_model/workclass/weighted_sum/zeros_likeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ь
1linear/linear_model/workclass/weighted_sum/Cast_1Cast-linear/linear_model/workclass/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
В
8linear/linear_model/workclass/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Б
7linear/linear_model/workclass/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
У
2linear/linear_model/workclass/weighted_sum/Slice_1Slice1linear/linear_model/workclass/weighted_sum/Cast_18linear/linear_model/workclass/weighted_sum/Slice_1/begin7linear/linear_model/workclass/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ь
2linear/linear_model/workclass/weighted_sum/Shape_1Shape*linear/linear_model/workclass/weighted_sum*
out_type0*
T0*
_output_shapes
:
В
8linear/linear_model/workclass/weighted_sum/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
К
7linear/linear_model/workclass/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ф
2linear/linear_model/workclass/weighted_sum/Slice_2Slice2linear/linear_model/workclass/weighted_sum/Shape_18linear/linear_model/workclass/weighted_sum/Slice_2/begin7linear/linear_model/workclass/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
x
6linear/linear_model/workclass/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ч
1linear/linear_model/workclass/weighted_sum/concatConcatV22linear/linear_model/workclass/weighted_sum/Slice_12linear/linear_model/workclass/weighted_sum/Slice_26linear/linear_model/workclass/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ё
4linear/linear_model/workclass/weighted_sum/Reshape_2Reshape*linear/linear_model/workclass/weighted_sum1linear/linear_model/workclass/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
‘
(linear/linear_model/weighted_sum_no_biasAddN9linear/linear_model/age_bucketized/weighted_sum/Reshape_2Rlinear/linear_model/age_bucketized_X_education_X_occupation/weighted_sum/Reshape_24linear/linear_model/education/weighted_sum/Reshape_2Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_29linear/linear_model/marital_status/weighted_sum/Reshape_25linear/linear_model/occupation/weighted_sum/Reshape_27linear/linear_model/relationship/weighted_sum/Reshape_24linear/linear_model/workclass/weighted_sum/Reshape_2*
T0*
N*'
_output_shapes
:€€€€€€€€€
¬
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
ѕ
'linear/linear_model/bias_weights/part_0
VariableV2*
shared_name *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
¶
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
¬
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*
T0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
ј
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
d
linear/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
f
linear/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
f
linear/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Љ
linear/strided_sliceStridedSlice,linear/linear_model/bias_weights/part_0/readlinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
\
linear/bias/tagsConst*
valueB Blinear/bias*
_output_shapes
: *
dtype0
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 
g
linear/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ъ
linear/ReshapeReshape6linear/linear_model/age_bucketized/weights/part_0/readlinear/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Є
linear/Reshape_1ReshapeOlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/readlinear/Reshape_1/shape*
T0*
Tshape0*
_output_shapes	
:и
i
linear/Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Щ
linear/Reshape_2Reshape1linear/linear_model/education/weights/part_0/readlinear/Reshape_2/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
І
linear/Reshape_3Reshape>linear/linear_model/education_X_occupation/weights/part_0/readlinear/Reshape_3/shape*
T0*
Tshape0*
_output_shapes	
:и
i
linear/Reshape_4/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ю
linear/Reshape_4Reshape6linear/linear_model/marital_status/weights/part_0/readlinear/Reshape_4/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_5/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ы
linear/Reshape_5Reshape2linear/linear_model/occupation/weights/part_0/readlinear/Reshape_5/shape*
T0*
Tshape0*
_output_shapes	
:и
i
linear/Reshape_6/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ь
linear/Reshape_6Reshape4linear/linear_model/relationship/weights/part_0/readlinear/Reshape_6/shape*
T0*
Tshape0*
_output_shapes
:
i
linear/Reshape_7/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Щ
linear/Reshape_7Reshape1linear/linear_model/workclass/weights/part_0/readlinear/Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:	
T
linear/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ц
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/concat/axis*
T0*
N*
_output_shapes	
:й*

Tidx0
^
linear/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
s
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes	
:й
r
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

DstT0*
_output_shapes	
:й*

SrcT0

d
linear/zero_fraction/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Д
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
_output_shapes
: *
dtype0
Т
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
`
linear/zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ц
linear/zero_fraction_1/EqualEqual linear/linear_model/weighted_sumlinear/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€
В
linear/zero_fraction_1/CastCastlinear/zero_fraction_1/Equal*

DstT0*'
_output_shapes
:€€€€€€€€€*

SrcT0

m
linear/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Ь
linear/zero_fraction_1/MeanMeanlinear/zero_fraction_1/Castlinear/zero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Р
*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
_output_shapes
: *
dtype0
†
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
_output_shapes
: *
dtype0
Н
linear/linear/activationHistogramSummarylinear/linear/activation/tag linear/linear_model/weighted_sum*
T0*
_output_shapes
: 
r
addAdddnn/logits/BiasAdd linear/linear_model/weighted_sum*
T0*'
_output_shapes
:€€€€€€€€€
`
head/predictions/logits/ShapeShapeadd*
out_type0*
T0*
_output_shapes
:
s
1head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
_output_shapes
: *
dtype0
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:€€€€€€€€€
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:€€€€€€€€€
q
&head/predictions/two_class_logits/axisConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Њ
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:€€€€€€€€€*

Tidx0
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:€€€€€€€€€
o
$head/predictions/class_ids/dimensionConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Ї
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
output_type0	*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0
j
head/predictions/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
§
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:€€€€€€€€€
’
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
	precision€€€€€€€€€*
shortest( *

scientific( *
T0	*'
_output_shapes
:€€€€€€€€€*
width€€€€€€€€€*

fill 
h

head/ShapeShapehead/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
d
head/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
d
head/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Т
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
R
head/range/startConst*
value	B : *
_output_shapes
: *
dtype0
R
head/range/limitConst*
value	B :*
_output_shapes
: *
dtype0
R
head/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
q

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:*

Tidx0
®
head/AsStringAsString
head/range*
	precision€€€€€€€€€*
shortest( *

scientific( *
T0*
_output_shapes
:*
width€€€€€€€€€*

fill 
U
head/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0
v
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
value	B :*
_output_shapes
: *
dtype0
А
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*

axis *
T0*
N*
_output_shapes
:
{
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_8cf90be3b57244858f9bce86526abdc6/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
–
save/SaveV2/tensor_namesConst"/device:CPU:0*ф
valueкBзBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsBClinear/linear_model/age_bucketized_X_education_X_occupation/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB*linear/linear_model/marital_status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:*
dtype0
У
save/SaveV2/shape_and_slicesConst"/device:CPU:0*≥
value©B¶B	100 0,100B51 100 0,51:0,100B75 0,75B100 75 0,100:0,75B50 0,50B75 50 0,75:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000 1 0,1000:0,1B1 0,1B16 1 0,16:0,1B1000 1 0,1000:0,1B7 1 0,7:0,1B1000 1 0,1000:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:*
dtype0
ж
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/read]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step6linear/linear_model/age_bucketized/weights/part_0/readOlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/read,linear/linear_model/bias_weights/part_0/read1linear/linear_model/education/weights/part_0/read>linear/linear_model/education_X_occupation/weights/part_0/read6linear/linear_model/marital_status/weights/part_0/read2linear/linear_model/occupation/weights/part_0/read4linear/linear_model/relationship/weights/part_0/read1linear/linear_model/workclass/weights/part_0/read"/device:CPU:0*#
dtypes
2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
”
save/RestoreV2/tensor_namesConst"/device:CPU:0*ф
valueкBзBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsBClinear/linear_model/age_bucketized_X_education_X_occupation/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB*linear/linear_model/marital_status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:*
dtype0
Ц
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*≥
value©B¶B	100 0,100B51 100 0,51:0,100B75 0,75B100 75 0,100:0,75B50 0,50B75 50 0,75:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000 1 0,1000:0,1B1 0,1B16 1 0,16:0,1B1000 1 0,1000:0,1B7 1 0,7:0,1B1000 1 0,1000:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:*
dtype0
к
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2	*ќ
_output_shapesї
Є:d:3d:K:dK:2:K2::2:	и:::::	и:::	и::	и::	
ƒ
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
T0*
_output_shapes
:d*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
–
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2:1*
T0*
_output_shapes

:3d*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
»
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2:2*
T0*
_output_shapes
:K*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
–
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2:3*
T0*
_output_shapes

:dK*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
»
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2:4*
T0*
_output_shapes
:2*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
–
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2:5*
T0*
_output_shapes

:K2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
»
save/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save/RestoreV2:6*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
–
save/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save/RestoreV2:7*
T0*
_output_shapes

:2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
√
save/Assign_8AssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0save/RestoreV2:8*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
Ї
save/Assign_9Assigndnn/logits/bias/part_0save/RestoreV2:9*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
ƒ
save/Assign_10Assigndnn/logits/kernel/part_0save/RestoreV2:10*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
Ґ
save/Assign_11Assignglobal_stepsave/RestoreV2:11*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
ц
save/Assign_12Assign1linear/linear_model/age_bucketized/weights/part_0save/RestoreV2:12*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
©
save/Assign_13AssignJlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0save/RestoreV2:13*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
ё
save/Assign_14Assign'linear/linear_model/bias_weights/part_0save/RestoreV2:14*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
м
save/Assign_15Assign,linear/linear_model/education/weights/part_0save/RestoreV2:15*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0
З
save/Assign_16Assign9linear/linear_model/education_X_occupation/weights/part_0save/RestoreV2:16*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
ц
save/Assign_17Assign1linear/linear_model/marital_status/weights/part_0save/RestoreV2:17*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
п
save/Assign_18Assign-linear/linear_model/occupation/weights/part_0save/RestoreV2:18*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
т
save/Assign_19Assign/linear/linear_model/relationship/weights/part_0save/RestoreV2:19*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
м
save/Assign_20Assign,linear/linear_model/workclass/weights/part_0save/RestoreV2:20*
T0*
_output_shapes

:	*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
у
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard

initNoOp
у
init_all_tablesNoOpf^dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_initp^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_initl^dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_initf^dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_initE^linear/linear_model/education/education_lookup/hash_table/table_initO^linear/linear_model/marital_status/marital_status_lookup/hash_table/table_initK^linear/linear_model/relationship/relationship_lookup/hash_table/table_initE^linear/linear_model/workclass/workclass_lookup/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_da28cbafa580494b8e74a903eafba341/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
“
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ф
valueкBзBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsBClinear/linear_model/age_bucketized_X_education_X_occupation/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB*linear/linear_model/marital_status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:*
dtype0
Х
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*≥
value©B¶B	100 0,100B51 100 0,51:0,100B75 0,75B100 75 0,100:0,75B50 0,50B75 50 0,75:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000 1 0,1000:0,1B1 0,1B16 1 0,16:0,1B1000 1 0,1000:0,1B7 1 0,7:0,1B1000 1 0,1000:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:*
dtype0
о
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/read]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step6linear/linear_model/age_bucketized/weights/part_0/readOlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/read,linear/linear_model/bias_weights/part_0/read1linear/linear_model/education/weights/part_0/read>linear/linear_model/education_X_occupation/weights/part_0/read6linear/linear_model/marital_status/weights/part_0/read2linear/linear_model/occupation/weights/part_0/read4linear/linear_model/relationship/weights/part_0/read1linear/linear_model/workclass/weights/part_0/read"/device:CPU:0*#
dtypes
2	
®
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
≤
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
’
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ф
valueкBзBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsBClinear/linear_model/age_bucketized_X_education_X_occupation/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB*linear/linear_model/marital_status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:*
dtype0
Ш
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*≥
value©B¶B	100 0,100B51 100 0,51:0,100B75 0,75B100 75 0,100:0,75B50 0,50B75 50 0,75:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000 1 0,1000:0,1B1 0,1B16 1 0,16:0,1B1000 1 0,1000:0,1B7 1 0,7:0,1B1000 1 0,1000:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:*
dtype0
т
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2	*ќ
_output_shapesї
Є:d:3d:K:dK:2:K2::2:	и:::::	и:::	и::	и::	
»
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
T0*
_output_shapes
:d*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
‘
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2:1*
T0*
_output_shapes

:3d*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
ћ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2:2*
T0*
_output_shapes
:K*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
‘
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2:3*
T0*
_output_shapes

:dK*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
ћ
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2:4*
T0*
_output_shapes
:2*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
‘
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2:5*
T0*
_output_shapes

:K2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
ћ
save_1/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save_1/RestoreV2:6*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
‘
save_1/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save_1/RestoreV2:7*
T0*
_output_shapes

:2*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
«
save_1/Assign_8AssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0save_1/RestoreV2:8*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
Њ
save_1/Assign_9Assigndnn/logits/bias/part_0save_1/RestoreV2:9*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
»
save_1/Assign_10Assigndnn/logits/kernel/part_0save_1/RestoreV2:10*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
¶
save_1/Assign_11Assignglobal_stepsave_1/RestoreV2:11*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
ъ
save_1/Assign_12Assign1linear/linear_model/age_bucketized/weights/part_0save_1/RestoreV2:12*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0
≠
save_1/Assign_13AssignJlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0save_1/RestoreV2:13*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*]
_classS
QOloc:@linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0
в
save_1/Assign_14Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2:14*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
р
save_1/Assign_15Assign,linear/linear_model/education/weights/part_0save_1/RestoreV2:15*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0
Л
save_1/Assign_16Assign9linear/linear_model/education_X_occupation/weights/part_0save_1/RestoreV2:16*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0
ъ
save_1/Assign_17Assign1linear/linear_model/marital_status/weights/part_0save_1/RestoreV2:17*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0
у
save_1/Assign_18Assign-linear/linear_model/occupation/weights/part_0save_1/RestoreV2:18*
T0*
_output_shapes
:	и*
use_locking(*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0
ц
save_1/Assign_19Assign/linear/linear_model/relationship/weights/part_0save_1/RestoreV2:19*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
р
save_1/Assign_20Assign,linear/linear_model/workclass/weights/part_0save_1/RestoreV2:20*
T0*
_output_shapes

:	*
use_locking(*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
Я
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"н
table_initializer„
‘
ednn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_init
odnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_init
kdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_init
ednn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_init
Dlinear/linear_model/education/education_lookup/hash_table/table_init
Nlinear/linear_model/marital_status/marital_status_lookup/hash_table/table_init
Jlinear/linear_model/relationship/relationship_lookup/hash_table/table_init
Dlinear/linear_model/workclass/workclass_lookup/hash_table/table_init" 
legacy_init_op


group_deps"ѕ
model_variablesїЄ
ъ
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsи  "и2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
™
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0
©
Llinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0:0Qlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/AssignQlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/read:0"S
Clinear/linear_model/age_bucketized_X_education_X_occupation/weightsи  "и2^linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
‘
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsи  "и2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Ш
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"6
&linear/linear_model/occupation/weightsи  "и2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"З*
	variablesщ)ц)
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ъ
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsи  "и2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel3d  "3d2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldK  "dK2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasK "K21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelK2  "K22<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias2 "221dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel2  "22<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias "21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
™
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0
©
Llinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0:0Qlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/AssignQlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/read:0"S
Clinear/linear_model/age_bucketized_X_education_X_occupation/weightsи  "и2^linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
‘
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsи  "и2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Ш
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"6
&linear/linear_model/occupation/weightsи  "и2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"Ј)
trainable_variablesЯ)Ь)
ъ
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsи  "и2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel3d  "3d2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldK  "dK2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasK "K21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelK2  "K22<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias2 "221dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel2  "22<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias "21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
™
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0
©
Llinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0:0Qlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/AssignQlinear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/read:0"S
Clinear/linear_model/age_bucketized_X_education_X_occupation/weightsи  "и2^linear/linear_model/age_bucketized_X_education_X_occupation/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
‘
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsи  "и2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Ш
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"6
&linear/linear_model/occupation/weightsи  "и2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
†
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0
С
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"£
	summariesХ
Т
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0*Ц
predictК
5
examples)
input_example_tensor:0€€€€€€€€€A
	class_ids4
head/predictions/ExpandDims:0	€€€€€€€€€H
probabilities7
 head/predictions/probabilities:0€€€€€€€€€@
classes5
head/predictions/str_classes:0€€€€€€€€€&
logits
add:0€€€€€€€€€>
logistic2
head/predictions/logistic:0€€€€€€€€€tensorflow/serving/predict*Я

regressionР
3
inputs)
input_example_tensor:0€€€€€€€€€=
outputs2
head/predictions/logistic:0€€€€€€€€€tensorflow/serving/regress*Ў
serving_defaultƒ
3
inputs)
input_example_tensor:0€€€€€€€€€-
classes"
head/Tile:0€€€€€€€€€A
scores7
 head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify*„
classificationƒ
3
inputs)
input_example_tensor:0€€€€€€€€€-
classes"
head/Tile:0€€€€€€€€€A
scores7
 head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify