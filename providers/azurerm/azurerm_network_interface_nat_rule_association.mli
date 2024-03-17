(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_nat_rule_association__timeouts
type azurerm_network_interface_nat_rule_association

type t = private {
  id : string prop;
  ip_configuration_name : string prop;
  nat_rule_id : string prop;
  network_interface_id : string prop;
}

val azurerm_network_interface_nat_rule_association :
  ?id:string prop ->
  ?timeouts:azurerm_network_interface_nat_rule_association__timeouts ->
  ip_configuration_name:string prop ->
  nat_rule_id:string prop ->
  network_interface_id:string prop ->
  string ->
  t
