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

val aws_sagemaker_feature_group :
  ?description:string ->
  ?tags:(string * string) list ->
  event_time_feature_name:string ->
  feature_group_name:string ->
  record_identifier_feature_name:string ->
  role_arn:string ->
  feature_definition:
    aws_sagemaker_feature_group__feature_definition list ->
  offline_store_config:
    aws_sagemaker_feature_group__offline_store_config list ->
  online_store_config:
    aws_sagemaker_feature_group__online_store_config list ->
  string ->
  unit
