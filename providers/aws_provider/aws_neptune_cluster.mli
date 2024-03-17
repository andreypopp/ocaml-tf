(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster__serverless_v2_scaling_configuration
type aws_neptune_cluster__timeouts
type aws_neptune_cluster

val aws_neptune_cluster :
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?availability_zones:string list ->
  ?backup_retention_period:float ->
  ?cluster_identifier:string ->
  ?cluster_identifier_prefix:string ->
  ?copy_tags_to_snapshot:bool ->
  ?deletion_protection:bool ->
  ?enable_cloudwatch_logs_exports:string list ->
  ?engine:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?global_cluster_identifier:string ->
  ?iam_database_authentication_enabled:bool ->
  ?iam_roles:string list ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?neptune_cluster_parameter_group_name:string ->
  ?neptune_instance_parameter_group_name:string ->
  ?neptune_subnet_group_name:string ->
  ?port:float ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?replication_source_identifier:string ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?storage_encrypted:bool ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_neptune_cluster__timeouts ->
  serverless_v2_scaling_configuration:
    aws_neptune_cluster__serverless_v2_scaling_configuration list ->
  string ->
  unit
