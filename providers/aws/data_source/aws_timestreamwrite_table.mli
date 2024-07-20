(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string prop;  (** bucket_name *)
  encryption_option : string prop;  (** encryption_option *)
  kms_key_id : string prop;  (** kms_key_id *)
  object_key_prefix : string prop;  (** object_key_prefix *)
}

type magnetic_store_write_properties__magnetic_store_rejected_data_location = {
  s3_configuration :
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** s3_configuration *)
}

type magnetic_store_write_properties = {
  enable_magnetic_store_writes : bool prop;
      (** enable_magnetic_store_writes *)
  magnetic_store_rejected_data_location :
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** magnetic_store_rejected_data_location *)
}

type retention_properties = {
  magnetic_store_retention_period_in_days : float prop;
      (** magnetic_store_retention_period_in_days *)
  memory_store_retention_period_in_hours : float prop;
      (** memory_store_retention_period_in_hours *)
}

type schema__composite_partition_key = {
  enforcement_in_record : string prop;  (** enforcement_in_record *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type schema = {
  composite_partition_key : schema__composite_partition_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** composite_partition_key *)
}

type aws_timestreamwrite_table

val aws_timestreamwrite_table :
  database_name:string prop ->
  name:string prop ->
  unit ->
  aws_timestreamwrite_table

val yojson_of_aws_timestreamwrite_table :
  aws_timestreamwrite_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  database_name : string prop;
  last_updated_time : string prop;
  magnetic_store_write_properties :
    magnetic_store_write_properties list prop;
  name : string prop;
  retention_properties : retention_properties list prop;
  schema : schema list prop;
  table_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  database_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  database_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
