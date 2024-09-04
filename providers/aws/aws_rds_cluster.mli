(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}

type restore_to_point_in_time

val restore_to_point_in_time :
  ?restore_to_time:string prop ->
  ?restore_type:string prop ->
  ?use_latest_restorable_time:bool prop ->
  source_cluster_identifier:string prop ->
  unit ->
  restore_to_point_in_time

type s3_import

val s3_import :
  ?bucket_prefix:string prop ->
  bucket_name:string prop ->
  ingestion_role:string prop ->
  source_engine:string prop ->
  source_engine_version:string prop ->
  unit ->
  s3_import

type scaling_configuration

val scaling_configuration :
  ?auto_pause:bool prop ->
  ?max_capacity:float prop ->
  ?min_capacity:float prop ->
  ?seconds_until_auto_pause:float prop ->
  ?timeout_action:string prop ->
  unit ->
  scaling_configuration

type serverlessv2_scaling_configuration

val serverlessv2_scaling_configuration :
  max_capacity:float prop ->
  min_capacity:float prop ->
  unit ->
  serverlessv2_scaling_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_rds_cluster

val aws_rds_cluster :
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backtrack_window:float prop ->
  ?backup_retention_period:float prop ->
  ?ca_certificate_identifier:string prop ->
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
  ?enable_local_write_forwarding:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine_lifecycle_support:string prop ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_security_group_ids:string prop list ->
  ?restore_to_point_in_time:restore_to_point_in_time list ->
  ?s3_import:s3_import list ->
  ?scaling_configuration:scaling_configuration list ->
  ?serverlessv2_scaling_configuration:
    serverlessv2_scaling_configuration list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  unit ->
  aws_rds_cluster

val yojson_of_aws_rds_cluster : aws_rds_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
  ca_certificate_identifier : string prop;
  ca_certificate_valid_till : string prop;
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
  enable_local_write_forwarding : bool prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_lifecycle_support : string prop;
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
  master_user_secret : master_user_secret list prop;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backtrack_window:float prop ->
  ?backup_retention_period:float prop ->
  ?ca_certificate_identifier:string prop ->
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
  ?enable_local_write_forwarding:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine_lifecycle_support:string prop ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_security_group_ids:string prop list ->
  ?restore_to_point_in_time:restore_to_point_in_time list ->
  ?s3_import:s3_import list ->
  ?scaling_configuration:scaling_configuration list ->
  ?serverlessv2_scaling_configuration:
    serverlessv2_scaling_configuration list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  string ->
  t

val make :
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backtrack_window:float prop ->
  ?backup_retention_period:float prop ->
  ?ca_certificate_identifier:string prop ->
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
  ?enable_local_write_forwarding:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine_lifecycle_support:string prop ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_security_group_ids:string prop list ->
  ?restore_to_point_in_time:restore_to_point_in_time list ->
  ?s3_import:s3_import list ->
  ?scaling_configuration:scaling_configuration list ->
  ?serverlessv2_scaling_configuration:
    serverlessv2_scaling_configuration list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  string ->
  t Tf_core.resource
