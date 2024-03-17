(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_per_instance_config__preserved_state__disk

type google_compute_per_instance_config__preserved_state__external_ip__ip_address

type google_compute_per_instance_config__preserved_state__external_ip

type google_compute_per_instance_config__preserved_state__internal_ip__ip_address

type google_compute_per_instance_config__preserved_state__internal_ip
type google_compute_per_instance_config__preserved_state
type google_compute_per_instance_config__timeouts
type google_compute_per_instance_config

val google_compute_per_instance_config :
  ?minimal_action:string ->
  ?most_disruptive_allowed_action:string ->
  ?remove_instance_on_destroy:bool ->
  ?remove_instance_state_on_destroy:bool ->
  ?timeouts:google_compute_per_instance_config__timeouts ->
  instance_group_manager:string ->
  name:string ->
  preserved_state:
    google_compute_per_instance_config__preserved_state list ->
  string ->
  unit
