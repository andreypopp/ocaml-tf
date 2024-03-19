(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_rds_custom_db_engine_version

val aws_rds_custom_db_engine_version :
  ?database_installation_files_s3_bucket_name:string prop ->
  ?database_installation_files_s3_prefix:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?manifest:string prop ->
  ?manifest_hash:string prop ->
  ?source_image_id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  engine_version:string prop ->
  unit ->
  aws_rds_custom_db_engine_version

val yojson_of_aws_rds_custom_db_engine_version :
  aws_rds_custom_db_engine_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  create_time : string prop;
  database_installation_files_s3_bucket_name : string prop;
  database_installation_files_s3_prefix : string prop;
  db_parameter_group_family : string prop;
  description : string prop;
  engine : string prop;
  engine_version : string prop;
  filename : string prop;
  id : string prop;
  image_id : string prop;
  kms_key_id : string prop;
  major_engine_version : string prop;
  manifest : string prop;
  manifest_computed : string prop;
  manifest_hash : string prop;
  source_image_id : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_installation_files_s3_bucket_name:string prop ->
  ?database_installation_files_s3_prefix:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?manifest:string prop ->
  ?manifest_hash:string prop ->
  ?source_image_id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  engine_version:string prop ->
  string ->
  t
