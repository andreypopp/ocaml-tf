(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_app_profile__single_cluster_routing
type google_bigtable_app_profile__standard_isolation
type google_bigtable_app_profile__timeouts
type google_bigtable_app_profile

val google_bigtable_app_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_warnings:bool prop ->
  ?instance:string prop ->
  ?multi_cluster_routing_cluster_ids:string prop list ->
  ?multi_cluster_routing_use_any:bool prop ->
  ?project:string prop ->
  ?timeouts:google_bigtable_app_profile__timeouts ->
  app_profile_id:string prop ->
  single_cluster_routing:
    google_bigtable_app_profile__single_cluster_routing list ->
  standard_isolation:
    google_bigtable_app_profile__standard_isolation list ->
  string ->
  unit
