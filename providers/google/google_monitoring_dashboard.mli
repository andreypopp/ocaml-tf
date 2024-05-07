(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_dashboard

val google_monitoring_dashboard :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dashboard_json:string prop ->
  unit ->
  google_monitoring_dashboard

val yojson_of_google_monitoring_dashboard :
  google_monitoring_dashboard -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dashboard_json : string prop;
  id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dashboard_json:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dashboard_json:string prop ->
  string ->
  t Tf_core.resource
