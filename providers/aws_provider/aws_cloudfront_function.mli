(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_function

type t = private {
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  live_stage_etag : string prop;
  name : string prop;
  publish : bool prop;
  runtime : string prop;
  status : string prop;
}

val aws_cloudfront_function :
  ?comment:string prop ->
  ?id:string prop ->
  ?publish:bool prop ->
  code:string prop ->
  name:string prop ->
  runtime:string prop ->
  string ->
  t
