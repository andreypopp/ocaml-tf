(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_function__key_vault_key
type azurerm_data_factory_linked_service_azure_function__timeouts
type azurerm_data_factory_linked_service_azure_function

val azurerm_data_factory_linked_service_azure_function :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?key:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_function__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  key_vault_key:
    azurerm_data_factory_linked_service_azure_function__key_vault_key
    list ->
  string ->
  unit
