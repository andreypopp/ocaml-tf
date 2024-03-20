(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_bucket_policy

val aws_s3control_bucket_policy :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  unit ->
  aws_s3control_bucket_policy

val yojson_of_aws_s3control_bucket_policy :
  aws_s3control_bucket_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
