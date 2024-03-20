(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_spaces_bucket

val digitalocean_spaces_bucket :
  ?id:string prop ->
  name:string prop ->
  region:string prop ->
  unit ->
  digitalocean_spaces_bucket

val yojson_of_digitalocean_spaces_bucket :
  digitalocean_spaces_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket_domain_name : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
