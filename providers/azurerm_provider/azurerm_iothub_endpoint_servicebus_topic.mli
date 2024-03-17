(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_servicebus_topic__timeouts
type azurerm_iothub_endpoint_servicebus_topic

val azurerm_iothub_endpoint_servicebus_topic :
  ?authentication_type:string ->
  ?connection_string:string ->
  ?endpoint_uri:string ->
  ?entity_path:string ->
  ?id:string ->
  ?identity_id:string ->
  ?timeouts:azurerm_iothub_endpoint_servicebus_topic__timeouts ->
  iothub_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
