(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_spaces_bucket_policy

val digitalocean_spaces_bucket_policy :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  region:string prop ->
  unit ->
  digitalocean_spaces_bucket_policy

val yojson_of_digitalocean_spaces_bucket_policy :
  digitalocean_spaces_bucket_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  id : string prop;
  policy : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  region:string prop ->
  string ->
  t
