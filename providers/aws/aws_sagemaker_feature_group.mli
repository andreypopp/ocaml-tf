(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type feature_definition

val feature_definition :
  ?feature_name:string prop ->
  ?feature_type:string prop ->
  unit ->
  feature_definition

type offline_store_config__data_catalog_config

val offline_store_config__data_catalog_config :
  ?catalog:string prop ->
  ?database:string prop ->
  ?table_name:string prop ->
  unit ->
  offline_store_config__data_catalog_config

type offline_store_config__s3_storage_config

val offline_store_config__s3_storage_config :
  ?kms_key_id:string prop ->
  ?resolved_output_s3_uri:string prop ->
  s3_uri:string prop ->
  unit ->
  offline_store_config__s3_storage_config

type offline_store_config

val offline_store_config :
  ?disable_glue_table_creation:bool prop ->
  ?table_format:string prop ->
  ?data_catalog_config:offline_store_config__data_catalog_config list ->
  s3_storage_config:offline_store_config__s3_storage_config list ->
  unit ->
  offline_store_config

type online_store_config__security_config

val online_store_config__security_config :
  ?kms_key_id:string prop ->
  unit ->
  online_store_config__security_config

type online_store_config__ttl_duration

val online_store_config__ttl_duration :
  ?unit:string prop ->
  ?value:float prop ->
  unit ->
  online_store_config__ttl_duration

type online_store_config

val online_store_config :
  ?enable_online_store:bool prop ->
  ?storage_type:string prop ->
  ?security_config:online_store_config__security_config list ->
  ?ttl_duration:online_store_config__ttl_duration list ->
  unit ->
  online_store_config

type aws_sagemaker_feature_group

val aws_sagemaker_feature_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?offline_store_config:offline_store_config list ->
  ?online_store_config:online_store_config list ->
  event_time_feature_name:string prop ->
  feature_group_name:string prop ->
  record_identifier_feature_name:string prop ->
  role_arn:string prop ->
  feature_definition:feature_definition list ->
  unit ->
  aws_sagemaker_feature_group

val yojson_of_aws_sagemaker_feature_group :
  aws_sagemaker_feature_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  event_time_feature_name : string prop;
  feature_group_name : string prop;
  id : string prop;
  record_identifier_feature_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?offline_store_config:offline_store_config list ->
  ?online_store_config:online_store_config list ->
  event_time_feature_name:string prop ->
  feature_group_name:string prop ->
  record_identifier_feature_name:string prop ->
  role_arn:string prop ->
  feature_definition:feature_definition list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?offline_store_config:offline_store_config list ->
  ?online_store_config:online_store_config list ->
  event_time_feature_name:string prop ->
  feature_group_name:string prop ->
  record_identifier_feature_name:string prop ->
  role_arn:string prop ->
  feature_definition:feature_definition list ->
  string ->
  t Tf_core.resource
