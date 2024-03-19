(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule

val rule :
  ?description:string prop ->
  ?source_addresses:string prop list ->
  ?source_ip_groups:string prop list ->
  destination_addresses:string prop list ->
  destination_ports:string prop list ->
  name:string prop ->
  protocols:string prop list ->
  translated_address:string prop ->
  translated_port:string prop ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_firewall_nat_rule_collection

val azurerm_firewall_nat_rule_collection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  azure_firewall_name:string prop ->
  name:string prop ->
  priority:float prop ->
  resource_group_name:string prop ->
  rule:rule list ->
  unit ->
  azurerm_firewall_nat_rule_collection

val yojson_of_azurerm_firewall_nat_rule_collection :
  azurerm_firewall_nat_rule_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  azure_firewall_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  azure_firewall_name:string prop ->
  name:string prop ->
  priority:float prop ->
  resource_group_name:string prop ->
  rule:rule list ->
  string ->
  t
