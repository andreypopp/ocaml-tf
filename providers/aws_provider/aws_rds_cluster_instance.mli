(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_instance__timeouts
type aws_rds_cluster_instance

val aws_rds_cluster_instance :
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?availability_zone:string ->
  ?ca_cert_identifier:string ->
  ?copy_tags_to_snapshot:bool ->
  ?custom_iam_instance_profile:string ->
  ?db_parameter_group_name:string ->
  ?db_subnet_group_name:string ->
  ?engine_version:string ->
  ?id:string ->
  ?identifier:string ->
  ?identifier_prefix:string ->
  ?monitoring_interval:float ->
  ?monitoring_role_arn:string ->
  ?performance_insights_enabled:bool ->
  ?performance_insights_kms_key_id:string ->
  ?performance_insights_retention_period:float ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?promotion_tier:float ->
  ?publicly_accessible:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_rds_cluster_instance__timeouts ->
  cluster_identifier:string ->
  engine:string ->
  instance_class:string ->
  string ->
  unit
