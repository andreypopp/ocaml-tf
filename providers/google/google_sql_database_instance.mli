(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_address = {
  ip_address : string prop;  (** ip_address *)
  time_to_retire : string prop;  (** time_to_retire *)
  type_ : string prop; [@key "type"]  (** type *)
}

type server_ca_cert = {
  cert : string prop;  (** cert *)
  common_name : string prop;  (** common_name *)
  create_time : string prop;  (** create_time *)
  expiration_time : string prop;  (** expiration_time *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}

type clone

val clone :
  ?allocated_ip_range:string prop ->
  ?database_names:string prop list ->
  ?point_in_time:string prop ->
  ?preferred_zone:string prop ->
  source_instance_name:string prop ->
  unit ->
  clone

type replica_configuration

val replica_configuration :
  ?ca_certificate:string prop ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?connect_retry_interval:float prop ->
  ?dump_file_path:string prop ->
  ?failover_target:bool prop ->
  ?master_heartbeat_period:float prop ->
  ?password:string prop ->
  ?ssl_cipher:string prop ->
  ?username:string prop ->
  ?verify_server_certificate:bool prop ->
  unit ->
  replica_configuration

type restore_backup_context

val restore_backup_context :
  ?instance_id:string prop ->
  ?project:string prop ->
  backup_run_id:float prop ->
  unit ->
  restore_backup_context

type settings__active_directory_config

val settings__active_directory_config :
  domain:string prop -> unit -> settings__active_directory_config

type settings__advanced_machine_features

val settings__advanced_machine_features :
  ?threads_per_core:float prop ->
  unit ->
  settings__advanced_machine_features

type settings__backup_configuration__backup_retention_settings

val settings__backup_configuration__backup_retention_settings :
  ?retention_unit:string prop ->
  retained_backups:float prop ->
  unit ->
  settings__backup_configuration__backup_retention_settings

type settings__backup_configuration

val settings__backup_configuration :
  ?binary_log_enabled:bool prop ->
  ?enabled:bool prop ->
  ?location:string prop ->
  ?point_in_time_recovery_enabled:bool prop ->
  ?start_time:string prop ->
  ?transaction_log_retention_days:float prop ->
  ?backup_retention_settings:
    settings__backup_configuration__backup_retention_settings list ->
  unit ->
  settings__backup_configuration

type settings__data_cache_config

val settings__data_cache_config :
  ?data_cache_enabled:bool prop ->
  unit ->
  settings__data_cache_config

type settings__database_flags

val settings__database_flags :
  name:string prop ->
  value:string prop ->
  unit ->
  settings__database_flags

type settings__deny_maintenance_period

val settings__deny_maintenance_period :
  end_date:string prop ->
  start_date:string prop ->
  time:string prop ->
  unit ->
  settings__deny_maintenance_period

type settings__insights_config

val settings__insights_config :
  ?query_insights_enabled:bool prop ->
  ?query_plans_per_minute:float prop ->
  ?query_string_length:float prop ->
  ?record_application_tags:bool prop ->
  ?record_client_address:bool prop ->
  unit ->
  settings__insights_config

type settings__ip_configuration__authorized_networks

val settings__ip_configuration__authorized_networks :
  ?expiration_time:string prop ->
  ?name:string prop ->
  value:string prop ->
  unit ->
  settings__ip_configuration__authorized_networks

type settings__ip_configuration__psc_config

val settings__ip_configuration__psc_config :
  ?allowed_consumer_projects:string prop list ->
  ?psc_enabled:bool prop ->
  unit ->
  settings__ip_configuration__psc_config

type settings__ip_configuration

val settings__ip_configuration :
  ?allocated_ip_range:string prop ->
  ?enable_private_path_for_google_cloud_services:bool prop ->
  ?ipv4_enabled:bool prop ->
  ?private_network:string prop ->
  ?require_ssl:bool prop ->
  ?ssl_mode:string prop ->
  authorized_networks:
    settings__ip_configuration__authorized_networks list ->
  psc_config:settings__ip_configuration__psc_config list ->
  unit ->
  settings__ip_configuration

type settings__location_preference

val settings__location_preference :
  ?follow_gae_application:string prop ->
  ?secondary_zone:string prop ->
  ?zone:string prop ->
  unit ->
  settings__location_preference

type settings__maintenance_window

val settings__maintenance_window :
  ?day:float prop ->
  ?hour:float prop ->
  ?update_track:string prop ->
  unit ->
  settings__maintenance_window

type settings__password_validation_policy

val settings__password_validation_policy :
  ?complexity:string prop ->
  ?disallow_username_substring:bool prop ->
  ?min_length:float prop ->
  ?password_change_interval:string prop ->
  ?reuse_interval:float prop ->
  enable_password_policy:bool prop ->
  unit ->
  settings__password_validation_policy

type settings__sql_server_audit_config

val settings__sql_server_audit_config :
  ?bucket:string prop ->
  ?retention_interval:string prop ->
  ?upload_interval:string prop ->
  unit ->
  settings__sql_server_audit_config

type settings

val settings :
  ?activation_policy:string prop ->
  ?availability_type:string prop ->
  ?collation:string prop ->
  ?connector_enforcement:string prop ->
  ?deletion_protection_enabled:bool prop ->
  ?disk_autoresize:bool prop ->
  ?disk_autoresize_limit:float prop ->
  ?disk_size:float prop ->
  ?disk_type:string prop ->
  ?edition:string prop ->
  ?pricing_plan:string prop ->
  ?time_zone:string prop ->
  ?user_labels:(string * string prop) list ->
  ?active_directory_config:settings__active_directory_config list ->
  ?advanced_machine_features:settings__advanced_machine_features list ->
  ?backup_configuration:settings__backup_configuration list ->
  ?data_cache_config:settings__data_cache_config list ->
  ?deny_maintenance_period:settings__deny_maintenance_period list ->
  ?insights_config:settings__insights_config list ->
  ?ip_configuration:settings__ip_configuration list ->
  ?location_preference:settings__location_preference list ->
  ?maintenance_window:settings__maintenance_window list ->
  ?password_validation_policy:
    settings__password_validation_policy list ->
  ?sql_server_audit_config:settings__sql_server_audit_config list ->
  tier:string prop ->
  database_flags:settings__database_flags list ->
  unit ->
  settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_sql_database_instance

val google_sql_database_instance :
  ?deletion_protection:bool prop ->
  ?encryption_key_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?maintenance_version:string prop ->
  ?master_instance_name:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?root_password:string prop ->
  ?clone:clone list ->
  ?replica_configuration:replica_configuration list ->
  ?restore_backup_context:restore_backup_context list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  database_version:string prop ->
  unit ->
  google_sql_database_instance

val yojson_of_google_sql_database_instance :
  google_sql_database_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  available_maintenance_versions : string list prop;
  connection_name : string prop;
  database_version : string prop;
  deletion_protection : bool prop;
  dns_name : string prop;
  encryption_key_name : string prop;
  first_ip_address : string prop;
  id : string prop;
  instance_type : string prop;
  ip_address : ip_address list prop;
  maintenance_version : string prop;
  master_instance_name : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  psc_service_attachment_link : string prop;
  public_ip_address : string prop;
  region : string prop;
  root_password : string prop;
  self_link : string prop;
  server_ca_cert : server_ca_cert list prop;
  service_account_email_address : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?encryption_key_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?maintenance_version:string prop ->
  ?master_instance_name:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?root_password:string prop ->
  ?clone:clone list ->
  ?replica_configuration:replica_configuration list ->
  ?restore_backup_context:restore_backup_context list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  database_version:string prop ->
  string ->
  t

val make :
  ?deletion_protection:bool prop ->
  ?encryption_key_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?maintenance_version:string prop ->
  ?master_instance_name:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?root_password:string prop ->
  ?clone:clone list ->
  ?replica_configuration:replica_configuration list ->
  ?restore_backup_context:restore_backup_context list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  database_version:string prop ->
  string ->
  t Tf_core.resource
