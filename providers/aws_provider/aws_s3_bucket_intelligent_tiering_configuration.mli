(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_intelligent_tiering_configuration__filter
type aws_s3_bucket_intelligent_tiering_configuration__tiering
type aws_s3_bucket_intelligent_tiering_configuration

val aws_s3_bucket_intelligent_tiering_configuration :
  ?id:string prop ->
  ?status:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:aws_s3_bucket_intelligent_tiering_configuration__filter list ->
  tiering:
    aws_s3_bucket_intelligent_tiering_configuration__tiering list ->
  string ->
  unit
