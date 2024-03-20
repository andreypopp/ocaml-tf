(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type device_policy__os_constraints

val device_policy__os_constraints :
  ?minimum_version:string prop ->
  os_type:string prop ->
  unit ->
  device_policy__os_constraints

type device_policy

val device_policy :
  ?allowed_device_management_levels:string prop list ->
  ?allowed_encryption_statuses:string prop list ->
  ?require_admin_approval:bool prop ->
  ?require_corp_owned:bool prop ->
  ?require_screen_lock:bool prop ->
  os_constraints:device_policy__os_constraints list ->
  unit ->
  device_policy

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type vpc_network_sources__vpc_subnetwork

val vpc_network_sources__vpc_subnetwork :
  ?vpc_ip_subnetworks:string prop list ->
  network:string prop ->
  unit ->
  vpc_network_sources__vpc_subnetwork

type vpc_network_sources

val vpc_network_sources :
  vpc_subnetwork:vpc_network_sources__vpc_subnetwork list ->
  unit ->
  vpc_network_sources

type google_access_context_manager_access_level_condition

val google_access_context_manager_access_level_condition :
  ?id:string prop ->
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?timeouts:timeouts ->
  access_level:string prop ->
  device_policy:device_policy list ->
  vpc_network_sources:vpc_network_sources list ->
  unit ->
  google_access_context_manager_access_level_condition

val yojson_of_google_access_context_manager_access_level_condition :
  google_access_context_manager_access_level_condition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_level : string prop;
  id : string prop;
  ip_subnetworks : string list prop;
  members : string list prop;
  negate : bool prop;
  regions : string list prop;
  required_access_levels : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?timeouts:timeouts ->
  access_level:string prop ->
  device_policy:device_policy list ->
  vpc_network_sources:vpc_network_sources list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?timeouts:timeouts ->
  access_level:string prop ->
  device_policy:device_policy list ->
  vpc_network_sources:vpc_network_sources list ->
  string ->
  t Tf_core.resource
