(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_resource_bridge_appliance__identity
type azurerm_arc_resource_bridge_appliance__timeouts
type azurerm_arc_resource_bridge_appliance

val azurerm_arc_resource_bridge_appliance :
  ?id:string ->
  ?public_key_base64:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_arc_resource_bridge_appliance__timeouts ->
  distro:string ->
  infrastructure_provider:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_arc_resource_bridge_appliance__identity list ->
  string ->
  unit
