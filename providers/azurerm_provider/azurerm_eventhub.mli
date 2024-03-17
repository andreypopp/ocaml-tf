(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub__capture_description__destination
type azurerm_eventhub__capture_description
type azurerm_eventhub__timeouts
type azurerm_eventhub

val azurerm_eventhub :
  ?id:string prop ->
  ?status:string prop ->
  ?timeouts:azurerm_eventhub__timeouts ->
  message_retention:float prop ->
  name:string prop ->
  namespace_name:string prop ->
  partition_count:float prop ->
  resource_group_name:string prop ->
  capture_description:azurerm_eventhub__capture_description list ->
  string ->
  unit
