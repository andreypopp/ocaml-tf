(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_watcher__timeouts
type azurerm_network_watcher

val azurerm_network_watcher :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_watcher__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
