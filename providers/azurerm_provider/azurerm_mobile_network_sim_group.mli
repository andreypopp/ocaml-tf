(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim_group__identity
type azurerm_mobile_network_sim_group__timeouts
type azurerm_mobile_network_sim_group

val azurerm_mobile_network_sim_group :
  ?encryption_key_url:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mobile_network_sim_group__timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  identity:azurerm_mobile_network_sim_group__identity list ->
  string ->
  unit
