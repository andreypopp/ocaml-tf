(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_local_network_gateway__bgp_settings
type azurerm_local_network_gateway__timeouts
type azurerm_local_network_gateway

type t = private {
  address_space : string list prop;
  gateway_address : string prop;
  gateway_fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_local_network_gateway :
  ?address_space:string prop list ->
  ?gateway_address:string prop ->
  ?gateway_fqdn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_local_network_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  bgp_settings:azurerm_local_network_gateway__bgp_settings list ->
  string ->
  t
