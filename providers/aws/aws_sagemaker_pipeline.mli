(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parallelism_configuration

val parallelism_configuration :
  max_parallel_execution_steps:float prop ->
  unit ->
  parallelism_configuration

type pipeline_definition_s3_location

val pipeline_definition_s3_location :
  ?version_id:string prop ->
  bucket:string prop ->
  object_key:string prop ->
  unit ->
  pipeline_definition_s3_location

type aws_sagemaker_pipeline

val aws_sagemaker_pipeline :
  ?id:string prop ->
  ?pipeline_definition:string prop ->
  ?pipeline_description:string prop ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?parallelism_configuration:parallelism_configuration list ->
  ?pipeline_definition_s3_location:
    pipeline_definition_s3_location list ->
  pipeline_display_name:string prop ->
  pipeline_name:string prop ->
  unit ->
  aws_sagemaker_pipeline

val yojson_of_aws_sagemaker_pipeline : aws_sagemaker_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  pipeline_definition : string prop;
  pipeline_description : string prop;
  pipeline_display_name : string prop;
  pipeline_name : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?pipeline_definition:string prop ->
  ?pipeline_description:string prop ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?parallelism_configuration:parallelism_configuration list ->
  ?pipeline_definition_s3_location:
    pipeline_definition_s3_location list ->
  pipeline_display_name:string prop ->
  pipeline_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?pipeline_definition:string prop ->
  ?pipeline_description:string prop ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?parallelism_configuration:parallelism_configuration list ->
  ?pipeline_definition_s3_location:
    pipeline_definition_s3_location list ->
  pipeline_display_name:string prop ->
  pipeline_name:string prop ->
  string ->
  t Tf_core.resource
