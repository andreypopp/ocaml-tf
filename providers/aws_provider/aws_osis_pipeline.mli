(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_osis_pipeline__buffer_options
type aws_osis_pipeline__encryption_at_rest_options

type aws_osis_pipeline__log_publishing_options__cloudwatch_log_destination

type aws_osis_pipeline__log_publishing_options
type aws_osis_pipeline__timeouts
type aws_osis_pipeline__vpc_options
type aws_osis_pipeline

val aws_osis_pipeline :
  ?tags:(string * string) list ->
  ?timeouts:aws_osis_pipeline__timeouts ->
  max_units:float ->
  min_units:float ->
  pipeline_configuration_body:string ->
  pipeline_name:string ->
  buffer_options:aws_osis_pipeline__buffer_options list ->
  encryption_at_rest_options:
    aws_osis_pipeline__encryption_at_rest_options list ->
  log_publishing_options:
    aws_osis_pipeline__log_publishing_options list ->
  vpc_options:aws_osis_pipeline__vpc_options list ->
  string ->
  unit
