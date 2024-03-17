(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_instance__blue_green_update
type aws_db_instance__restore_to_point_in_time
type aws_db_instance__s3_import
type aws_db_instance__timeouts

type aws_db_instance__listener_endpoint = {
  address : string;  (** address *)
  hosted_zone_id : string;  (** hosted_zone_id *)
  port : float;  (** port *)
}

type aws_db_instance__master_user_secret = {
  kms_key_id : string;  (** kms_key_id *)
  secret_arn : string;  (** secret_arn *)
  secret_status : string;  (** secret_status *)
}

type aws_db_instance

val aws_db_instance :
  ?allocated_storage:float ->
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?availability_zone:string ->
  ?backup_retention_period:float ->
  ?backup_target:string ->
  ?backup_window:string ->
  ?ca_cert_identifier:string ->
  ?character_set_name:string ->
  ?copy_tags_to_snapshot:bool ->
  ?custom_iam_instance_profile:string ->
  ?customer_owned_ip_enabled:bool ->
  ?db_name:string ->
  ?db_subnet_group_name:string ->
  ?delete_automated_backups:bool ->
  ?deletion_protection:bool ->
  ?domain:string ->
  ?domain_auth_secret_arn:string ->
  ?domain_dns_ips:string list ->
  ?domain_fqdn:string ->
  ?domain_iam_role_name:string ->
  ?domain_ou:string ->
  ?enabled_cloudwatch_logs_exports:string list ->
  ?engine:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?iam_database_authentication_enabled:bool ->
  ?id:string ->
  ?identifier:string ->
  ?identifier_prefix:string ->
  ?iops:float ->
  ?kms_key_id:string ->
  ?license_model:string ->
  ?maintenance_window:string ->
  ?manage_master_user_password:bool ->
  ?master_user_secret_kms_key_id:string ->
  ?max_allocated_storage:float ->
  ?monitoring_interval:float ->
  ?monitoring_role_arn:string ->
  ?multi_az:bool ->
  ?nchar_character_set_name:string ->
  ?network_type:string ->
  ?option_group_name:string ->
  ?parameter_group_name:string ->
  ?password:string ->
  ?performance_insights_enabled:bool ->
  ?performance_insights_kms_key_id:string ->
  ?performance_insights_retention_period:float ->
  ?port:float ->
  ?publicly_accessible:bool ->
  ?replica_mode:string ->
  ?replicate_source_db:string ->
  ?skip_final_snapshot:bool ->
  ?snapshot_identifier:string ->
  ?storage_encrypted:bool ->
  ?storage_throughput:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timezone:string ->
  ?username:string ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_db_instance__timeouts ->
  instance_class:string ->
  blue_green_update:aws_db_instance__blue_green_update list ->
  restore_to_point_in_time:
    aws_db_instance__restore_to_point_in_time list ->
  s3_import:aws_db_instance__s3_import list ->
  string ->
  unit
