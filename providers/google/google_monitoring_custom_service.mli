(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type telemetry

val telemetry : ?resource_name:string prop -> unit -> telemetry

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_custom_service

val google_monitoring_custom_service :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?service_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?telemetry:telemetry list ->
  ?timeouts:timeouts ->
  unit ->
  google_monitoring_custom_service

val yojson_of_google_monitoring_custom_service :
  google_monitoring_custom_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  user_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?service_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?telemetry:telemetry list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?service_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?telemetry:telemetry list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
