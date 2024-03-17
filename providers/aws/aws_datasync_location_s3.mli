(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_s3__s3_config
type aws_datasync_location_s3

type t = private {
  agent_arns : string list prop;
  arn : string prop;
  id : string prop;
  s3_bucket_arn : string prop;
  s3_storage_class : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

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
  t
