(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic_authentication

val basic_authentication :
  password:string prop ->
  username:string prop ->
  unit ->
  basic_authentication

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_odata

val azurerm_data_factory_linked_service_odata :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  basic_authentication:basic_authentication list ->
  unit ->
  azurerm_data_factory_linked_service_odata

val yojson_of_azurerm_data_factory_linked_service_odata :
  azurerm_data_factory_linked_service_odata -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
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
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  basic_authentication:basic_authentication list ->
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
  url:string prop ->
  basic_authentication:basic_authentication list ->
  string ->
  t Tf_core.resource
