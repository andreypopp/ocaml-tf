(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_servicebus_topic__timeouts
type azurerm_iothub_endpoint_servicebus_topic

val azurerm_iothub_endpoint_servicebus_topic :
  ?authentication_type:string prop ->
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?entity_path:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?timeouts:azurerm_iothub_endpoint_servicebus_topic__timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
