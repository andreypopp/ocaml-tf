(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_vault_password

val key_vault_password :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_password

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_file_storage

val azurerm_data_factory_linked_service_azure_file_storage :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?file_share:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?user_id:string prop ->
  ?key_vault_password:key_vault_password list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_azure_file_storage

val yojson_of_azurerm_data_factory_linked_service_azure_file_storage :
  azurerm_data_factory_linked_service_azure_file_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  file_share : string prop;
  host : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  password : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?file_share:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?user_id:string prop ->
  ?key_vault_password:key_vault_password list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?file_share:string prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?user_id:string prop ->
  ?key_vault_password:key_vault_password list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
