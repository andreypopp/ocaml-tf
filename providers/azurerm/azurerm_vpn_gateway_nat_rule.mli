(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_mapping

val external_mapping :
  ?port_range:string prop ->
  address_space:string prop ->
  unit ->
  external_mapping

type internal_mapping

val internal_mapping :
  ?port_range:string prop ->
  address_space:string prop ->
  unit ->
  internal_mapping

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vpn_gateway_nat_rule

val azurerm_vpn_gateway_nat_rule :
  ?external_address_space_mappings:string prop list ->
  ?id:string prop ->
  ?internal_address_space_mappings:string prop list ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?external_mapping:external_mapping list ->
  ?internal_mapping:internal_mapping list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_gateway_id:string prop ->
  unit ->
  azurerm_vpn_gateway_nat_rule

val yojson_of_azurerm_vpn_gateway_nat_rule :
  azurerm_vpn_gateway_nat_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  external_address_space_mappings : string list prop;
  id : string prop;
  internal_address_space_mappings : string list prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?external_address_space_mappings:string prop list ->
  ?id:string prop ->
  ?internal_address_space_mappings:string prop list ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?external_mapping:external_mapping list ->
  ?internal_mapping:internal_mapping list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t

val make :
  ?external_address_space_mappings:string prop list ->
  ?id:string prop ->
  ?internal_address_space_mappings:string prop list ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?external_mapping:external_mapping list ->
  ?internal_mapping:internal_mapping list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t Tf_core.resource
