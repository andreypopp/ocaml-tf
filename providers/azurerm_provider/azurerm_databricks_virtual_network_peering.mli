(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_virtual_network_peering__timeouts
type azurerm_databricks_virtual_network_peering

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

val azurerm_databricks_virtual_network_peering :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:azurerm_databricks_virtual_network_peering__timeouts ->
  name:string prop ->
  remote_address_space_prefixes:string prop list ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t
