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

type google_firebase_app_check_app_attest_config

val google_firebase_app_check_app_attest_config :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  unit ->
  google_firebase_app_check_app_attest_config

val yojson_of_google_firebase_app_check_app_attest_config :
  google_firebase_app_check_app_attest_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  token_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  string ->
  t Tf_core.resource
