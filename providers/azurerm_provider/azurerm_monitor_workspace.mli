(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_workspace__timeouts
type azurerm_monitor_workspace

val azurerm_monitor_workspace :
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
