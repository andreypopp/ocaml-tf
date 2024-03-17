(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_data_quality_job_definition__data_quality_app_specification

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__statistics_resource

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__csv

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__json

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__endpoint_input

type aws_sagemaker_data_quality_job_definition__data_quality_job_input

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs__s3_output

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config

type aws_sagemaker_data_quality_job_definition__job_resources__cluster_config

type aws_sagemaker_data_quality_job_definition__job_resources

type aws_sagemaker_data_quality_job_definition__network_config__vpc_config

type aws_sagemaker_data_quality_job_definition__network_config
type aws_sagemaker_data_quality_job_definition__stopping_condition
type aws_sagemaker_data_quality_job_definition

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_data_quality_job_definition :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  role_arn:string prop ->
  data_quality_app_specification:
    aws_sagemaker_data_quality_job_definition__data_quality_app_specification
    list ->
  data_quality_baseline_config:
    aws_sagemaker_data_quality_job_definition__data_quality_baseline_config
    list ->
  data_quality_job_input:
    aws_sagemaker_data_quality_job_definition__data_quality_job_input
    list ->
  data_quality_job_output_config:
    aws_sagemaker_data_quality_job_definition__data_quality_job_output_config
    list ->
  job_resources:
    aws_sagemaker_data_quality_job_definition__job_resources list ->
  network_config:
    aws_sagemaker_data_quality_job_definition__network_config list ->
  stopping_condition:
    aws_sagemaker_data_quality_job_definition__stopping_condition
    list ->
  string ->
  t
