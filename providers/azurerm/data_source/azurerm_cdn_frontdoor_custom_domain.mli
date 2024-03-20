(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tls = {
  cdn_frontdoor_secret_id : string prop;
      (** cdn_frontdoor_secret_id *)
  certificate_type : string prop;  (** certificate_type *)
  minimum_tls_version : string prop;  (** minimum_tls_version *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cdn_frontdoor_custom_domain

val azurerm_cdn_frontdoor_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
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
  profile_name : string prop;
  resource_group_name : string prop;
  tls : tls list prop;
  validation_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
