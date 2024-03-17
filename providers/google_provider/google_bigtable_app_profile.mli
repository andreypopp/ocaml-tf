(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_app_profile__single_cluster_routing
type google_bigtable_app_profile__standard_isolation
type google_bigtable_app_profile__timeouts
type google_bigtable_app_profile

val google_bigtable_app_profile :
  ?description:string ->
  ?ignore_warnings:bool ->
  ?instance:string ->
  ?multi_cluster_routing_cluster_ids:string list ->
  ?multi_cluster_routing_use_any:bool ->
  ?timeouts:google_bigtable_app_profile__timeouts ->
  app_profile_id:string ->
  single_cluster_routing:
    google_bigtable_app_profile__single_cluster_routing list ->
  standard_isolation:
    google_bigtable_app_profile__standard_isolation list ->
  string ->
  unit
