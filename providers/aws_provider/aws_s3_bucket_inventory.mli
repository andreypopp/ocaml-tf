(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_inventory__destination__bucket__encryption__sse_kms
type aws_s3_bucket_inventory__destination__bucket__encryption__sse_s3
type aws_s3_bucket_inventory__destination__bucket__encryption
type aws_s3_bucket_inventory__destination__bucket
type aws_s3_bucket_inventory__destination
type aws_s3_bucket_inventory__filter
type aws_s3_bucket_inventory__schedule
type aws_s3_bucket_inventory

val aws_s3_bucket_inventory :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?optional_fields:string prop list ->
  bucket:string prop ->
  included_object_versions:string prop ->
  name:string prop ->
  destination:aws_s3_bucket_inventory__destination list ->
  filter:aws_s3_bucket_inventory__filter list ->
  schedule:aws_s3_bucket_inventory__schedule list ->
  string ->
  unit
