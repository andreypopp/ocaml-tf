(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_intelligent_tiering_configuration__filter
type aws_s3_bucket_intelligent_tiering_configuration__tiering
type aws_s3_bucket_intelligent_tiering_configuration

type t = private {
  bucket : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val aws_s3_bucket_intelligent_tiering_configuration :
  ?id:string prop ->
  ?status:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:aws_s3_bucket_intelligent_tiering_configuration__filter list ->
  tiering:
    aws_s3_bucket_intelligent_tiering_configuration__tiering list ->
  string ->
  t
