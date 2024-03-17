(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub__capture_description__destination
type azurerm_eventhub__capture_description
type azurerm_eventhub__timeouts
type azurerm_eventhub

val azurerm_eventhub :
  ?id:string ->
  ?status:string ->
  ?timeouts:azurerm_eventhub__timeouts ->
  message_retention:float ->
  name:string ->
  namespace_name:string ->
  partition_count:float ->
  resource_group_name:string ->
  capture_description:azurerm_eventhub__capture_description list ->
  string ->
  unit
