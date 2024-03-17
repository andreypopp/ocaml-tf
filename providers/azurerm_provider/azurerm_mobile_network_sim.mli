(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim__static_ip_configuration
type azurerm_mobile_network_sim__timeouts
type azurerm_mobile_network_sim

val azurerm_mobile_network_sim :
  ?device_type:string prop ->
  ?id:string prop ->
  ?sim_policy_id:string prop ->
  ?timeouts:azurerm_mobile_network_sim__timeouts ->
  authentication_key:string prop ->
  integrated_circuit_card_identifier:string prop ->
  international_mobile_subscriber_identity:string prop ->
  mobile_network_sim_group_id:string prop ->
  name:string prop ->
  operator_key_code:string prop ->
  static_ip_configuration:
    azurerm_mobile_network_sim__static_ip_configuration list ->
  string ->
  unit
