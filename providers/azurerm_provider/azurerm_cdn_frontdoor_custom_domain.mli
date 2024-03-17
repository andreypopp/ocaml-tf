(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain__timeouts
type azurerm_cdn_frontdoor_custom_domain__tls
type azurerm_cdn_frontdoor_custom_domain

val azurerm_cdn_frontdoor_custom_domain :
  ?dns_zone_id:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_cdn_frontdoor_custom_domain__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  tls:azurerm_cdn_frontdoor_custom_domain__tls list ->
  string ->
  unit
