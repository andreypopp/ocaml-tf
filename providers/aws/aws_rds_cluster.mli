(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster__restore_to_point_in_time
type aws_rds_cluster__s3_import
type aws_rds_cluster__scaling_configuration
type aws_rds_cluster__serverlessv2_scaling_configuration
type aws_rds_cluster__timeouts

type aws_rds_cluster__master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}

type aws_rds_cluster

type t = private {
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_identifier_prefix : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  copy_tags_to_snapshot : bool prop;
  database_name : string prop;
  db_cluster_instance_class : string prop;
  db_cluster_parameter_group_name : string prop;
  db_instance_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  db_system_id : string prop;
  delete_automated_backups : bool prop;
  deletion_protection : bool prop;
  domain : string prop;
  domain_iam_role_name : string prop;
  enable_global_write_forwarding : bool prop;
  enable_http_endpoint : bool prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_mode : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  manage_master_user_password : bool prop;
  master_password : string prop;
  master_user_secret : aws_rds_cluster__master_user_secret list prop;
  master_user_secret_kms_key_id : string prop;
  master_username : string prop;
  network_type : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  source_region : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

val aws_rds_cluster :
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backtrack_window:float prop ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?cluster_members:string prop list ->
  ?copy_tags_to_snapshot:bool prop ->
  ?database_name:string prop ->
  ?db_cluster_instance_class:string prop ->
  ?db_cluster_parameter_group_name:string prop ->
  ?db_instance_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?db_system_id:string prop ->
  ?delete_automated_backups:bool prop ->
  ?deletion_protection:bool prop ->
  ?domain:string prop ->
  ?domain_iam_role_name:string prop ->
  ?enable_global_write_forwarding:bool prop ->
  ?enable_http_endpoint:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine_mode:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?iam_database_authentication_enabled:bool prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?manage_master_user_password:bool prop ->
  ?master_password:string prop ->
  ?master_user_secret_kms_key_id:string prop ->
  ?master_username:string prop ->
  ?network_type:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?replication_source_identifier:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?source_region:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_rds_cluster__timeouts ->
  engine:string prop ->
  restore_to_point_in_time:
    aws_rds_cluster__restore_to_point_in_time list ->
  s3_import:aws_rds_cluster__s3_import list ->
  scaling_configuration:aws_rds_cluster__scaling_configuration list ->
  serverlessv2_scaling_configuration:
    aws_rds_cluster__serverlessv2_scaling_configuration list ->
  string ->
  t
