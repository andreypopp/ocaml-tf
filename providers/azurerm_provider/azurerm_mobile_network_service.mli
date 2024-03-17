(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_service__pcc_rule__qos_policy__guaranteed_bit_rate

type azurerm_mobile_network_service__pcc_rule__qos_policy__maximum_bit_rate

type azurerm_mobile_network_service__pcc_rule__qos_policy

type azurerm_mobile_network_service__pcc_rule__service_data_flow_template

type azurerm_mobile_network_service__pcc_rule

type azurerm_mobile_network_service__service_qos_policy__maximum_bit_rate

type azurerm_mobile_network_service__service_qos_policy
type azurerm_mobile_network_service__timeouts
type azurerm_mobile_network_service

val azurerm_mobile_network_service :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mobile_network_service__timeouts ->
  location:string ->
  mobile_network_id:string ->
  name:string ->
  service_precedence:float ->
  pcc_rule:azurerm_mobile_network_service__pcc_rule list ->
  service_qos_policy:
    azurerm_mobile_network_service__service_qos_policy list ->
  string ->
  unit
