(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_resource_bridge_appliance__identity
type azurerm_arc_resource_bridge_appliance__timeouts
type azurerm_arc_resource_bridge_appliance

val azurerm_arc_resource_bridge_appliance :
  ?id:string prop ->
  ?public_key_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_arc_resource_bridge_appliance__timeouts ->
  distro:string prop ->
  infrastructure_provider:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_arc_resource_bridge_appliance__identity list ->
  string ->
  unit
