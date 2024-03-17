(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_sql_database__key_vault_connection_string

type azurerm_data_factory_linked_service_azure_sql_database__key_vault_password

type azurerm_data_factory_linked_service_azure_sql_database__timeouts
type azurerm_data_factory_linked_service_azure_sql_database

val azurerm_data_factory_linked_service_azure_sql_database :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?connection_string:string ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?service_principal_id:string ->
  ?service_principal_key:string ->
  ?tenant_id:string ->
  ?use_managed_identity:bool ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_sql_database__timeouts ->
  data_factory_id:string ->
  name:string ->
  key_vault_connection_string:
    azurerm_data_factory_linked_service_azure_sql_database__key_vault_connection_string
    list ->
  key_vault_password:
    azurerm_data_factory_linked_service_azure_sql_database__key_vault_password
    list ->
  string ->
  unit
