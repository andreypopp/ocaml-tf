(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_route__cache
type azurerm_cdn_frontdoor_route__timeouts
type azurerm_cdn_frontdoor_route

val azurerm_cdn_frontdoor_route :
  ?cdn_frontdoor_custom_domain_ids:string list ->
  ?cdn_frontdoor_origin_path:string ->
  ?cdn_frontdoor_rule_set_ids:string list ->
  ?enabled:bool ->
  ?forwarding_protocol:string ->
  ?https_redirect_enabled:bool ->
  ?link_to_default_domain:bool ->
  ?timeouts:azurerm_cdn_frontdoor_route__timeouts ->
  cdn_frontdoor_endpoint_id:string ->
  cdn_frontdoor_origin_group_id:string ->
  cdn_frontdoor_origin_ids:string list ->
  name:string ->
  patterns_to_match:string list ->
  supported_protocols:string list ->
  cache:azurerm_cdn_frontdoor_route__cache list ->
  string ->
  unit
