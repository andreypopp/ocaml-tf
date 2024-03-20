(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type versioning_configuration

val versioning_configuration :
  ?mfa_delete:string prop ->
  status:string prop ->
  unit ->
  versioning_configuration

type aws_s3_bucket_versioning

val aws_s3_bucket_versioning :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?mfa:string prop ->
  bucket:string prop ->
  versioning_configuration:versioning_configuration list ->
  unit ->
  aws_s3_bucket_versioning

val yojson_of_aws_s3_bucket_versioning :
  aws_s3_bucket_versioning -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  mfa : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?mfa:string prop ->
  bucket:string prop ->
  versioning_configuration:versioning_configuration list ->
  string ->
  t

val make :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?mfa:string prop ->
  bucket:string prop ->
  versioning_configuration:versioning_configuration list ->
  string ->
  t Tf_core.resource
