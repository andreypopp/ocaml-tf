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
[@@deriving yojson_of]

type aws_db_instance__master_user_secret = {
  kms_key_id : string;  (** kms_key_id *)
  secret_arn : string;  (** secret_arn *)
  secret_status : string;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_db_instance

val aws_db_instance :
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?copy_tags_to_snapshot:bool ->
  ?custom_iam_instance_profile:string ->
  ?customer_owned_ip_enabled:bool ->
  ?delete_automated_backups:bool ->
  ?deletion_protection:bool ->
  ?domain:string ->
  ?domain_auth_secret_arn:string ->
  ?domain_dns_ips:string list ->
  ?domain_iam_role_name:string ->
  ?domain_ou:string ->
  ?enabled_cloudwatch_logs_exports:string list ->
  ?final_snapshot_identifier:string ->
  ?iam_database_authentication_enabled:bool ->
  ?manage_master_user_password:bool ->
  ?max_allocated_storage:float ->
  ?monitoring_interval:float ->
  ?password:string ->
  ?performance_insights_enabled:bool ->
  ?publicly_accessible:bool ->
  ?replicate_source_db:string ->
  ?skip_final_snapshot:bool ->
  ?storage_encrypted:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_db_instance__timeouts ->
  instance_class:string ->
  blue_green_update:aws_db_instance__blue_green_update list ->
  restore_to_point_in_time:
    aws_db_instance__restore_to_point_in_time list ->
  s3_import:aws_db_instance__s3_import list ->
  string ->
  unit
