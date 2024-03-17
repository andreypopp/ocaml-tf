(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_instance__blue_green_update
type aws_db_instance__restore_to_point_in_time
type aws_db_instance__s3_import
type aws_db_instance__timeouts

type aws_db_instance__listener_endpoint = {
  address : string prop;  (** address *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  port : float prop;  (** port *)
}

type aws_db_instance__master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}

type aws_db_instance

val aws_db_instance :
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?backup_retention_period:float prop ->
  ?backup_target:string prop ->
  ?backup_window:string prop ->
  ?ca_cert_identifier:string prop ->
  ?character_set_name:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?custom_iam_instance_profile:string prop ->
  ?customer_owned_ip_enabled:bool prop ->
  ?db_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?delete_automated_backups:bool prop ->
  ?deletion_protection:bool prop ->
  ?domain:string prop ->
  ?domain_auth_secret_arn:string prop ->
  ?domain_dns_ips:string prop list ->
  ?domain_fqdn:string prop ->
  ?domain_iam_role_name:string prop ->
  ?domain_ou:string prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?iam_database_authentication_enabled:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?license_model:string prop ->
  ?maintenance_window:string prop ->
  ?manage_master_user_password:bool prop ->
  ?master_user_secret_kms_key_id:string prop ->
  ?max_allocated_storage:float prop ->
  ?monitoring_interval:float prop ->
  ?monitoring_role_arn:string prop ->
  ?multi_az:bool prop ->
  ?nchar_character_set_name:string prop ->
  ?network_type:string prop ->
  ?option_group_name:string prop ->
  ?parameter_group_name:string prop ->
  ?password:string prop ->
  ?performance_insights_enabled:bool prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?performance_insights_retention_period:float prop ->
  ?port:float prop ->
  ?publicly_accessible:bool prop ->
  ?replica_mode:string prop ->
  ?replicate_source_db:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_throughput:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timezone:string prop ->
  ?username:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_db_instance__timeouts ->
  instance_class:string prop ->
  blue_green_update:aws_db_instance__blue_green_update list ->
  restore_to_point_in_time:
    aws_db_instance__restore_to_point_in_time list ->
  s3_import:aws_db_instance__s3_import list ->
  string ->
  unit
