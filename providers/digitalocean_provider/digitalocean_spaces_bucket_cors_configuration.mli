(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket_cors_configuration__cors_rule
type digitalocean_spaces_bucket_cors_configuration

val digitalocean_spaces_bucket_cors_configuration :
  ?id:string prop ->
  bucket:string prop ->
  region:string prop ->
  cors_rule:
    digitalocean_spaces_bucket_cors_configuration__cors_rule list ->
  string ->
  unit
