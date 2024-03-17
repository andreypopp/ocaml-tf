(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_public_access_block

val aws_s3_bucket_public_access_block :
  ?block_public_acls:bool ->
  ?block_public_policy:bool ->
  ?id:string ->
  ?ignore_public_acls:bool ->
  ?restrict_public_buckets:bool ->
  bucket:string ->
  string ->
  unit
