(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_pipeline__parallelism_configuration
type aws_sagemaker_pipeline__pipeline_definition_s3_location
type aws_sagemaker_pipeline

val aws_sagemaker_pipeline :
  ?id:string ->
  ?pipeline_definition:string ->
  ?pipeline_description:string ->
  ?role_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  pipeline_display_name:string ->
  pipeline_name:string ->
  parallelism_configuration:
    aws_sagemaker_pipeline__parallelism_configuration list ->
  pipeline_definition_s3_location:
    aws_sagemaker_pipeline__pipeline_definition_s3_location list ->
  string ->
  unit
