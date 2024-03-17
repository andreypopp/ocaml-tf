(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain_association__timeouts
type azurerm_cdn_frontdoor_custom_domain_association

val azurerm_cdn_frontdoor_custom_domain_association :
  ?id:string prop ->
  ?timeouts:azurerm_cdn_frontdoor_custom_domain_association__timeouts ->
  cdn_frontdoor_custom_domain_id:string prop ->
  cdn_frontdoor_route_ids:string prop list ->
  string ->
  unit
