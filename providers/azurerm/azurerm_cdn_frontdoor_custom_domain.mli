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

type tls

val tls :
  ?cdn_frontdoor_secret_id:string prop ->
  ?certificate_type:string prop ->
  ?minimum_tls_version:string prop ->
  unit ->
  tls

type azurerm_cdn_frontdoor_custom_domain

val azurerm_cdn_frontdoor_custom_domain :
  ?dns_zone_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  tls:tls list ->
  unit ->
  azurerm_cdn_frontdoor_custom_domain

val yojson_of_azurerm_cdn_frontdoor_custom_domain :
  azurerm_cdn_frontdoor_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_profile_id : string prop;
  dns_zone_id : string prop;
  expiration_date : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  validation_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_zone_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  tls:tls list ->
  string ->
  t

val make :
  ?dns_zone_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  tls:tls list ->
  string ->
  t Tf_core.resource
