(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_firewall_rule__timeouts
type azurerm_synapse_firewall_rule

val azurerm_synapse_firewall_rule :
  ?timeouts:azurerm_synapse_firewall_rule__timeouts ->
  end_ip_address:string ->
  name:string ->
  start_ip_address:string ->
  synapse_workspace_id:string ->
  string ->
  unit
