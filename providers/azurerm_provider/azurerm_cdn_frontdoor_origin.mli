(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin__private_link
type azurerm_cdn_frontdoor_origin__timeouts
type azurerm_cdn_frontdoor_origin

val azurerm_cdn_frontdoor_origin :
  ?enabled:bool prop ->
  ?health_probes_enabled:bool prop ->
  ?http_port:float prop ->
  ?https_port:float prop ->
  ?id:string prop ->
  ?origin_host_header:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:azurerm_cdn_frontdoor_origin__timeouts ->
  cdn_frontdoor_origin_group_id:string prop ->
  certificate_name_check_enabled:bool prop ->
  host_name:string prop ->
  name:string prop ->
  private_link:azurerm_cdn_frontdoor_origin__private_link list ->
  string ->
  unit
