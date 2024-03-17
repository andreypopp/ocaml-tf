(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association__domain

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall

type azurerm_cdn_frontdoor_security_policy__security_policies
type azurerm_cdn_frontdoor_security_policy__timeouts
type azurerm_cdn_frontdoor_security_policy

val azurerm_cdn_frontdoor_security_policy :
  ?id:string ->
  ?timeouts:azurerm_cdn_frontdoor_security_policy__timeouts ->
  cdn_frontdoor_profile_id:string ->
  name:string ->
  security_policies:
    azurerm_cdn_frontdoor_security_policy__security_policies list ->
  string ->
  unit
