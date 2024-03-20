(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_subnet

val azurerm_subnet :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  unit ->
  azurerm_subnet

val yojson_of_azurerm_subnet : azurerm_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_prefix : string prop;
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  network_security_group_id : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  route_table_id : string prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t Tf_core.resource
