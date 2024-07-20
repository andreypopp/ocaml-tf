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

type google_firebase_app_check_device_check_config

val google_firebase_app_check_device_check_config :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  key_id:string prop ->
  private_key:string prop ->
  unit ->
  google_firebase_app_check_device_check_config

val yojson_of_google_firebase_app_check_device_check_config :
  google_firebase_app_check_device_check_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  private_key : string prop;
  private_key_set : bool prop;
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
  key_id:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?token_ttl:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  key_id:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
