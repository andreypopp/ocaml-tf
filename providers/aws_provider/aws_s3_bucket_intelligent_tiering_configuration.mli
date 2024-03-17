(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_intelligent_tiering_configuration__filter
type aws_s3_bucket_intelligent_tiering_configuration__tiering
type aws_s3_bucket_intelligent_tiering_configuration

val aws_s3_bucket_intelligent_tiering_configuration :
  ?id:string ->
  ?status:string ->
  bucket:string ->
  name:string ->
  filter:aws_s3_bucket_intelligent_tiering_configuration__filter list ->
  tiering:
    aws_s3_bucket_intelligent_tiering_configuration__tiering list ->
  string ->
  unit
