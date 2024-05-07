(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_replication_task

val aws_dms_replication_task :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_task_id:string prop ->
  unit ->
  aws_dms_replication_task

val yojson_of_aws_dms_replication_task :
  aws_dms_replication_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdc_start_position : string prop;
  cdc_start_time : string prop;
  id : string prop;
  migration_type : string prop;
  replication_instance_arn : string prop;
  replication_task_arn : string prop;
  replication_task_id : string prop;
  replication_task_settings : string prop;
  source_endpoint_arn : string prop;
  start_replication_task : bool prop;
  status : string prop;
  table_mappings : string prop;
  tags : (string * string) list prop;
  target_endpoint_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_task_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_task_id:string prop ->
  string ->
  t Tf_core.resource
