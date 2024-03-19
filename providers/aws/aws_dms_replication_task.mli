(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_dms_replication_task

val yojson_of_aws_dms_replication_task :
  aws_dms_replication_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags_all : (string * string) list prop;
  target_endpoint_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  t
