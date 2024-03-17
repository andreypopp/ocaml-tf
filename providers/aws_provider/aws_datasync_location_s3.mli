(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_s3__s3_config
type aws_datasync_location_s3

val aws_datasync_location_s3 :
  ?agent_arns:string list ->
  ?tags:(string * string) list ->
  s3_bucket_arn:string ->
  subdirectory:string ->
  s3_config:aws_datasync_location_s3__s3_config list ->
  string ->
  unit
