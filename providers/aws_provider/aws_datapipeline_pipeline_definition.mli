(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datapipeline_pipeline_definition__parameter_object__attribute
type aws_datapipeline_pipeline_definition__parameter_object
type aws_datapipeline_pipeline_definition__parameter_value
type aws_datapipeline_pipeline_definition__pipeline_object__field
type aws_datapipeline_pipeline_definition__pipeline_object
type aws_datapipeline_pipeline_definition

val aws_datapipeline_pipeline_definition :
  pipeline_id:string ->
  parameter_object:
    aws_datapipeline_pipeline_definition__parameter_object list ->
  parameter_value:
    aws_datapipeline_pipeline_definition__parameter_value list ->
  pipeline_object:
    aws_datapipeline_pipeline_definition__pipeline_object list ->
  string ->
  unit
