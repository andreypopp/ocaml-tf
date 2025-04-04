(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type buffer_options

val buffer_options :
  persistent_buffer_enabled:bool prop -> unit -> buffer_options

type encryption_at_rest_options

val encryption_at_rest_options :
  kms_key_arn:string prop -> unit -> encryption_at_rest_options

type log_publishing_options__cloudwatch_log_destination

val log_publishing_options__cloudwatch_log_destination :
  log_group:string prop ->
  unit ->
  log_publishing_options__cloudwatch_log_destination

type log_publishing_options

val log_publishing_options :
  ?is_logging_enabled:bool prop ->
  ?cloudwatch_log_destination:
    log_publishing_options__cloudwatch_log_destination list ->
  unit ->
  log_publishing_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_options

val vpc_options :
  ?security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_options

type aws_osis_pipeline

val aws_osis_pipeline :
  ?tags:string prop Tf_core.assoc ->
  ?buffer_options:buffer_options list ->
  ?encryption_at_rest_options:encryption_at_rest_options list ->
  ?log_publishing_options:log_publishing_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  max_units:float prop ->
  min_units:float prop ->
  pipeline_configuration_body:string prop ->
  pipeline_name:string prop ->
  unit ->
  aws_osis_pipeline

val yojson_of_aws_osis_pipeline : aws_osis_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ingest_endpoint_urls : string list prop;
  max_units : float prop;
  min_units : float prop;
  pipeline_arn : string prop;
  pipeline_configuration_body : string prop;
  pipeline_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?buffer_options:buffer_options list ->
  ?encryption_at_rest_options:encryption_at_rest_options list ->
  ?log_publishing_options:log_publishing_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  max_units:float prop ->
  min_units:float prop ->
  pipeline_configuration_body:string prop ->
  pipeline_name:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?buffer_options:buffer_options list ->
  ?encryption_at_rest_options:encryption_at_rest_options list ->
  ?log_publishing_options:log_publishing_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  max_units:float prop ->
  min_units:float prop ->
  pipeline_configuration_body:string prop ->
  pipeline_name:string prop ->
  string ->
  t Tf_core.resource
