(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_endpoint_custom_domain__cdn_managed_https
type azurerm_cdn_endpoint_custom_domain__timeouts
type azurerm_cdn_endpoint_custom_domain__user_managed_https
type azurerm_cdn_endpoint_custom_domain

type t = private {
  cdn_endpoint_id : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_cdn_endpoint_custom_domain :
  ?id:string prop ->
  ?timeouts:azurerm_cdn_endpoint_custom_domain__timeouts ->
  cdn_endpoint_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  cdn_managed_https:
    azurerm_cdn_endpoint_custom_domain__cdn_managed_https list ->
  user_managed_https:
    azurerm_cdn_endpoint_custom_domain__user_managed_https list ->
  string ->
  t
