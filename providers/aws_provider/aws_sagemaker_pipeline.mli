(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_pipeline__parallelism_configuration
type aws_sagemaker_pipeline__pipeline_definition_s3_location
type aws_sagemaker_pipeline

val aws_sagemaker_pipeline :
  ?id:string prop ->
  ?pipeline_definition:string prop ->
  ?pipeline_description:string prop ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  pipeline_display_name:string prop ->
  pipeline_name:string prop ->
  parallelism_configuration:
    aws_sagemaker_pipeline__parallelism_configuration list ->
  pipeline_definition_s3_location:
    aws_sagemaker_pipeline__pipeline_definition_s3_location list ->
  string ->
  unit
