(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin__private_link
type azurerm_cdn_frontdoor_origin__timeouts
type azurerm_cdn_frontdoor_origin

val azurerm_cdn_frontdoor_origin :
  ?http_port:float ->
  ?https_port:float ->
  ?origin_host_header:string ->
  ?priority:float ->
  ?weight:float ->
  ?timeouts:azurerm_cdn_frontdoor_origin__timeouts ->
  cdn_frontdoor_origin_group_id:string ->
  certificate_name_check_enabled:bool ->
  host_name:string ->
  name:string ->
  private_link:azurerm_cdn_frontdoor_origin__private_link list ->
  string ->
  unit
