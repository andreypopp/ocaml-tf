(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_sim__static_ip_configuration
type azurerm_mobile_network_sim__timeouts
type azurerm_mobile_network_sim

val azurerm_mobile_network_sim :
  ?device_type:string ->
  ?sim_policy_id:string ->
  ?timeouts:azurerm_mobile_network_sim__timeouts ->
  authentication_key:string ->
  integrated_circuit_card_identifier:string ->
  international_mobile_subscriber_identity:string ->
  mobile_network_sim_group_id:string ->
  name:string ->
  operator_key_code:string ->
  static_ip_configuration:
    azurerm_mobile_network_sim__static_ip_configuration list ->
  string ->
  unit
