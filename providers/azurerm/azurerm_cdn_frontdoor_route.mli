(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cache

val cache :
  ?compression_enabled:bool prop ->
  ?content_types_to_compress:string prop list ->
  ?query_string_caching_behavior:string prop ->
  ?query_strings:string prop list ->
  unit ->
  cache

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  cdn_frontdoor_endpoint_id:string prop ->
  cdn_frontdoor_origin_group_id:string prop ->
  cdn_frontdoor_origin_ids:string prop list ->
  name:string prop ->
  patterns_to_match:string prop list ->
  supported_protocols:string prop list ->
  cache:cache list ->
  unit ->
  azurerm_cdn_frontdoor_route

val yojson_of_azurerm_cdn_frontdoor_route :
  azurerm_cdn_frontdoor_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_custom_domain_ids : string list prop;
  cdn_frontdoor_endpoint_id : string prop;
  cdn_frontdoor_origin_group_id : string prop;
  cdn_frontdoor_origin_ids : string list prop;
  cdn_frontdoor_origin_path : string prop;
  cdn_frontdoor_rule_set_ids : string list prop;
  enabled : bool prop;
  forwarding_protocol : string prop;
  https_redirect_enabled : bool prop;
  id : string prop;
  link_to_default_domain : bool prop;
  name : string prop;
  patterns_to_match : string list prop;
  supported_protocols : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cdn_frontdoor_custom_domain_ids:string prop list ->
  ?cdn_frontdoor_origin_path:string prop ->
  ?cdn_frontdoor_rule_set_ids:string prop list ->
  ?enabled:bool prop ->
  ?forwarding_protocol:string prop ->
  ?https_redirect_enabled:bool prop ->
  ?id:string prop ->
  ?link_to_default_domain:bool prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_endpoint_id:string prop ->
  cdn_frontdoor_origin_group_id:string prop ->
  cdn_frontdoor_origin_ids:string prop list ->
  name:string prop ->
  patterns_to_match:string prop list ->
  supported_protocols:string prop list ->
  cache:cache list ->
  string ->
  t
