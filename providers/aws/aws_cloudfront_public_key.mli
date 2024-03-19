(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_public_key

val aws_cloudfront_public_key :
  ?comment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  encoded_key:string prop ->
  unit ->
  aws_cloudfront_public_key

val yojson_of_aws_cloudfront_public_key :
  aws_cloudfront_public_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  caller_reference : string prop;
  comment : string prop;
  encoded_key : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  encoded_key:string prop ->
  string ->
  t
