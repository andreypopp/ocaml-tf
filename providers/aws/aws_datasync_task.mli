(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type excludes

val excludes :
  ?filter_type:string prop -> ?value:string prop -> unit -> excludes

type includes

val includes :
  ?filter_type:string prop -> ?value:string prop -> unit -> includes

type options

val options :
  ?atime:string prop ->
  ?bytes_per_second:float prop ->
  ?gid:string prop ->
  ?log_level:string prop ->
  ?mtime:string prop ->
  ?object_tags:string prop ->
  ?overwrite_mode:string prop ->
  ?posix_permissions:string prop ->
  ?preserve_deleted_files:string prop ->
  ?preserve_devices:string prop ->
  ?security_descriptor_copy_flags:string prop ->
  ?task_queueing:string prop ->
  ?transfer_mode:string prop ->
  ?uid:string prop ->
  ?verify_mode:string prop ->
  unit ->
  options

type schedule

val schedule : schedule_expression:string prop -> unit -> schedule

type task_report_config__report_overrides

val task_report_config__report_overrides :
  ?deleted_override:string prop ->
  ?skipped_override:string prop ->
  ?transferred_override:string prop ->
  ?verified_override:string prop ->
  unit ->
  task_report_config__report_overrides

type task_report_config__s3_destination

val task_report_config__s3_destination :
  ?subdirectory:string prop ->
  bucket_access_role_arn:string prop ->
  s3_bucket_arn:string prop ->
  unit ->
  task_report_config__s3_destination

type task_report_config

val task_report_config :
  ?output_type:string prop ->
  ?report_level:string prop ->
  ?s3_object_versioning:string prop ->
  report_overrides:task_report_config__report_overrides list ->
  s3_destination:task_report_config__s3_destination list ->
  unit ->
  task_report_config

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_datasync_task

val aws_datasync_task :
  ?cloudwatch_log_group_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  destination_location_arn:string prop ->
  source_location_arn:string prop ->
  excludes:excludes list ->
  includes:includes list ->
  options:options list ->
  schedule:schedule list ->
  task_report_config:task_report_config list ->
  unit ->
  aws_datasync_task

val yojson_of_aws_datasync_task : aws_datasync_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cloudwatch_log_group_arn : string prop;
  destination_location_arn : string prop;
  id : string prop;
  name : string prop;
  source_location_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cloudwatch_log_group_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  destination_location_arn:string prop ->
  source_location_arn:string prop ->
  excludes:excludes list ->
  includes:includes list ->
  options:options list ->
  schedule:schedule list ->
  task_report_config:task_report_config list ->
  string ->
  t
