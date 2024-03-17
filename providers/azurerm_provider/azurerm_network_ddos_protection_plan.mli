(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_ddos_protection_plan__timeouts
type azurerm_network_ddos_protection_plan

val azurerm_network_ddos_protection_plan :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_ddos_protection_plan__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
