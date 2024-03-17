(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_account_public_access_block

val aws_s3_account_public_access_block :
  ?account_id:string prop ->
  ?block_public_acls:bool prop ->
  ?block_public_policy:bool prop ->
  ?id:string prop ->
  ?ignore_public_acls:bool prop ->
  ?restrict_public_buckets:bool prop ->
  string ->
  unit
