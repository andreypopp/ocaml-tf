(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_origin_access_control

val aws_cloudfront_origin_access_control :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  origin_access_control_origin_type:string prop ->
  signing_behavior:string prop ->
  signing_protocol:string prop ->
  unit ->
  aws_cloudfront_origin_access_control

val yojson_of_aws_cloudfront_origin_access_control :
  aws_cloudfront_origin_access_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  origin_access_control_origin_type : string prop;
  signing_behavior : string prop;
  signing_protocol : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  origin_access_control_origin_type:string prop ->
  signing_behavior:string prop ->
  signing_protocol:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  origin_access_control_origin_type:string prop ->
  signing_behavior:string prop ->
  signing_protocol:string prop ->
  string ->
  t Tf_core.resource
