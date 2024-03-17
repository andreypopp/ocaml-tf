(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_secret__secret__customer_certificate
type azurerm_cdn_frontdoor_secret__secret
type azurerm_cdn_frontdoor_secret__timeouts
type azurerm_cdn_frontdoor_secret

type t = private {
  cdn_frontdoor_profile_id : string prop;
  cdn_frontdoor_profile_name : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_cdn_frontdoor_secret :
  ?id:string prop ->
  ?timeouts:azurerm_cdn_frontdoor_secret__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  secret:azurerm_cdn_frontdoor_secret__secret list ->
  string ->
  t
