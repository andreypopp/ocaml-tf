(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket_policy

type t = private {
  bucket : string prop;
  id : string prop;
  policy : string prop;
  region : string prop;
}

val digitalocean_spaces_bucket_policy :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  region:string prop ->
  string ->
  t
