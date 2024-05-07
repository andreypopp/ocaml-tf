(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type health_probe = {
  interval_in_seconds : float prop;  (** interval_in_seconds *)
  path : string prop;  (** path *)
  protocol : string prop;  (** protocol *)
  request_type : string prop;  (** request_type *)
}

type load_balancing = {
  additional_latency_in_milliseconds : float prop;
      (** additional_latency_in_milliseconds *)
  sample_size : float prop;  (** sample_size *)
  successful_samples_required : float prop;
      (** successful_samples_required *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cdn_frontdoor_origin_group

val azurerm_cdn_frontdoor_origin_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_origin_group

val yojson_of_azurerm_cdn_frontdoor_origin_group :
  azurerm_cdn_frontdoor_origin_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  health_probe : health_probe list prop;
  id : string prop;
  load_balancing : load_balancing list prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
