(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
