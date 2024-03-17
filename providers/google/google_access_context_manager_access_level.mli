(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_level__basic__conditions__device_policy__os_constraints

type google_access_context_manager_access_level__basic__conditions__device_policy

type google_access_context_manager_access_level__basic__conditions__vpc_network_sources__vpc_subnetwork

type google_access_context_manager_access_level__basic__conditions__vpc_network_sources

type google_access_context_manager_access_level__basic__conditions
type google_access_context_manager_access_level__basic
type google_access_context_manager_access_level__custom__expr
type google_access_context_manager_access_level__custom
type google_access_context_manager_access_level__timeouts
type google_access_context_manager_access_level

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  title : string prop;
}

val google_access_context_manager_access_level :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_access_context_manager_access_level__timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  basic:google_access_context_manager_access_level__basic list ->
  custom:google_access_context_manager_access_level__custom list ->
  string ->
  t
