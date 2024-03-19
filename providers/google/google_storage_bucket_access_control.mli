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

type google_storage_bucket_access_control

val google_storage_bucket_access_control :
  ?id:string prop ->
  ?role:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  entity:string prop ->
  unit ->
  google_storage_bucket_access_control

val yojson_of_google_storage_bucket_access_control :
  google_storage_bucket_access_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  id : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  entity:string prop ->
  string ->
  t
