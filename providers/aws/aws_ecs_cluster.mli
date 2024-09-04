(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__execute_command_configuration__log_configuration

val configuration__execute_command_configuration__log_configuration :
  ?cloud_watch_encryption_enabled:bool prop ->
  ?cloud_watch_log_group_name:string prop ->
  ?s3_bucket_encryption_enabled:bool prop ->
  ?s3_bucket_name:string prop ->
  ?s3_key_prefix:string prop ->
  unit ->
  configuration__execute_command_configuration__log_configuration

type configuration__execute_command_configuration

val configuration__execute_command_configuration :
  ?kms_key_id:string prop ->
  ?logging:string prop ->
  ?log_configuration:
    configuration__execute_command_configuration__log_configuration
    list ->
  unit ->
  configuration__execute_command_configuration

type configuration__managed_storage_configuration

val configuration__managed_storage_configuration :
  ?fargate_ephemeral_storage_kms_key_id:string prop ->
  ?kms_key_id:string prop ->
  unit ->
  configuration__managed_storage_configuration

type configuration

val configuration :
  ?execute_command_configuration:
    configuration__execute_command_configuration list ->
  ?managed_storage_configuration:
    configuration__managed_storage_configuration list ->
  unit ->
  configuration

type service_connect_defaults

val service_connect_defaults :
  namespace:string prop -> unit -> service_connect_defaults

type setting

val setting :
  name:string prop -> value:string prop -> unit -> setting

type aws_ecs_cluster

val aws_ecs_cluster :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?configuration:configuration list ->
  ?service_connect_defaults:service_connect_defaults list ->
  name:string prop ->
  setting:setting list ->
  unit ->
  aws_ecs_cluster

val yojson_of_aws_ecs_cluster : aws_ecs_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?configuration:configuration list ->
  ?service_connect_defaults:service_connect_defaults list ->
  name:string prop ->
  setting:setting list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?configuration:configuration list ->
  ?service_connect_defaults:service_connect_defaults list ->
  name:string prop ->
  setting:setting list ->
  string ->
  t Tf_core.resource
