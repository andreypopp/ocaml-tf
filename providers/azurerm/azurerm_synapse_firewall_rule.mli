(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_firewall_rule

val azurerm_synapse_firewall_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_firewall_rule

val yojson_of_azurerm_synapse_firewall_rule :
  azurerm_synapse_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
