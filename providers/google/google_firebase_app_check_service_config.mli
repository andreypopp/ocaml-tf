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

type google_firebase_app_check_service_config

val google_firebase_app_check_service_config :
  ?enforcement_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  unit ->
  google_firebase_app_check_service_config

val yojson_of_google_firebase_app_check_service_config :
  google_firebase_app_check_service_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enforcement_mode : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enforcement_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t

val make :
  ?enforcement_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
