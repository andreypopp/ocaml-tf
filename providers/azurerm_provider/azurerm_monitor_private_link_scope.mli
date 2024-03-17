(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_private_link_scope__timeouts
type azurerm_monitor_private_link_scope

val azurerm_monitor_private_link_scope :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_monitor_private_link_scope__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
