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

type azurerm_data_factory_linked_service_web

val azurerm_data_factory_linked_service_web :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  unit ->
  azurerm_data_factory_linked_service_web

val yojson_of_azurerm_data_factory_linked_service_web :
  azurerm_data_factory_linked_service_web -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  password : string prop;
  url : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?password:string prop ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  string ->
  t Tf_core.resource
