(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_network_endpoint_group__app_engine
type google_compute_region_network_endpoint_group__cloud_function
type google_compute_region_network_endpoint_group__cloud_run
type google_compute_region_network_endpoint_group__timeouts
type google_compute_region_network_endpoint_group

val google_compute_region_network_endpoint_group :
  ?description:string ->
  ?id:string ->
  ?network:string ->
  ?network_endpoint_type:string ->
  ?project:string ->
  ?psc_target_service:string ->
  ?subnetwork:string ->
  ?timeouts:google_compute_region_network_endpoint_group__timeouts ->
  name:string ->
  region:string ->
  app_engine:
    google_compute_region_network_endpoint_group__app_engine list ->
  cloud_function:
    google_compute_region_network_endpoint_group__cloud_function list ->
  cloud_run:
    google_compute_region_network_endpoint_group__cloud_run list ->
  string ->
  unit
