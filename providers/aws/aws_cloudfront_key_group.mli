(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_key_group

type t = private {
  comment : string prop;
  etag : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
}

val aws_cloudfront_key_group :
  ?comment:string prop ->
  ?id:string prop ->
  items:string prop list ->
  name:string prop ->
  string ->
  t
