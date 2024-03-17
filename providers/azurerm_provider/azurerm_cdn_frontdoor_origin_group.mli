(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin_group__health_probe
type azurerm_cdn_frontdoor_origin_group__load_balancing
type azurerm_cdn_frontdoor_origin_group__timeouts
type azurerm_cdn_frontdoor_origin_group

val azurerm_cdn_frontdoor_origin_group :
  ?id:string prop ->
  ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes:
    float prop ->
  ?session_affinity_enabled:bool prop ->
  ?timeouts:azurerm_cdn_frontdoor_origin_group__timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  health_probe:azurerm_cdn_frontdoor_origin_group__health_probe list ->
  load_balancing:
    azurerm_cdn_frontdoor_origin_group__load_balancing list ->
  string ->
  unit
