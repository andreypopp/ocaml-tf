(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster__restore_to_point_in_time
type aws_rds_cluster__s3_import
type aws_rds_cluster__scaling_configuration
type aws_rds_cluster__serverlessv2_scaling_configuration
type aws_rds_cluster__timeouts

type aws_rds_cluster__master_user_secret = {
  kms_key_id : string;  (** kms_key_id *)
  secret_arn : string;  (** secret_arn *)
  secret_status : string;  (** secret_status *)
}

type aws_rds_cluster

val aws_rds_cluster :
  ?allocated_storage:float ->
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?availability_zones:string list ->
  ?backtrack_window:float ->
  ?backup_retention_period:float ->
  ?cluster_identifier:string ->
  ?cluster_identifier_prefix:string ->
  ?cluster_members:string list ->
  ?copy_tags_to_snapshot:bool ->
  ?database_name:string ->
  ?db_cluster_instance_class:string ->
  ?db_cluster_parameter_group_name:string ->
  ?db_instance_parameter_group_name:string ->
  ?db_subnet_group_name:string ->
  ?db_system_id:string ->
  ?delete_automated_backups:bool ->
  ?deletion_protection:bool ->
  ?domain:string ->
  ?domain_iam_role_name:string ->
  ?enable_global_write_forwarding:bool ->
  ?enable_http_endpoint:bool ->
  ?enabled_cloudwatch_logs_exports:string list ->
  ?engine_mode:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?global_cluster_identifier:string ->
  ?iam_database_authentication_enabled:bool ->
  ?iam_roles:string list ->
  ?id:string ->
  ?iops:float ->
  ?kms_key_id:string ->
  ?manage_master_user_password:bool ->
  ?master_password:string ->
  ?master_user_secret_kms_key_id:string ->
  ?master_username:string ->
  ?network_type:string ->
  ?port:float ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?replication_source_identifier:string ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?source_region:string ->
  ?storage_encrypted:bool ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_rds_cluster__timeouts ->
  engine:string ->
  restore_to_point_in_time:
    aws_rds_cluster__restore_to_point_in_time list ->
  s3_import:aws_rds_cluster__s3_import list ->
  scaling_configuration:aws_rds_cluster__scaling_configuration list ->
  serverlessv2_scaling_configuration:
    aws_rds_cluster__serverlessv2_scaling_configuration list ->
  string ->
  unit
