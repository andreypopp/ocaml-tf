(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_feature_group__feature_definition

type aws_sagemaker_feature_group__offline_store_config__data_catalog_config

type aws_sagemaker_feature_group__offline_store_config__s3_storage_config

type aws_sagemaker_feature_group__offline_store_config
type aws_sagemaker_feature_group__online_store_config__security_config
type aws_sagemaker_feature_group__online_store_config__ttl_duration
type aws_sagemaker_feature_group__online_store_config
type aws_sagemaker_feature_group

type t = private {
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

val aws_sagemaker_feature_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  event_time_feature_name:string prop ->
  feature_group_name:string prop ->
  record_identifier_feature_name:string prop ->
  role_arn:string prop ->
  feature_definition:
    aws_sagemaker_feature_group__feature_definition list ->
  offline_store_config:
    aws_sagemaker_feature_group__offline_store_config list ->
  online_store_config:
    aws_sagemaker_feature_group__online_store_config list ->
  string ->
  t
