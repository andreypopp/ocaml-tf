(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_database__identity
type azurerm_mssql_database__import
type azurerm_mssql_database__long_term_retention_policy
type azurerm_mssql_database__short_term_retention_policy
type azurerm_mssql_database__threat_detection_policy
type azurerm_mssql_database__timeouts
type azurerm_mssql_database

type t = private {
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
  ?sku_name:string prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?transparent_data_encryption_enabled:bool prop ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:
    bool prop ->
  ?transparent_data_encryption_key_vault_key_id:string prop ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_mssql_database__timeouts ->
  name:string prop ->
  server_id:string prop ->
  identity:azurerm_mssql_database__identity list ->
  import:azurerm_mssql_database__import list ->
  long_term_retention_policy:
    azurerm_mssql_database__long_term_retention_policy list ->
  short_term_retention_policy:
    azurerm_mssql_database__short_term_retention_policy list ->
  threat_detection_policy:
    azurerm_mssql_database__threat_detection_policy list ->
  string ->
  t
