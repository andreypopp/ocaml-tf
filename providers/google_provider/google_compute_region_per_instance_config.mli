(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_per_instance_config__preserved_state__disk

type google_compute_region_per_instance_config__preserved_state__external_ip__ip_address

type google_compute_region_per_instance_config__preserved_state__external_ip

type google_compute_region_per_instance_config__preserved_state__internal_ip__ip_address

type google_compute_region_per_instance_config__preserved_state__internal_ip

type google_compute_region_per_instance_config__preserved_state
type google_compute_region_per_instance_config__timeouts
type google_compute_region_per_instance_config

type t = private {
  id : string prop;
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  region_instance_group_manager : string prop;
  remove_instance_on_destroy : bool prop;
  remove_instance_state_on_destroy : bool prop;
}

val google_compute_region_per_instance_config :
  ?id:string prop ->
  ?minimal_action:string prop ->
  ?most_disruptive_allowed_action:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?remove_instance_on_destroy:bool prop ->
  ?remove_instance_state_on_destroy:bool prop ->
  ?timeouts:google_compute_region_per_instance_config__timeouts ->
  name:string prop ->
  region_instance_group_manager:string prop ->
  preserved_state:
    google_compute_region_per_instance_config__preserved_state list ->
  string ->
  t
