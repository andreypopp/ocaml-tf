(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type import

val import :
  ?storage_account_id:string prop ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  authentication_type:string prop ->
  storage_key:string prop ->
  storage_key_type:string prop ->
  storage_uri:string prop ->
  unit ->
  import

type long_term_retention_policy

val long_term_retention_policy :
  ?immutable_backups_enabled:bool prop ->
  ?monthly_retention:string prop ->
  ?week_of_year:float prop ->
  ?weekly_retention:string prop ->
  ?yearly_retention:string prop ->
  unit ->
  long_term_retention_policy

type short_term_retention_policy

val short_term_retention_policy :
  ?backup_interval_in_hours:float prop ->
  retention_days:float prop ->
  unit ->
  short_term_retention_policy

type threat_detection_policy

val threat_detection_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:string prop ->
  ?email_addresses:string prop list ->
  ?retention_days:float prop ->
  ?state:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  unit ->
  threat_detection_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_database

val azurerm_mssql_database :
  ?auto_pause_delay_in_minutes:float prop ->
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?creation_source_database_id:string prop ->
  ?elastic_pool_id:string prop ->
  ?enclave_type:string prop ->
  ?geo_backup_enabled:bool prop ->
  ?id:string prop ->
  ?ledger_enabled:bool prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_gb:float prop ->
  ?min_capacity:float prop ->
  ?read_replica_count:float prop ->
  ?read_scale:bool prop ->
  ?recover_database_id:string prop ->
  ?recovery_point_id:string prop ->
  ?restore_dropped_database_id:string prop ->
  ?restore_long_term_retention_backup_id:string prop ->
  ?restore_point_in_time:string prop ->
  ?sample_name:string prop ->
  ?secondary_type:string prop ->
  ?sku_name:string prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?transparent_data_encryption_enabled:bool prop ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:
    bool prop ->
  ?transparent_data_encryption_key_vault_key_id:string prop ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?import:import list ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?short_term_retention_policy:short_term_retention_policy list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  unit ->
  azurerm_mssql_database

val yojson_of_azurerm_mssql_database : azurerm_mssql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_pause_delay_in_minutes : float prop;
  collation : string prop;
  create_mode : string prop;
  creation_source_database_id : string prop;
  elastic_pool_id : string prop;
  enclave_type : string prop;
  geo_backup_enabled : bool prop;
  id : string prop;
  ledger_enabled : bool prop;
  license_type : string prop;
  maintenance_configuration_name : string prop;
  max_size_gb : float prop;
  min_capacity : float prop;
  name : string prop;
  read_replica_count : float prop;
  read_scale : bool prop;
  recover_database_id : string prop;
  recovery_point_id : string prop;
  restore_dropped_database_id : string prop;
  restore_long_term_retention_backup_id : string prop;
  restore_point_in_time : string prop;
  sample_name : string prop;
  secondary_type : string prop;
  server_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  transparent_data_encryption_enabled : bool prop;
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_pause_delay_in_minutes:float prop ->
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?creation_source_database_id:string prop ->
  ?elastic_pool_id:string prop ->
  ?enclave_type:string prop ->
  ?geo_backup_enabled:bool prop ->
  ?id:string prop ->
  ?ledger_enabled:bool prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_gb:float prop ->
  ?min_capacity:float prop ->
  ?read_replica_count:float prop ->
  ?read_scale:bool prop ->
  ?recover_database_id:string prop ->
  ?recovery_point_id:string prop ->
  ?restore_dropped_database_id:string prop ->
  ?restore_long_term_retention_backup_id:string prop ->
  ?restore_point_in_time:string prop ->
  ?sample_name:string prop ->
  ?secondary_type:string prop ->
  ?sku_name:string prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?transparent_data_encryption_enabled:bool prop ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:
    bool prop ->
  ?transparent_data_encryption_key_vault_key_id:string prop ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?import:import list ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?short_term_retention_policy:short_term_retention_policy list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?auto_pause_delay_in_minutes:float prop ->
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?creation_source_database_id:string prop ->
  ?elastic_pool_id:string prop ->
  ?enclave_type:string prop ->
  ?geo_backup_enabled:bool prop ->
  ?id:string prop ->
  ?ledger_enabled:bool prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_gb:float prop ->
  ?min_capacity:float prop ->
  ?read_replica_count:float prop ->
  ?read_scale:bool prop ->
  ?recover_database_id:string prop ->
  ?recovery_point_id:string prop ->
  ?restore_dropped_database_id:string prop ->
  ?restore_long_term_retention_backup_id:string prop ->
  ?restore_point_in_time:string prop ->
  ?sample_name:string prop ->
  ?secondary_type:string prop ->
  ?sku_name:string prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?transparent_data_encryption_enabled:bool prop ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:
    bool prop ->
  ?transparent_data_encryption_key_vault_key_id:string prop ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?import:import list ->
  ?long_term_retention_policy:long_term_retention_policy list ->
  ?short_term_retention_policy:short_term_retention_policy list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
