(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_sql_server__key_vault_connection_string

type azurerm_data_factory_linked_service_sql_server__key_vault_password

type azurerm_data_factory_linked_service_sql_server__timeouts
type azurerm_data_factory_linked_service_sql_server

val azurerm_data_factory_linked_service_sql_server :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?connection_string:string ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?user_name:string ->
  ?timeouts:azurerm_data_factory_linked_service_sql_server__timeouts ->
  data_factory_id:string ->
  name:string ->
  key_vault_connection_string:
    azurerm_data_factory_linked_service_sql_server__key_vault_connection_string
    list ->
  key_vault_password:
    azurerm_data_factory_linked_service_sql_server__key_vault_password
    list ->
  string ->
  unit
