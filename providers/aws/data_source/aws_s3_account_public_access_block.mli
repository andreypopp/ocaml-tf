(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_account_public_access_block

val aws_s3_account_public_access_block :
  ?account_id:string prop ->
  ?id:string prop ->
  unit ->
  aws_s3_account_public_access_block

val yojson_of_aws_s3_account_public_access_block :
  aws_s3_account_public_access_block -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  block_public_acls : bool prop;
  block_public_policy : bool prop;
  id : string prop;
  ignore_public_acls : bool prop;
  restrict_public_buckets : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
