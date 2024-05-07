(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type health_probe

val health_probe :
  ?path:string prop ->
  ?request_type:string prop ->
  interval_in_seconds:float prop ->
  protocol:string prop ->
  unit ->
  health_probe

type load_balancing

val load_balancing :
  ?additional_latency_in_milliseconds:float prop ->
  ?sample_size:float prop ->
  ?successful_samples_required:float prop ->
  unit ->
  load_balancing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_origin_group

val azurerm_cdn_frontdoor_origin_group :
  ?id:string prop ->
  ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes:
    float prop ->
  ?session_affinity_enabled:bool prop ->
  ?health_probe:health_probe list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  load_balancing:load_balancing list ->
  unit ->
  azurerm_cdn_frontdoor_origin_group

val yojson_of_azurerm_cdn_frontdoor_origin_group :
  azurerm_cdn_frontdoor_origin_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes:
    float prop ->
  ?session_affinity_enabled:bool prop ->
  ?health_probe:health_probe list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  load_balancing:load_balancing list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes:
    float prop ->
  ?session_affinity_enabled:bool prop ->
  ?health_probe:health_probe list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  load_balancing:load_balancing list ->
  string ->
  t Tf_core.resource
