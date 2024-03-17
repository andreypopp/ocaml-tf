(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_public_key

type t = private {
  caller_reference : string prop;
  comment : string prop;
  encoded_key : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

val aws_cloudfront_public_key :
  ?comment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  encoded_key:string prop ->
  string ->
  t
