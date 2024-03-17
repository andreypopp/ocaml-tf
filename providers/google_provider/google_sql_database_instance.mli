(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_database_instance__clone
type google_sql_database_instance__replica_configuration
type google_sql_database_instance__restore_backup_context
type google_sql_database_instance__settings__active_directory_config
type google_sql_database_instance__settings__advanced_machine_features

type google_sql_database_instance__settings__backup_configuration__backup_retention_settings

type google_sql_database_instance__settings__backup_configuration
type google_sql_database_instance__settings__data_cache_config
type google_sql_database_instance__settings__database_flags
type google_sql_database_instance__settings__deny_maintenance_period
type google_sql_database_instance__settings__insights_config

type google_sql_database_instance__settings__ip_configuration__authorized_networks

type google_sql_database_instance__settings__ip_configuration__psc_config

type google_sql_database_instance__settings__ip_configuration
type google_sql_database_instance__settings__location_preference
type google_sql_database_instance__settings__maintenance_window

type google_sql_database_instance__settings__password_validation_policy

type google_sql_database_instance__settings__sql_server_audit_config
type google_sql_database_instance__settings
type google_sql_database_instance__timeouts

type google_sql_database_instance__ip_address = {
  ip_address : string;  (** ip_address *)
  time_to_retire : string;  (** time_to_retire *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_sql_database_instance__server_ca_cert = {
  cert : string;  (** cert *)
  common_name : string;  (** common_name *)
  create_time : string;  (** create_time *)
  expiration_time : string;  (** expiration_time *)
  sha1_fingerprint : string;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_sql_database_instance

val google_sql_database_instance :
  ?deletion_protection:bool ->
  ?root_password:string ->
  ?timeouts:google_sql_database_instance__timeouts ->
  database_version:string ->
  clone:google_sql_database_instance__clone list ->
  replica_configuration:
    google_sql_database_instance__replica_configuration list ->
  restore_backup_context:
    google_sql_database_instance__restore_backup_context list ->
  settings:google_sql_database_instance__settings list ->
  string ->
  unit
