(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_eventhub__timeouts
type azurerm_iothub_endpoint_eventhub

val azurerm_iothub_endpoint_eventhub :
  ?authentication_type:string ->
  ?connection_string:string ->
  ?endpoint_uri:string ->
  ?entity_path:string ->
  ?identity_id:string ->
  ?timeouts:azurerm_iothub_endpoint_eventhub__timeouts ->
  iothub_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
