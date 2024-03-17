(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_private_link_scope__timeouts
type azurerm_monitor_private_link_scope

val azurerm_monitor_private_link_scope :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_private_link_scope__timeouts ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
