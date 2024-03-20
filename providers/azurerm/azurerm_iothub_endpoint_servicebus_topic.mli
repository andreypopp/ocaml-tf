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

type azurerm_iothub_endpoint_servicebus_topic

val azurerm_iothub_endpoint_servicebus_topic :
  ?authentication_type:string prop ->
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?entity_path:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_endpoint_servicebus_topic

val yojson_of_azurerm_iothub_endpoint_servicebus_topic :
  azurerm_iothub_endpoint_servicebus_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_type : string prop;
  connection_string : string prop;
  endpoint_uri : string prop;
  entity_path : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_type:string prop ->
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?entity_path:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?authentication_type:string prop ->
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?entity_path:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
