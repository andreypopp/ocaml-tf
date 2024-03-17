(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_osis_pipeline__buffer_options
type aws_osis_pipeline__encryption_at_rest_options

type aws_osis_pipeline__log_publishing_options__cloudwatch_log_destination

type aws_osis_pipeline__log_publishing_options
type aws_osis_pipeline__timeouts
type aws_osis_pipeline__vpc_options
type aws_osis_pipeline

type t = private {
  id : string prop;
  ingest_endpoint_urls : string list prop;
  max_units : float prop;
  min_units : float prop;
  pipeline_arn : string prop;
  pipeline_configuration_body : string prop;
  pipeline_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_osis_pipeline :
  ?tags:(string * string prop) list ->
  ?timeouts:aws_osis_pipeline__timeouts ->
  max_units:float prop ->
  min_units:float prop ->
  pipeline_configuration_body:string prop ->
  pipeline_name:string prop ->
  buffer_options:aws_osis_pipeline__buffer_options list ->
  encryption_at_rest_options:
    aws_osis_pipeline__encryption_at_rest_options list ->
  log_publishing_options:
    aws_osis_pipeline__log_publishing_options list ->
  vpc_options:aws_osis_pipeline__vpc_options list ->
  string ->
  t
