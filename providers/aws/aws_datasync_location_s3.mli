(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_config

val s3_config :
  bucket_access_role_arn:string prop -> unit -> s3_config

type aws_datasync_location_s3

val aws_datasync_location_s3 :
  ?agent_arns:string prop list ->
  ?id:string prop ->
  ?s3_storage_class:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  s3_bucket_arn:string prop ->
  subdirectory:string prop ->
  s3_config:s3_config list ->
  unit ->
  aws_datasync_location_s3

val yojson_of_aws_datasync_location_s3 :
  aws_datasync_location_s3 -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?agent_arns:string prop list ->
  ?id:string prop ->
  ?s3_storage_class:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  s3_bucket_arn:string prop ->
  subdirectory:string prop ->
  s3_config:s3_config list ->
  string ->
  t

val make :
  ?agent_arns:string prop list ->
  ?id:string prop ->
  ?s3_storage_class:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  s3_bucket_arn:string prop ->
  subdirectory:string prop ->
  s3_config:s3_config list ->
  string ->
  t Tf_core.resource
