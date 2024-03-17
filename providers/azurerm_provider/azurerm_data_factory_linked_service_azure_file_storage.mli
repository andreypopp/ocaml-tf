(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_file_storage__key_vault_password

type azurerm_data_factory_linked_service_azure_file_storage__timeouts
type azurerm_data_factory_linked_service_azure_file_storage

val azurerm_data_factory_linked_service_azure_file_storage :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?file_share:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?password:string prop ->
  ?user_id:string prop ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_file_storage__timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_password:
    azurerm_data_factory_linked_service_azure_file_storage__key_vault_password
    list ->
  string ->
  unit
