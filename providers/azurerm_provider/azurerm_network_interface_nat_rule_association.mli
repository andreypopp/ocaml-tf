(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_nat_rule_association__timeouts
type azurerm_network_interface_nat_rule_association

val azurerm_network_interface_nat_rule_association :
  ?timeouts:azurerm_network_interface_nat_rule_association__timeouts ->
  ip_configuration_name:string ->
  nat_rule_id:string ->
  network_interface_id:string ->
  string ->
  unit
