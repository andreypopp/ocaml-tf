(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_file_storage__key_vault_password

type azurerm_data_factory_linked_service_azure_file_storage__timeouts
type azurerm_data_factory_linked_service_azure_file_storage

val azurerm_data_factory_linked_service_azure_file_storage :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?file_share:string ->
  ?host:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?password:string ->
  ?user_id:string ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_file_storage__timeouts ->
  connection_string:string ->
  data_factory_id:string ->
  name:string ->
  key_vault_password:
    azurerm_data_factory_linked_service_azure_file_storage__key_vault_password
    list ->
  string ->
  unit
