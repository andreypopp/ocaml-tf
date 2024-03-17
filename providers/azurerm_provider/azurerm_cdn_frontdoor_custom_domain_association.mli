(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain_association__timeouts
type azurerm_cdn_frontdoor_custom_domain_association

val azurerm_cdn_frontdoor_custom_domain_association :
  ?timeouts:azurerm_cdn_frontdoor_custom_domain_association__timeouts ->
  cdn_frontdoor_custom_domain_id:string ->
  cdn_frontdoor_route_ids:string list ->
  string ->
  unit
