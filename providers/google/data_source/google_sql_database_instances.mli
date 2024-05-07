(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instances__settings__sql_server_audit_config = {
  bucket : string prop;  (** bucket *)
  retention_interval : string prop;  (** retention_interval *)
  upload_interval : string prop;  (** upload_interval *)
}

type instances__settings__password_validation_policy = {
  complexity : string prop;  (** complexity *)
  disallow_username_substring : bool prop;
      (** disallow_username_substring *)
  enable_password_policy : bool prop;  (** enable_password_policy *)
  min_length : float prop;  (** min_length *)
  password_change_interval : string prop;
      (** password_change_interval *)
  reuse_interval : float prop;  (** reuse_interval *)
}

type instances__settings__maintenance_window = {
  day : float prop;  (** day *)
  hour : float prop;  (** hour *)
  update_track : string prop;  (** update_track *)
}

type instances__settings__location_preference = {
  follow_gae_application : string prop;
      (** follow_gae_application *)
  secondary_zone : string prop;  (** secondary_zone *)
  zone : string prop;  (** zone *)
}

type instances__settings__ip_configuration__psc_config = {
  allowed_consumer_projects : string prop list;
      (** allowed_consumer_projects *)
  psc_enabled : bool prop;  (** psc_enabled *)
}

type instances__settings__ip_configuration__authorized_networks = {
  expiration_time : string prop;  (** expiration_time *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type instances__settings__ip_configuration = {
  allocated_ip_range : string prop;  (** allocated_ip_range *)
  authorized_networks :
    instances__settings__ip_configuration__authorized_networks list;
      (** authorized_networks *)
  enable_private_path_for_google_cloud_services : bool prop;
      (** enable_private_path_for_google_cloud_services *)
  ipv4_enabled : bool prop;  (** ipv4_enabled *)
  private_network : string prop;  (** private_network *)
  psc_config :
    instances__settings__ip_configuration__psc_config list;
      (** psc_config *)
  require_ssl : bool prop;  (** require_ssl *)
  ssl_mode : string prop;  (** ssl_mode *)
}

type instances__settings__insights_config = {
  query_insights_enabled : bool prop;  (** query_insights_enabled *)
  query_plans_per_minute : float prop;  (** query_plans_per_minute *)
  query_string_length : float prop;  (** query_string_length *)
  record_application_tags : bool prop;
      (** record_application_tags *)
  record_client_address : bool prop;  (** record_client_address *)
}

type instances__settings__deny_maintenance_period = {
  end_date : string prop;  (** end_date *)
  start_date : string prop;  (** start_date *)
  time : string prop;  (** time *)
}

type instances__settings__database_flags = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type instances__settings__data_cache_config = {
  data_cache_enabled : bool prop;  (** data_cache_enabled *)
}

type instances__settings__backup_configuration__backup_retention_settings = {
  retained_backups : float prop;  (** retained_backups *)
  retention_unit : string prop;  (** retention_unit *)
}

type instances__settings__backup_configuration = {
  backup_retention_settings :
    instances__settings__backup_configuration__backup_retention_settings
    list;
      (** backup_retention_settings *)
  binary_log_enabled : bool prop;  (** binary_log_enabled *)
  enabled : bool prop;  (** enabled *)
  location : string prop;  (** location *)
  point_in_time_recovery_enabled : bool prop;
      (** point_in_time_recovery_enabled *)
  start_time : string prop;  (** start_time *)
  transaction_log_retention_days : float prop;
      (** transaction_log_retention_days *)
}

type instances__settings__advanced_machine_features = {
  threads_per_core : float prop;  (** threads_per_core *)
}

type instances__settings__active_directory_config = {
  domain : string prop;  (** domain *)
}

type instances__settings = {
  activation_policy : string prop;  (** activation_policy *)
  active_directory_config :
    instances__settings__active_directory_config list;
      (** active_directory_config *)
  advanced_machine_features :
    instances__settings__advanced_machine_features list;
      (** advanced_machine_features *)
  availability_type : string prop;  (** availability_type *)
  backup_configuration :
    instances__settings__backup_configuration list;
      (** backup_configuration *)
  collation : string prop;  (** collation *)
  connector_enforcement : string prop;  (** connector_enforcement *)
  data_cache_config : instances__settings__data_cache_config list;
      (** data_cache_config *)
  database_flags : instances__settings__database_flags list;
      (** database_flags *)
  deletion_protection_enabled : bool prop;
      (** deletion_protection_enabled *)
  deny_maintenance_period :
    instances__settings__deny_maintenance_period list;
      (** deny_maintenance_period *)
  disk_autoresize : bool prop;  (** disk_autoresize *)
  disk_autoresize_limit : float prop;  (** disk_autoresize_limit *)
  disk_size : float prop;  (** disk_size *)
  disk_type : string prop;  (** disk_type *)
  edition : string prop;  (** edition *)
  insights_config : instances__settings__insights_config list;
      (** insights_config *)
  ip_configuration : instances__settings__ip_configuration list;
      (** ip_configuration *)
  location_preference :
    instances__settings__location_preference list;
      (** location_preference *)
  maintenance_window : instances__settings__maintenance_window list;
      (** maintenance_window *)
  password_validation_policy :
    instances__settings__password_validation_policy list;
      (** password_validation_policy *)
  pricing_plan : string prop;  (** pricing_plan *)
  sql_server_audit_config :
    instances__settings__sql_server_audit_config list;
      (** sql_server_audit_config *)
  tier : string prop;  (** tier *)
  time_zone : string prop;  (** time_zone *)
  user_labels : (string * string prop) list;  (** user_labels *)
  version : float prop;  (** version *)
}

type instances__server_ca_cert = {
  cert : string prop;  (** cert *)
  common_name : string prop;  (** common_name *)
  create_time : string prop;  (** create_time *)
  expiration_time : string prop;  (** expiration_time *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}

type instances__restore_backup_context = {
  backup_run_id : float prop;  (** backup_run_id *)
  instance_id : string prop;  (** instance_id *)
  project : string prop;  (** project *)
}

type instances__replica_configuration = {
  ca_certificate : string prop;  (** ca_certificate *)
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  connect_retry_interval : float prop;  (** connect_retry_interval *)
  dump_file_path : string prop;  (** dump_file_path *)
  failover_target : bool prop;  (** failover_target *)
  master_heartbeat_period : float prop;
      (** master_heartbeat_period *)
  password : string prop;  (** password *)
  ssl_cipher : string prop;  (** ssl_cipher *)
  username : string prop;  (** username *)
  verify_server_certificate : bool prop;
      (** verify_server_certificate *)
}

type instances__ip_address = {
  ip_address : string prop;  (** ip_address *)
  time_to_retire : string prop;  (** time_to_retire *)
  type_ : string prop; [@key "type"]  (** type *)
}

type instances__clone = {
  allocated_ip_range : string prop;  (** allocated_ip_range *)
  database_names : string prop list;  (** database_names *)
  point_in_time : string prop;  (** point_in_time *)
  preferred_zone : string prop;  (** preferred_zone *)
  source_instance_name : string prop;  (** source_instance_name *)
}

type instances = {
  available_maintenance_versions : string prop list;
      (** available_maintenance_versions *)
  clone : instances__clone list;  (** clone *)
  connection_name : string prop;  (** connection_name *)
  database_version : string prop;  (** database_version *)
  deletion_protection : bool prop;  (** deletion_protection *)
  dns_name : string prop;  (** dns_name *)
  encryption_key_name : string prop;  (** encryption_key_name *)
  first_ip_address : string prop;  (** first_ip_address *)
  instance_type : string prop;  (** instance_type *)
  ip_address : instances__ip_address list;  (** ip_address *)
  maintenance_version : string prop;  (** maintenance_version *)
  master_instance_name : string prop;  (** master_instance_name *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  project : string prop;  (** project *)
  psc_service_attachment_link : string prop;
      (** psc_service_attachment_link *)
  public_ip_address : string prop;  (** public_ip_address *)
  region : string prop;  (** region *)
  replica_configuration : instances__replica_configuration list;
      (** replica_configuration *)
  restore_backup_context : instances__restore_backup_context list;
      (** restore_backup_context *)
  root_password : string prop;  (** root_password *)
  self_link : string prop;  (** self_link *)
  server_ca_cert : instances__server_ca_cert list;
      (** server_ca_cert *)
  service_account_email_address : string prop;
      (** service_account_email_address *)
  settings : instances__settings list;  (** settings *)
}

type google_sql_database_instances

val google_sql_database_instances :
  ?database_version:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?state:string prop ->
  ?tier:string prop ->
  ?zone:string prop ->
  unit ->
  google_sql_database_instances

val yojson_of_google_sql_database_instances :
  google_sql_database_instances -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  database_version : string prop;
  id : string prop;
  instances : instances list prop;
  project : string prop;
  region : string prop;
  state : string prop;
  tier : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_version:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?state:string prop ->
  ?tier:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?database_version:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?state:string prop ->
  ?tier:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
