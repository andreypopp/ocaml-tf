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

type google_storage_hmac_key

val google_storage_hmac_key :
  ?id:string prop ->
  ?project:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  service_account_email:string prop ->
  unit ->
  google_storage_hmac_key

val yojson_of_google_storage_hmac_key :
  google_storage_hmac_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_id : string prop;
  id : string prop;
  project : string prop;
  secret : string prop;
  service_account_email : string prop;
  state : string prop;
  time_created : string prop;
  updated : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  service_account_email:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  service_account_email:string prop ->
  string ->
  t Tf_core.resource
