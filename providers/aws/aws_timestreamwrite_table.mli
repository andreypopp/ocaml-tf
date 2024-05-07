(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration

val magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration :
  ?bucket_name:string prop ->
  ?encryption_option:string prop ->
  ?kms_key_id:string prop ->
  ?object_key_prefix:string prop ->
  unit ->
  magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration

type magnetic_store_write_properties__magnetic_store_rejected_data_location

val magnetic_store_write_properties__magnetic_store_rejected_data_location :
  ?s3_configuration:
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    list ->
  unit ->
  magnetic_store_write_properties__magnetic_store_rejected_data_location

type magnetic_store_write_properties

val magnetic_store_write_properties :
  ?enable_magnetic_store_writes:bool prop ->
  ?magnetic_store_rejected_data_location:
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    list ->
  unit ->
  magnetic_store_write_properties

type retention_properties

val retention_properties :
  magnetic_store_retention_period_in_days:float prop ->
  memory_store_retention_period_in_hours:float prop ->
  unit ->
  retention_properties

type schema__composite_partition_key

val schema__composite_partition_key :
  ?enforcement_in_record:string prop ->
  ?name:string prop ->
  type_:string prop ->
  unit ->
  schema__composite_partition_key

type schema

val schema :
  ?composite_partition_key:schema__composite_partition_key list ->
  unit ->
  schema

type aws_timestreamwrite_table

val aws_timestreamwrite_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?magnetic_store_write_properties:
    magnetic_store_write_properties list ->
  ?retention_properties:retention_properties list ->
  ?schema:schema list ->
  database_name:string prop ->
  table_name:string prop ->
  unit ->
  aws_timestreamwrite_table

val yojson_of_aws_timestreamwrite_table :
  aws_timestreamwrite_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?magnetic_store_write_properties:
    magnetic_store_write_properties list ->
  ?retention_properties:retention_properties list ->
  ?schema:schema list ->
  database_name:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?magnetic_store_write_properties:
    magnetic_store_write_properties list ->
  ?retention_properties:retention_properties list ->
  ?schema:schema list ->
  database_name:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
