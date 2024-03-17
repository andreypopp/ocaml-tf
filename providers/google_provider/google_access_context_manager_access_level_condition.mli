(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_level_condition__device_policy__os_constraints

type google_access_context_manager_access_level_condition__device_policy

type google_access_context_manager_access_level_condition__timeouts

type google_access_context_manager_access_level_condition__vpc_network_sources__vpc_subnetwork

type google_access_context_manager_access_level_condition__vpc_network_sources

type google_access_context_manager_access_level_condition

val google_access_context_manager_access_level_condition :
  ?id:string prop ->
  ?ip_subnetworks:string prop list ->
  ?members:string prop list ->
  ?negate:bool prop ->
  ?regions:string prop list ->
  ?required_access_levels:string prop list ->
  ?timeouts:
    google_access_context_manager_access_level_condition__timeouts ->
  access_level:string prop ->
  device_policy:
    google_access_context_manager_access_level_condition__device_policy
    list ->
  vpc_network_sources:
    google_access_context_manager_access_level_condition__vpc_network_sources
    list ->
  string ->
  unit
