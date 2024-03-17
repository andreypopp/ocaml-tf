(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token

type azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key

type azurerm_data_factory_linked_service_azure_blob_storage__timeouts
type azurerm_data_factory_linked_service_azure_blob_storage

val azurerm_data_factory_linked_service_azure_blob_storage :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?connection_string:string ->
  ?connection_string_insecure:string ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?sas_uri:string ->
  ?service_endpoint:string ->
  ?service_principal_id:string ->
  ?service_principal_key:string ->
  ?storage_kind:string ->
  ?tenant_id:string ->
  ?use_managed_identity:bool ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_blob_storage__timeouts ->
  data_factory_id:string ->
  name:string ->
  key_vault_sas_token:
    azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token
    list ->
  service_principal_linked_key_vault_key:
    azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key
    list ->
  string ->
  unit
