(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_endpoint_custom_domain__cdn_managed_https
type azurerm_cdn_endpoint_custom_domain__timeouts
type azurerm_cdn_endpoint_custom_domain__user_managed_https
type azurerm_cdn_endpoint_custom_domain

val azurerm_cdn_endpoint_custom_domain :
  ?timeouts:azurerm_cdn_endpoint_custom_domain__timeouts ->
  cdn_endpoint_id:string ->
  host_name:string ->
  name:string ->
  cdn_managed_https:
    azurerm_cdn_endpoint_custom_domain__cdn_managed_https list ->
  user_managed_https:
    azurerm_cdn_endpoint_custom_domain__user_managed_https list ->
  string ->
  unit
