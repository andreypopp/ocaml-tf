(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_task__excludes
type aws_datasync_task__includes
type aws_datasync_task__options
type aws_datasync_task__schedule
type aws_datasync_task__task_report_config__report_overrides
type aws_datasync_task__task_report_config__s3_destination
type aws_datasync_task__task_report_config
type aws_datasync_task__timeouts
type aws_datasync_task

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

val aws_datasync_task :
  ?cloudwatch_log_group_arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_datasync_task__timeouts ->
  destination_location_arn:string prop ->
  source_location_arn:string prop ->
  excludes:aws_datasync_task__excludes list ->
  includes:aws_datasync_task__includes list ->
  options:aws_datasync_task__options list ->
  schedule:aws_datasync_task__schedule list ->
  task_report_config:aws_datasync_task__task_report_config list ->
  string ->
  t
