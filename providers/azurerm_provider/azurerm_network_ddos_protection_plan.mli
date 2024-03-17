(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_ddos_protection_plan__timeouts
type azurerm_network_ddos_protection_plan

val azurerm_network_ddos_protection_plan :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_ddos_protection_plan__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
