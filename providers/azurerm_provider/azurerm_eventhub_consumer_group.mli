(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_consumer_group__timeouts
type azurerm_eventhub_consumer_group

val azurerm_eventhub_consumer_group :
  ?user_metadata:string ->
  ?timeouts:azurerm_eventhub_consumer_group__timeouts ->
  eventhub_name:string ->
  name:string ->
  namespace_name:string ->
  resource_group_name:string ->
  string ->
  unit
