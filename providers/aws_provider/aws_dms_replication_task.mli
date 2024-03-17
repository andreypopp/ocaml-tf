(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_task

val aws_dms_replication_task :
  ?cdc_start_position:string prop ->
  ?cdc_start_time:string prop ->
  ?id:string prop ->
  ?replication_task_settings:string prop ->
  ?start_replication_task:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  migration_type:string prop ->
  replication_instance_arn:string prop ->
  replication_task_id:string prop ->
  source_endpoint_arn:string prop ->
  table_mappings:string prop ->
  target_endpoint_arn:string prop ->
  string ->
  unit
