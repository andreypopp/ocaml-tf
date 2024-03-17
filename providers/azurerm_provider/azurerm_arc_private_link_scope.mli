(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_private_link_scope__timeouts
type azurerm_arc_private_link_scope

val azurerm_arc_private_link_scope :
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_arc_private_link_scope__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
