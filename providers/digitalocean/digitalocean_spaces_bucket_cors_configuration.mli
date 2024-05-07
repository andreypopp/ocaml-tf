(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_rule

val cors_rule :
  ?allowed_headers:string prop list ->
  ?expose_headers:string prop list ->
  ?id:string prop ->
  ?max_age_seconds:float prop ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  unit ->
  cors_rule

type digitalocean_spaces_bucket_cors_configuration

val digitalocean_spaces_bucket_cors_configuration :
  ?id:string prop ->
  bucket:string prop ->
  region:string prop ->
  cors_rule:cors_rule list ->
  unit ->
  digitalocean_spaces_bucket_cors_configuration

val yojson_of_digitalocean_spaces_bucket_cors_configuration :
  digitalocean_spaces_bucket_cors_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  region:string prop ->
  cors_rule:cors_rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket:string prop ->
  region:string prop ->
  cors_rule:cors_rule list ->
  string ->
  t Tf_core.resource
