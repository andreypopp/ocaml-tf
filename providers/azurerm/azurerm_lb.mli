(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type frontend_ip_configuration

val frontend_ip_configuration :
  ?gateway_load_balancer_frontend_ip_configuration_id:string prop ->
  ?private_ip_address:string prop ->
  ?private_ip_address_allocation:string prop ->
  ?private_ip_address_version:string prop ->
  ?public_ip_address_id:string prop ->
  ?public_ip_prefix_id:string prop ->
  ?subnet_id:string prop ->
  ?zones:string prop list ->
  name:string prop ->
  unit ->
  frontend_ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lb

val azurerm_lb :
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?frontend_ip_configuration:frontend_ip_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_lb

val yojson_of_azurerm_lb : azurerm_lb -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?frontend_ip_configuration:frontend_ip_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?edge_zone:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?frontend_ip_configuration:frontend_ip_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
