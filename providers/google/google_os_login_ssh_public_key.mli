(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_os_login_ssh_public_key

val google_os_login_ssh_public_key :
  ?expiration_time_usec:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  user:string prop ->
  unit ->
  google_os_login_ssh_public_key

val yojson_of_google_os_login_ssh_public_key :
  google_os_login_ssh_public_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  expiration_time_usec : string prop;
  fingerprint : string prop;
  id : string prop;
  key : string prop;
  project : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expiration_time_usec:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  user:string prop ->
  string ->
  t
