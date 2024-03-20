(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_databricks_virtual_network_peering

val azurerm_databricks_virtual_network_peering :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_address_space_prefixes:string prop list ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_databricks_virtual_network_peering

val yojson_of_azurerm_databricks_virtual_network_peering :
  azurerm_databricks_virtual_network_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_space_prefixes : string list prop;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_address_space_prefixes : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  use_remote_gateways : bool prop;
  virtual_network_id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_address_space_prefixes:string prop list ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_address_space_prefixes:string prop list ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
