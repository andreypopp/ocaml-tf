(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_node_group__autoscaling_policy
type google_compute_node_group__maintenance_window
type google_compute_node_group__share_settings__project_map
type google_compute_node_group__share_settings
type google_compute_node_group__timeouts
type google_compute_node_group

val google_compute_node_group :
  ?description:string ->
  ?id:string ->
  ?initial_size:float ->
  ?maintenance_policy:string ->
  ?name:string ->
  ?project:string ->
  ?zone:string ->
  ?timeouts:google_compute_node_group__timeouts ->
  node_template:string ->
  autoscaling_policy:
    google_compute_node_group__autoscaling_policy list ->
  maintenance_window:
    google_compute_node_group__maintenance_window list ->
  share_settings:google_compute_node_group__share_settings list ->
  string ->
  unit
