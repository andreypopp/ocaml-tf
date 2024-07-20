(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_function

val aws_cloudfront_function :
  ?comment:string prop ->
  ?id:string prop ->
  ?key_value_store_associations:string prop list ->
  ?publish:bool prop ->
  code:string prop ->
  name:string prop ->
  runtime:string prop ->
  unit ->
  aws_cloudfront_function

val yojson_of_aws_cloudfront_function :
  aws_cloudfront_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  key_value_store_associations : string list prop;
  live_stage_etag : string prop;
  name : string prop;
  publish : bool prop;
  runtime : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  ?key_value_store_associations:string prop list ->
  ?publish:bool prop ->
  code:string prop ->
  name:string prop ->
  runtime:string prop ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  ?key_value_store_associations:string prop list ->
  ?publish:bool prop ->
  code:string prop ->
  name:string prop ->
  runtime:string prop ->
  string ->
  t Tf_core.resource
