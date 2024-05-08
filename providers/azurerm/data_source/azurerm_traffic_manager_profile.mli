(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_config = {
  relative_name : string prop;  (** relative_name *)
  ttl : float prop;  (** ttl *)
}

type monitor_config__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type monitor_config = {
  custom_header : monitor_config__custom_header list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_header *)
  expected_status_code_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expected_status_code_ranges *)
  interval_in_seconds : float prop;  (** interval_in_seconds *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_in_seconds : float prop;  (** timeout_in_seconds *)
  tolerated_number_of_failures : float prop;
      (** tolerated_number_of_failures *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_traffic_manager_profile

val azurerm_traffic_manager_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_traffic_manager_profile

val yojson_of_azurerm_traffic_manager_profile :
  azurerm_traffic_manager_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_config : dns_config list prop;
  fqdn : string prop;
  id : string prop;
  monitor_config : monitor_config list prop;
  name : string prop;
  profile_status : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
