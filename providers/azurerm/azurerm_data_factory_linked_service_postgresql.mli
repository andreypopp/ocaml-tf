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

type azurerm_data_factory_linked_service_postgresql

val azurerm_data_factory_linked_service_postgresql :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_postgresql

val yojson_of_azurerm_data_factory_linked_service_postgresql :
  azurerm_data_factory_linked_service_postgresql -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
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
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
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
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
