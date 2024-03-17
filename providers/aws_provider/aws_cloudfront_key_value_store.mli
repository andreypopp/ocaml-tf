(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_key_value_store__timeouts
type aws_cloudfront_key_value_store

type t = private {
  arn : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
}

val aws_cloudfront_key_value_store :
  ?comment:string prop ->
  ?timeouts:aws_cloudfront_key_value_store__timeouts ->
  name:string prop ->
  string ->
  t
