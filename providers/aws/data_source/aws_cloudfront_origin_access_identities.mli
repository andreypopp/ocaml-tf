(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_origin_access_identities

val aws_cloudfront_origin_access_identities :
  ?comments:string prop list ->
  ?id:string prop ->
  unit ->
  aws_cloudfront_origin_access_identities

val yojson_of_aws_cloudfront_origin_access_identities :
  aws_cloudfront_origin_access_identities -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  comments : string list prop;
  iam_arns : string list prop;
  id : string prop;
  ids : string list prop;
  s3_canonical_user_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?comments:string prop list ->
  ?id:string prop ->
  string ->
  t

val make :
  ?comments:string prop list ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
