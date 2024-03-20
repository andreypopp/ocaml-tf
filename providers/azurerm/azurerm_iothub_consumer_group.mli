(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_iothub_consumer_group

val azurerm_iothub_consumer_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_endpoint_name:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_consumer_group

val yojson_of_azurerm_iothub_consumer_group :
  azurerm_iothub_consumer_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  eventhub_endpoint_name : string prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_endpoint_name:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_endpoint_name:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
