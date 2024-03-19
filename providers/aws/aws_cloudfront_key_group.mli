(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_key_group

val aws_cloudfront_key_group :
  ?comment:string prop ->
  ?id:string prop ->
  items:string prop list ->
  name:string prop ->
  unit ->
  aws_cloudfront_key_group

val yojson_of_aws_cloudfront_key_group :
  aws_cloudfront_key_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  comment : string prop;
  etag : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  items:string prop list ->
  name:string prop ->
  string ->
  t
