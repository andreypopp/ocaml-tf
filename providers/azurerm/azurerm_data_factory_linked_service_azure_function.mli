(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type key_vault_key

val key_vault_key :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_function

val azurerm_data_factory_linked_service_azure_function :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?key:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  key_vault_key:key_vault_key list ->
  unit ->
  azurerm_data_factory_linked_service_azure_function

val yojson_of_azurerm_data_factory_linked_service_azure_function :
  azurerm_data_factory_linked_service_azure_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  key : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?key:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  key_vault_key:key_vault_key list ->
  string ->
  t
