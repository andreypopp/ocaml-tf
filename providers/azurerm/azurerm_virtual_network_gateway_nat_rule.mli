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

type azurerm_virtual_network_gateway_nat_rule

val azurerm_virtual_network_gateway_nat_rule :
  ?id:string prop ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_gateway_id:string prop ->
  external_mapping:external_mapping list ->
  internal_mapping:internal_mapping list ->
  unit ->
  azurerm_virtual_network_gateway_nat_rule

val yojson_of_azurerm_virtual_network_gateway_nat_rule :
  azurerm_virtual_network_gateway_nat_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  virtual_network_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_gateway_id:string prop ->
  external_mapping:external_mapping list ->
  internal_mapping:internal_mapping list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_configuration_id:string prop ->
  ?mode:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_gateway_id:string prop ->
  external_mapping:external_mapping list ->
  internal_mapping:internal_mapping list ->
  string ->
  t Tf_core.resource
