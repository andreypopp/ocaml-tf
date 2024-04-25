(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic__conditions__device_policy__os_constraints

val basic__conditions__device_policy__os_constraints :
  ?minimum_version:string prop ->
  ?require_verified_chrome_os:bool prop ->
  os_type:string prop ->
  unit ->
  basic__conditions__device_policy__os_constraints

type basic__conditions__device_policy

val basic__conditions__device_policy :
  ?allowed_device_management_levels:string prop list ->
  ?allowed_encryption_statuses:string prop list ->
  ?require_admin_approval:bool prop ->
  ?require_corp_owned:bool prop ->
  ?require_screen_lock:bool prop ->
  ?os_constraints:
    basic__conditions__device_policy__os_constraints list ->
  unit ->
  basic__conditions__device_policy

type basic__conditions__vpc_network_sources__vpc_subnetwork

val basic__conditions__vpc_network_sources__vpc_subnetwork :
  ?vpc_ip_subnetworks:string prop list ->
  network:string prop ->
  unit ->
  basic__conditions__vpc_network_sources__vpc_subnetwork

type basic__conditions__vpc_network_sources

val basic__conditions__vpc_network_sources :
  ?vpc_subnetwork:
    basic__conditions__vpc_network_sources__vpc_subnetwork list ->
  unit ->
  basic__conditions__vpc_network_sources

type basic__conditions

val basic__conditions :
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?device_policy:basic__conditions__device_policy list ->
  ?vpc_network_sources:basic__conditions__vpc_network_sources list ->
  unit ->
  basic__conditions

type basic

val basic :
  ?combining_function:string prop ->
  conditions:basic__conditions list ->
  unit ->
  basic

type custom__expr

val custom__expr :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  custom__expr

type custom

val custom : expr:custom__expr list -> unit -> custom

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_access_level

val google_access_context_manager_access_level :
  ?description:string prop ->
  ?id:string prop ->
  ?basic:basic list ->
  ?custom:custom list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  unit ->
  google_access_context_manager_access_level

val yojson_of_google_access_context_manager_access_level :
  google_access_context_manager_access_level -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?basic:basic list ->
  ?custom:custom list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?basic:basic list ->
  ?custom:custom list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
