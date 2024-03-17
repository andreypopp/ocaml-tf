(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_firewall_rule__timeouts
type azurerm_synapse_firewall_rule

type t = private {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
}

val azurerm_synapse_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_synapse_firewall_rule__timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
