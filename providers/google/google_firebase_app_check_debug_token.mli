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

type google_firebase_app_check_debug_token

val google_firebase_app_check_debug_token :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  display_name:string prop ->
  token:string prop ->
  unit ->
  google_firebase_app_check_debug_token

val yojson_of_google_firebase_app_check_debug_token :
  google_firebase_app_check_debug_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  debug_token_id : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  display_name:string prop ->
  token:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  display_name:string prop ->
  token:string prop ->
  string ->
  t Tf_core.resource
