(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_database__identity
type azurerm_mssql_database__import
type azurerm_mssql_database__long_term_retention_policy
type azurerm_mssql_database__short_term_retention_policy
type azurerm_mssql_database__threat_detection_policy
type azurerm_mssql_database__timeouts
type azurerm_mssql_database

val azurerm_mssql_database :
  ?auto_pause_delay_in_minutes:float ->
  ?collation:string ->
  ?create_mode:string ->
  ?creation_source_database_id:string ->
  ?elastic_pool_id:string ->
  ?enclave_type:string ->
  ?geo_backup_enabled:bool ->
  ?id:string ->
  ?ledger_enabled:bool ->
  ?license_type:string ->
  ?maintenance_configuration_name:string ->
  ?max_size_gb:float ->
  ?min_capacity:float ->
  ?read_replica_count:float ->
  ?read_scale:bool ->
  ?recover_database_id:string ->
  ?recovery_point_id:string ->
  ?restore_dropped_database_id:string ->
  ?restore_long_term_retention_backup_id:string ->
  ?restore_point_in_time:string ->
  ?sample_name:string ->
  ?sku_name:string ->
  ?storage_account_type:string ->
  ?tags:(string * string) list ->
  ?transparent_data_encryption_enabled:bool ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:bool ->
  ?transparent_data_encryption_key_vault_key_id:string ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_mssql_database__timeouts ->
  name:string ->
  server_id:string ->
  identity:azurerm_mssql_database__identity list ->
  import:azurerm_mssql_database__import list ->
  long_term_retention_policy:
    azurerm_mssql_database__long_term_retention_policy list ->
  short_term_retention_policy:
    azurerm_mssql_database__short_term_retention_policy list ->
  threat_detection_policy:
    azurerm_mssql_database__threat_detection_policy list ->
  string ->
  unit
