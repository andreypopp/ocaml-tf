(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_cluster__timeouts
type azurerm_eventhub_cluster

val azurerm_eventhub_cluster :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_eventhub_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
