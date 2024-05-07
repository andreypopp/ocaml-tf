(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_rule

val cors_rule :
  ?allowed_headers:string prop list ->
  ?expose_headers:string prop list ->
  ?id:string prop ->
  ?max_age_seconds:float prop ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  unit ->
  cors_rule

type aws_s3_bucket_cors_configuration

val aws_s3_bucket_cors_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  cors_rule:cors_rule list ->
  unit ->
  aws_s3_bucket_cors_configuration

val yojson_of_aws_s3_bucket_cors_configuration :
  aws_s3_bucket_cors_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  cors_rule:cors_rule list ->
  string ->
  t

val make :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  cors_rule:cors_rule list ->
  string ->
  t Tf_core.resource
