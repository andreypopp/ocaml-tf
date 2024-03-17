(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb__frontend_ip_configuration
type azurerm_lb__timeouts
type azurerm_lb

type t = private {
  edge_zone : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

val azurerm_lb :
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_lb__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  frontend_ip_configuration:
    azurerm_lb__frontend_ip_configuration list ->
  string ->
  t
