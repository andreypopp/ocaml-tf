(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cdn_frontdoor_firewall_policy

val azurerm_cdn_frontdoor_firewall_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_firewall_policy

val yojson_of_azurerm_cdn_frontdoor_firewall_policy :
  azurerm_cdn_frontdoor_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
