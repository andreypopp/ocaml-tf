(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_gateway_nat_rule__external_mapping
type azurerm_vpn_gateway_nat_rule__internal_mapping
type azurerm_vpn_gateway_nat_rule__timeouts
type azurerm_vpn_gateway_nat_rule

val azurerm_vpn_gateway_nat_rule :
  ?ip_configuration_id:string ->
  ?mode:string ->
  ?type_:string ->
  ?timeouts:azurerm_vpn_gateway_nat_rule__timeouts ->
  name:string ->
  resource_group_name:string ->
  vpn_gateway_id:string ->
  external_mapping:
    azurerm_vpn_gateway_nat_rule__external_mapping list ->
  internal_mapping:
    azurerm_vpn_gateway_nat_rule__internal_mapping list ->
  string ->
  unit
