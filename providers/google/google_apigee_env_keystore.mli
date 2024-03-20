(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_env_keystore

val google_apigee_env_keystore :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  unit ->
  google_apigee_env_keystore

val yojson_of_google_apigee_env_keystore :
  google_apigee_env_keystore -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aliases : string list prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  string ->
  t Tf_core.resource
