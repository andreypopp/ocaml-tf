(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type integration_runtime

val integration_runtime :
  ?parameters:(string * string prop) list ->
  name:string prop ->
  unit ->
  integration_runtime

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_custom_service

val azurerm_data_factory_linked_custom_service :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  unit ->
  azurerm_data_factory_linked_custom_service

val yojson_of_azurerm_data_factory_linked_custom_service :
  azurerm_data_factory_linked_custom_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  type_ : string prop;
  type_properties_json : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?integration_runtime:integration_runtime list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  string ->
  t Tf_core.resource
