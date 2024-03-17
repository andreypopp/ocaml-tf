(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_task

val aws_dms_replication_task :
  ?cdc_start_time:string ->
  ?replication_task_settings:string ->
  ?start_replication_task:bool ->
  ?tags:(string * string) list ->
  migration_type:string ->
  replication_instance_arn:string ->
  replication_task_id:string ->
  source_endpoint_arn:string ->
  table_mappings:string ->
  target_endpoint_arn:string ->
  string ->
  unit
