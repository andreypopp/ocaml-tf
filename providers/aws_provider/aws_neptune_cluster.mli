(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster__serverless_v2_scaling_configuration
type aws_neptune_cluster__timeouts
type aws_neptune_cluster

val aws_neptune_cluster :
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?deletion_protection:bool prop ->
  ?enable_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?iam_database_authentication_enabled:bool prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?neptune_cluster_parameter_group_name:string prop ->
  ?neptune_instance_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?replication_source_identifier:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_neptune_cluster__timeouts ->
  serverless_v2_scaling_configuration:
    aws_neptune_cluster__serverless_v2_scaling_configuration list ->
  string ->
  unit
