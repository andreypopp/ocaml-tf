(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_profile__timeouts
type azurerm_cdn_frontdoor_profile

val azurerm_cdn_frontdoor_profile :
  ?response_timeout_seconds:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cdn_frontdoor_profile__timeouts ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
