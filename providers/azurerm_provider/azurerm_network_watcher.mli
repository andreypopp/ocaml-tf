(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_watcher__timeouts
type azurerm_network_watcher

val azurerm_network_watcher :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_watcher__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
