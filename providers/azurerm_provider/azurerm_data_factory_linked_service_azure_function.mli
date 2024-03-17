(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_function__key_vault_key
type azurerm_data_factory_linked_service_azure_function__timeouts
type azurerm_data_factory_linked_service_azure_function

val azurerm_data_factory_linked_service_azure_function :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?key:string ->
  ?parameters:(string * string) list ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_function__timeouts ->
  data_factory_id:string ->
  name:string ->
  url:string ->
  key_vault_key:
    azurerm_data_factory_linked_service_azure_function__key_vault_key
    list ->
  string ->
  unit
