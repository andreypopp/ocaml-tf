(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain

val azurerm_cdn_frontdoor_route_disable_link_to_default_domain :
  ?id:string ->
  ?timeouts:
    azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts ->
  cdn_frontdoor_custom_domain_ids:string list ->
  cdn_frontdoor_route_id:string ->
  string ->
  unit
