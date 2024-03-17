(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_gateway_nat_rule__external_mapping
type azurerm_vpn_gateway_nat_rule__internal_mapping
type azurerm_vpn_gateway_nat_rule__timeouts
type azurerm_vpn_gateway_nat_rule

val azurerm_vpn_gateway_nat_rule :
  ?external_address_space_mappings:string prop list ->
  ?id:string prop ->
  ?internal_address_space_mappings:string prop list ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?timeouts:azurerm_vpn_gateway_nat_rule__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_gateway_id:string prop ->
  external_mapping:
    azurerm_vpn_gateway_nat_rule__external_mapping list ->
  internal_mapping:
    azurerm_vpn_gateway_nat_rule__internal_mapping list ->
  string ->
  unit
