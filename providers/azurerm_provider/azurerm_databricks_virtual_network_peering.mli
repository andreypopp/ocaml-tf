(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_virtual_network_peering__timeouts
type azurerm_databricks_virtual_network_peering

val azurerm_databricks_virtual_network_peering :
  ?allow_forwarded_traffic:bool ->
  ?allow_gateway_transit:bool ->
  ?allow_virtual_network_access:bool ->
  ?id:string ->
  ?use_remote_gateways:bool ->
  ?timeouts:azurerm_databricks_virtual_network_peering__timeouts ->
  name:string ->
  remote_address_space_prefixes:string list ->
  remote_virtual_network_id:string ->
  resource_group_name:string ->
  workspace_id:string ->
  string ->
  unit
