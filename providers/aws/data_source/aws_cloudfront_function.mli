(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_function

val aws_cloudfront_function :
  ?id:string prop ->
  name:string prop ->
  stage:string prop ->
  unit ->
  aws_cloudfront_function

val yojson_of_aws_cloudfront_function :
  aws_cloudfront_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
  runtime : string prop;
  stage : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  stage:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  stage:string prop ->
  string ->
  t Tf_core.resource
