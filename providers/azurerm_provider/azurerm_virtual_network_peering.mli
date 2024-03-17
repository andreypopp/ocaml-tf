(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_peering__timeouts
type azurerm_virtual_network_peering

type t = private {
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  triggers : (string * string) list prop;
  use_remote_gateways : bool prop;
  virtual_network_name : string prop;
}

val azurerm_virtual_network_peering :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:azurerm_virtual_network_peering__timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t
