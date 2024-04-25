(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delegation__service_delegation

val delegation__service_delegation :
  ?actions:string prop list ->
  name:string prop ->
  unit ->
  delegation__service_delegation

type delegation

val delegation :
  name:string prop ->
  service_delegation:delegation__service_delegation list ->
  unit ->
  delegation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_subnet

val azurerm_subnet :
  ?enforce_private_link_endpoint_network_policies:bool prop ->
  ?enforce_private_link_service_network_policies:bool prop ->
  ?id:string prop ->
  ?private_endpoint_network_policies_enabled:bool prop ->
  ?private_link_service_network_policies_enabled:bool prop ->
  ?service_endpoint_policy_ids:string prop list ->
  ?service_endpoints:string prop list ->
  ?delegation:delegation list ->
  ?timeouts:timeouts ->
  address_prefixes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  unit ->
  azurerm_subnet

val yojson_of_azurerm_subnet : azurerm_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  service_endpoint_policy_ids : string list prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enforce_private_link_endpoint_network_policies:bool prop ->
  ?enforce_private_link_service_network_policies:bool prop ->
  ?id:string prop ->
  ?private_endpoint_network_policies_enabled:bool prop ->
  ?private_link_service_network_policies_enabled:bool prop ->
  ?service_endpoint_policy_ids:string prop list ->
  ?service_endpoints:string prop list ->
  ?delegation:delegation list ->
  ?timeouts:timeouts ->
  address_prefixes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t

val make :
  ?enforce_private_link_endpoint_network_policies:bool prop ->
  ?enforce_private_link_service_network_policies:bool prop ->
  ?id:string prop ->
  ?private_endpoint_network_policies_enabled:bool prop ->
  ?private_link_service_network_policies_enabled:bool prop ->
  ?service_endpoint_policy_ids:string prop list ->
  ?service_endpoints:string prop list ->
  ?delegation:delegation list ->
  ?timeouts:timeouts ->
  address_prefixes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t Tf_core.resource
