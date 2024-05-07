(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_search

val azurerm_data_factory_linked_service_azure_search :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  search_service_key:string prop ->
  url:string prop ->
  unit ->
  azurerm_data_factory_linked_service_azure_search

val yojson_of_azurerm_data_factory_linked_service_azure_search :
  azurerm_data_factory_linked_service_azure_search -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  encrypted_credential : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  search_service_key : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  search_service_key:string prop ->
  url:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  search_service_key:string prop ->
  url:string prop ->
  string ->
  t Tf_core.resource
