(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_sql_database__key_vault_connection_string

type azurerm_data_factory_linked_service_azure_sql_database__key_vault_password

type azurerm_data_factory_linked_service_azure_sql_database__timeouts
type azurerm_data_factory_linked_service_azure_sql_database

val azurerm_data_factory_linked_service_azure_sql_database :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_sql_database__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_connection_string:
    azurerm_data_factory_linked_service_azure_sql_database__key_vault_connection_string
    list ->
  key_vault_password:
    azurerm_data_factory_linked_service_azure_sql_database__key_vault_password
    list ->
  string ->
  unit
