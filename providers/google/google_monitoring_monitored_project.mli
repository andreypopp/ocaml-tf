(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_monitoring_monitored_project

val google_monitoring_monitored_project :
  ?id:string prop ->
  ?timeouts:timeouts ->
  metrics_scope:string prop ->
  name:string prop ->
  unit ->
  google_monitoring_monitored_project

val yojson_of_google_monitoring_monitored_project :
  google_monitoring_monitored_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  id : string prop;
  metrics_scope : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metrics_scope:string prop ->
  name:string prop ->
  string ->
  t
