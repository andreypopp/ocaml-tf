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

type azurerm_cdn_frontdoor_custom_domain_association

val azurerm_cdn_frontdoor_custom_domain_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_custom_domain_id:string prop ->
  cdn_frontdoor_route_ids:string prop list ->
  unit ->
  azurerm_cdn_frontdoor_custom_domain_association

val yojson_of_azurerm_cdn_frontdoor_custom_domain_association :
  azurerm_cdn_frontdoor_custom_domain_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_custom_domain_id : string prop;
  cdn_frontdoor_route_ids : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_custom_domain_id:string prop ->
  cdn_frontdoor_route_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_custom_domain_id:string prop ->
  cdn_frontdoor_route_ids:string prop list ->
  string ->
  t Tf_core.resource
