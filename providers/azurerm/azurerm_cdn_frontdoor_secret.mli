(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secret__customer_certificate

val secret__customer_certificate :
  key_vault_certificate_id:string prop ->
  unit ->
  secret__customer_certificate

type secret

val secret :
  customer_certificate:secret__customer_certificate list ->
  unit ->
  secret

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_secret

val azurerm_cdn_frontdoor_secret :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  secret:secret list ->
  unit ->
  azurerm_cdn_frontdoor_secret

val yojson_of_azurerm_cdn_frontdoor_secret :
  azurerm_cdn_frontdoor_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_profile_id : string prop;
  cdn_frontdoor_profile_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  secret:secret list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  secret:secret list ->
  string ->
  t Tf_core.resource
