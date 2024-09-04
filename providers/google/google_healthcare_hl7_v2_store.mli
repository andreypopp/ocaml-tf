(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification_config

val notification_config :
  pubsub_topic:string prop -> unit -> notification_config

type notification_configs

val notification_configs :
  ?filter:string prop ->
  pubsub_topic:string prop ->
  unit ->
  notification_configs

type parser_config

val parser_config :
  ?allow_null_header:bool prop ->
  ?schema:string prop ->
  ?segment_terminator:string prop ->
  ?version:string prop ->
  unit ->
  parser_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_healthcare_hl7_v2_store

val google_healthcare_hl7_v2_store :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?reject_duplicate_message:bool prop ->
  ?notification_config:notification_config list ->
  ?notification_configs:notification_configs list ->
  ?parser_config:parser_config list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  unit ->
  google_healthcare_hl7_v2_store

val yojson_of_google_healthcare_hl7_v2_store :
  google_healthcare_hl7_v2_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dataset : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  reject_duplicate_message : bool prop;
  self_link : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?reject_duplicate_message:bool prop ->
  ?notification_config:notification_config list ->
  ?notification_configs:notification_configs list ->
  ?parser_config:parser_config list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?reject_duplicate_message:bool prop ->
  ?notification_config:notification_config list ->
  ?notification_configs:notification_configs list ->
  ?parser_config:parser_config list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
