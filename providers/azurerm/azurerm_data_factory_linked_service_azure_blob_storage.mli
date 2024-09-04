(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_vault_sas_token

val key_vault_sas_token :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_sas_token

type service_principal_linked_key_vault_key

val service_principal_linked_key_vault_key :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  service_principal_linked_key_vault_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_blob_storage

val azurerm_data_factory_linked_service_azure_blob_storage :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?connection_string_insecure:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?sas_uri:string prop ->
  ?service_endpoint:string prop ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?storage_kind:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?key_vault_sas_token:key_vault_sas_token list ->
  ?service_principal_linked_key_vault_key:
    service_principal_linked_key_vault_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_azure_blob_storage

val yojson_of_azurerm_data_factory_linked_service_azure_blob_storage :
  azurerm_data_factory_linked_service_azure_blob_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  connection_string : string prop;
  connection_string_insecure : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  sas_uri : string prop;
  service_endpoint : string prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  storage_kind : string prop;
  tenant_id : string prop;
  use_managed_identity : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?connection_string_insecure:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?sas_uri:string prop ->
  ?service_endpoint:string prop ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?storage_kind:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?key_vault_sas_token:key_vault_sas_token list ->
  ?service_principal_linked_key_vault_key:
    service_principal_linked_key_vault_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?connection_string_insecure:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?sas_uri:string prop ->
  ?service_endpoint:string prop ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?storage_kind:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?key_vault_sas_token:key_vault_sas_token list ->
  ?service_principal_linked_key_vault_key:
    service_principal_linked_key_vault_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
