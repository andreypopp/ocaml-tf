(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datapipeline_pipeline_definition__parameter_object__attribute
type aws_datapipeline_pipeline_definition__parameter_object
type aws_datapipeline_pipeline_definition__parameter_value
type aws_datapipeline_pipeline_definition__pipeline_object__field
type aws_datapipeline_pipeline_definition__pipeline_object
type aws_datapipeline_pipeline_definition
type t = private { id : string prop; pipeline_id : string prop }

val aws_datapipeline_pipeline_definition :
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_object:
    aws_datapipeline_pipeline_definition__parameter_object list ->
  parameter_value:
    aws_datapipeline_pipeline_definition__parameter_value list ->
  pipeline_object:
    aws_datapipeline_pipeline_definition__pipeline_object list ->
  string ->
  t
