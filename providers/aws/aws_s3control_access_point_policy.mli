(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_access_point_policy

val aws_s3control_access_point_policy :
  ?id:string prop ->
  access_point_arn:string prop ->
  policy:string prop ->
  unit ->
  aws_s3control_access_point_policy

val yojson_of_aws_s3control_access_point_policy :
  aws_s3control_access_point_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_point_arn : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  access_point_arn:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  access_point_arn:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
