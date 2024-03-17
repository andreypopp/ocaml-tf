(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_cluster__timeouts
type azurerm_eventhub_cluster

val azurerm_eventhub_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_eventhub_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  unit
