(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain

val azurerm_cdn_frontdoor_route_disable_link_to_default_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_custom_domain_ids:string prop list ->
  cdn_frontdoor_route_id:string prop ->
  unit ->
  azurerm_cdn_frontdoor_route_disable_link_to_default_domain

val yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain :
  azurerm_cdn_frontdoor_route_disable_link_to_default_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_custom_domain_ids : string list prop;
  cdn_frontdoor_route_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_custom_domain_ids:string prop list ->
  cdn_frontdoor_route_id:string prop ->
  string ->
  t
