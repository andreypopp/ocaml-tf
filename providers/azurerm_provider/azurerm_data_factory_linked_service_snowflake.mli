(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_snowflake__key_vault_password
type azurerm_data_factory_linked_service_snowflake__timeouts
type azurerm_data_factory_linked_service_snowflake

val azurerm_data_factory_linked_service_snowflake :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_linked_service_snowflake__timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_password:
    azurerm_data_factory_linked_service_snowflake__key_vault_password
    list ->
  string ->
  unit
