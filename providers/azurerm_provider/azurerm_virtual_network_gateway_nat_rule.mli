(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_gateway_nat_rule__external_mapping
type azurerm_virtual_network_gateway_nat_rule__internal_mapping
type azurerm_virtual_network_gateway_nat_rule__timeouts
type azurerm_virtual_network_gateway_nat_rule

val azurerm_virtual_network_gateway_nat_rule :
  ?id:string prop ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?timeouts:azurerm_virtual_network_gateway_nat_rule__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_gateway_id:string prop ->
  external_mapping:
    azurerm_virtual_network_gateway_nat_rule__external_mapping list ->
  internal_mapping:
    azurerm_virtual_network_gateway_nat_rule__internal_mapping list ->
  string ->
  unit
