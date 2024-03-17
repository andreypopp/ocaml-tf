(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_machine__assessment__schedule
type azurerm_mssql_virtual_machine__assessment
type azurerm_mssql_virtual_machine__auto_backup__manual_schedule
type azurerm_mssql_virtual_machine__auto_backup
type azurerm_mssql_virtual_machine__auto_patching
type azurerm_mssql_virtual_machine__key_vault_credential
type azurerm_mssql_virtual_machine__sql_instance

type azurerm_mssql_virtual_machine__storage_configuration__data_settings

type azurerm_mssql_virtual_machine__storage_configuration__log_settings

type azurerm_mssql_virtual_machine__storage_configuration__temp_db_settings

type azurerm_mssql_virtual_machine__storage_configuration
type azurerm_mssql_virtual_machine__timeouts
type azurerm_mssql_virtual_machine__wsfc_domain_credential
type azurerm_mssql_virtual_machine

val azurerm_mssql_virtual_machine :
  ?id:string ->
  ?r_services_enabled:bool ->
  ?sql_connectivity_port:float ->
  ?sql_connectivity_type:string ->
  ?sql_connectivity_update_password:string ->
  ?sql_connectivity_update_username:string ->
  ?sql_license_type:string ->
  ?sql_virtual_machine_group_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mssql_virtual_machine__timeouts ->
  virtual_machine_id:string ->
  assessment:azurerm_mssql_virtual_machine__assessment list ->
  auto_backup:azurerm_mssql_virtual_machine__auto_backup list ->
  auto_patching:azurerm_mssql_virtual_machine__auto_patching list ->
  key_vault_credential:
    azurerm_mssql_virtual_machine__key_vault_credential list ->
  sql_instance:azurerm_mssql_virtual_machine__sql_instance list ->
  storage_configuration:
    azurerm_mssql_virtual_machine__storage_configuration list ->
  wsfc_domain_credential:
    azurerm_mssql_virtual_machine__wsfc_domain_credential list ->
  string ->
  unit
