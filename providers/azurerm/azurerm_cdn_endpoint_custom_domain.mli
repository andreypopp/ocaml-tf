(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cdn_managed_https

val cdn_managed_https :
  ?tls_version:string prop ->
  certificate_type:string prop ->
  protocol_type:string prop ->
  unit ->
  cdn_managed_https

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_managed_https

val user_managed_https :
  ?key_vault_certificate_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?tls_version:string prop ->
  unit ->
  user_managed_https

type azurerm_cdn_endpoint_custom_domain

val azurerm_cdn_endpoint_custom_domain :
  ?id:string prop ->
  ?cdn_managed_https:cdn_managed_https list ->
  ?timeouts:timeouts ->
  ?user_managed_https:user_managed_https list ->
  cdn_endpoint_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_cdn_endpoint_custom_domain

val yojson_of_azurerm_cdn_endpoint_custom_domain :
  azurerm_cdn_endpoint_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_endpoint_id : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?cdn_managed_https:cdn_managed_https list ->
  ?timeouts:timeouts ->
  ?user_managed_https:user_managed_https list ->
  cdn_endpoint_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?cdn_managed_https:cdn_managed_https list ->
  ?timeouts:timeouts ->
  ?user_managed_https:user_managed_https list ->
  cdn_endpoint_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
