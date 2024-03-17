(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket_cors_configuration__cors_rule
type digitalocean_spaces_bucket_cors_configuration

type t = private {
  bucket : string prop;
  id : string prop;
  region : string prop;
}

val digitalocean_spaces_bucket_cors_configuration :
  ?id:string prop ->
  bucket:string prop ->
  region:string prop ->
  cors_rule:
    digitalocean_spaces_bucket_cors_configuration__cors_rule list ->
  string ->
  t
