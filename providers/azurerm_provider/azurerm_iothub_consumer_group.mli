(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_consumer_group__timeouts
type azurerm_iothub_consumer_group

val azurerm_iothub_consumer_group :
  ?id:string ->
  ?timeouts:azurerm_iothub_consumer_group__timeouts ->
  eventhub_endpoint_name:string ->
  iothub_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
