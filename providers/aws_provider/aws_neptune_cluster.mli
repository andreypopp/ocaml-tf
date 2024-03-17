(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster__serverless_v2_scaling_configuration
type aws_neptune_cluster__timeouts
type aws_neptune_cluster

val aws_neptune_cluster :
  ?backup_retention_period:float ->
  ?copy_tags_to_snapshot:bool ->
  ?deletion_protection:bool ->
  ?enable_cloudwatch_logs_exports:string list ->
  ?engine:string ->
  ?final_snapshot_identifier:string ->
  ?global_cluster_identifier:string ->
  ?iam_database_authentication_enabled:bool ->
  ?iam_roles:string list ->
  ?neptune_cluster_parameter_group_name:string ->
  ?neptune_instance_parameter_group_name:string ->
  ?port:float ->
  ?replication_source_identifier:string ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?storage_encrypted:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_neptune_cluster__timeouts ->
  serverless_v2_scaling_configuration:
    aws_neptune_cluster__serverless_v2_scaling_configuration list ->
  string ->
  unit
