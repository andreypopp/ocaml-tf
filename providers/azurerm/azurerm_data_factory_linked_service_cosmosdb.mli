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

type azurerm_data_factory_linked_service_cosmosdb

val azurerm_data_factory_linked_service_cosmosdb :
  ?account_endpoint:string prop ->
  ?account_key:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_cosmosdb

val yojson_of_azurerm_data_factory_linked_service_cosmosdb :
  azurerm_data_factory_linked_service_cosmosdb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_endpoint : string prop;
  account_key : string prop;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  database : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_endpoint:string prop ->
  ?account_key:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_endpoint:string prop ->
  ?account_key:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
