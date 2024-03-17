(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_route__cache
type azurerm_cdn_frontdoor_route__timeouts
type azurerm_cdn_frontdoor_route

val azurerm_cdn_frontdoor_route :
  ?cdn_frontdoor_custom_domain_ids:string prop list ->
  ?cdn_frontdoor_origin_path:string prop ->
  ?cdn_frontdoor_rule_set_ids:string prop list ->
  ?enabled:bool prop ->
  ?forwarding_protocol:string prop ->
  ?https_redirect_enabled:bool prop ->
  ?id:string prop ->
  ?link_to_default_domain:bool prop ->
  ?timeouts:azurerm_cdn_frontdoor_route__timeouts ->
  cdn_frontdoor_endpoint_id:string prop ->
  cdn_frontdoor_origin_group_id:string prop ->
  cdn_frontdoor_origin_ids:string prop list ->
  name:string prop ->
  patterns_to_match:string prop list ->
  supported_protocols:string prop list ->
  cache:azurerm_cdn_frontdoor_route__cache list ->
  string ->
  unit
