(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type security_policies__firewall__association__domain

val security_policies__firewall__association__domain :
  cdn_frontdoor_domain_id:string prop ->
  unit ->
  security_policies__firewall__association__domain

type security_policies__firewall__association

val security_policies__firewall__association :
  patterns_to_match:string prop list ->
  domain:security_policies__firewall__association__domain list ->
  unit ->
  security_policies__firewall__association

type security_policies__firewall

val security_policies__firewall :
  cdn_frontdoor_firewall_policy_id:string prop ->
  association:security_policies__firewall__association list ->
  unit ->
  security_policies__firewall

type security_policies

val security_policies :
  firewall:security_policies__firewall list ->
  unit ->
  security_policies

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_security_policy

val azurerm_cdn_frontdoor_security_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  security_policies:security_policies list ->
  unit ->
  azurerm_cdn_frontdoor_security_policy

val yojson_of_azurerm_cdn_frontdoor_security_policy :
  azurerm_cdn_frontdoor_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  security_policies:security_policies list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  security_policies:security_policies list ->
  string ->
  t Tf_core.resource
