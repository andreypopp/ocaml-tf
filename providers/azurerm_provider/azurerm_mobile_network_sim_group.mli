(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim_group__identity
type azurerm_mobile_network_sim_group__timeouts
type azurerm_mobile_network_sim_group

val azurerm_mobile_network_sim_group :
  ?encryption_key_url:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network_sim_group__timeouts ->
  location:string ->
  mobile_network_id:string ->
  name:string ->
  identity:azurerm_mobile_network_sim_group__identity list ->
  string ->
  unit
