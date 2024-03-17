(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_s3__s3_config
type aws_datasync_location_s3

val aws_datasync_location_s3 :
  ?agent_arns:string prop list ->
  ?id:string prop ->
  ?s3_storage_class:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  s3_bucket_arn:string prop ->
  subdirectory:string prop ->
  s3_config:aws_datasync_location_s3__s3_config list ->
  string ->
  unit
