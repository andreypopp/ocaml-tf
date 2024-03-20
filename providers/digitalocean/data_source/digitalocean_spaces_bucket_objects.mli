(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_spaces_bucket_objects

val digitalocean_spaces_bucket_objects :
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  region:string prop ->
  unit ->
  digitalocean_spaces_bucket_objects

val yojson_of_digitalocean_spaces_bucket_objects :
  digitalocean_spaces_bucket_objects -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  common_prefixes : string list prop;
  delimiter : string prop;
  encoding_type : string prop;
  id : string prop;
  keys : string list prop;
  max_keys : float prop;
  owners : string list prop;
  prefix : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?delimiter:string prop ->
  ?encoding_type:string prop ->
  ?id:string prop ->
  ?max_keys:float prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
