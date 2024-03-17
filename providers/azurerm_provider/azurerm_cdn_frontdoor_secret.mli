(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_secret__secret__customer_certificate
type azurerm_cdn_frontdoor_secret__secret
type azurerm_cdn_frontdoor_secret__timeouts
type azurerm_cdn_frontdoor_secret

val azurerm_cdn_frontdoor_secret :
  ?id:string ->
  ?timeouts:azurerm_cdn_frontdoor_secret__timeouts ->
  cdn_frontdoor_profile_id:string ->
  name:string ->
  secret:azurerm_cdn_frontdoor_secret__secret list ->
  string ->
  unit
