(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token

type azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key

type azurerm_data_factory_linked_service_azure_blob_storage__timeouts
type azurerm_data_factory_linked_service_azure_blob_storage

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  connection_string_insecure : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  sas_uri : string prop;
  service_endpoint : string prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  storage_kind : string prop;
  tenant_id : string prop;
  use_managed_identity : bool prop;
}

val azurerm_data_factory_linked_service_azure_blob_storage :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?connection_string_insecure:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?sas_uri:string prop ->
  ?service_endpoint:string prop ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?storage_kind:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_blob_storage__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_sas_token:
    azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token
    list ->
  service_principal_linked_key_vault_key:
    azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key
    list ->
  string ->
  t
