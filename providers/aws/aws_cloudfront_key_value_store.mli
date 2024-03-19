(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_cloudfront_key_value_store

val aws_cloudfront_key_value_store :
  ?comment:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_cloudfront_key_value_store

val yojson_of_aws_cloudfront_key_value_store :
  aws_cloudfront_key_value_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
