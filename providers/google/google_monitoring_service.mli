(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type telemetry = {
  resource_name : string prop;  (** resource_name *)
}

type basic_service

val basic_service :
  ?service_labels:(string * string prop) list ->
  ?service_type:string prop ->
  unit ->
  basic_service

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_service

val google_monitoring_service :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?basic_service:basic_service list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  unit ->
  google_monitoring_service

val yojson_of_google_monitoring_service :
  google_monitoring_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  telemetry : telemetry list prop;
  user_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?basic_service:basic_service list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?basic_service:basic_service list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
