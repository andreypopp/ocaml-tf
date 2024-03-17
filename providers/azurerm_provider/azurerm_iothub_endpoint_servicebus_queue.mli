(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_servicebus_queue__timeouts
type azurerm_iothub_endpoint_servicebus_queue

val azurerm_iothub_endpoint_servicebus_queue :
  ?authentication_type:string prop ->
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?entity_path:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?timeouts:azurerm_iothub_endpoint_servicebus_queue__timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
