(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_network_interface_nat_rule_association

val azurerm_network_interface_nat_rule_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ip_configuration_name:string prop ->
  nat_rule_id:string prop ->
  network_interface_id:string prop ->
  unit ->
  azurerm_network_interface_nat_rule_association

val yojson_of_azurerm_network_interface_nat_rule_association :
  azurerm_network_interface_nat_rule_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ip_configuration_name : string prop;
  nat_rule_id : string prop;
  network_interface_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  ip_configuration_name:string prop ->
  nat_rule_id:string prop ->
  network_interface_id:string prop ->
  string ->
  t
