(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_levels__basic__conditions__device_policy__os_constraints

val access_levels__basic__conditions__device_policy__os_constraints :
  ?minimum_version:string prop ->
  os_type:string prop ->
  unit ->
  access_levels__basic__conditions__device_policy__os_constraints

type access_levels__basic__conditions__device_policy

val access_levels__basic__conditions__device_policy :
  ?allowed_device_management_levels:string prop list ->
  ?allowed_encryption_statuses:string prop list ->
  ?require_admin_approval:bool prop ->
  ?require_corp_owned:bool prop ->
  ?require_screen_lock:bool prop ->
  ?os_constraints:
    access_levels__basic__conditions__device_policy__os_constraints
    list ->
  unit ->
  access_levels__basic__conditions__device_policy

type access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork

val access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork :
  ?vpc_ip_subnetworks:string prop list ->
  network:string prop ->
  unit ->
  access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork

type access_levels__basic__conditions__vpc_network_sources

val access_levels__basic__conditions__vpc_network_sources :
  ?vpc_subnetwork:
    access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
    list ->
  unit ->
  access_levels__basic__conditions__vpc_network_sources

type access_levels__basic__conditions

val access_levels__basic__conditions :
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?device_policy:access_levels__basic__conditions__device_policy list ->
  ?vpc_network_sources:
    access_levels__basic__conditions__vpc_network_sources list ->
  unit ->
  access_levels__basic__conditions

type access_levels__basic

val access_levels__basic :
  ?combining_function:string prop ->
  conditions:access_levels__basic__conditions list ->
  unit ->
  access_levels__basic

type access_levels__custom__expr

val access_levels__custom__expr :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  access_levels__custom__expr

type access_levels__custom

val access_levels__custom :
  expr:access_levels__custom__expr list ->
  unit ->
  access_levels__custom

type access_levels

val access_levels :
  ?description:string prop ->
  ?basic:access_levels__basic list ->
  ?custom:access_levels__custom list ->
  name:string prop ->
  title:string prop ->
  unit ->
  access_levels

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_access_levels

val google_access_context_manager_access_levels :
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  access_levels:access_levels list ->
  unit ->
  google_access_context_manager_access_levels

val yojson_of_google_access_context_manager_access_levels :
  google_access_context_manager_access_levels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  access_levels:access_levels list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  access_levels:access_levels list ->
  string ->
  t Tf_core.resource
