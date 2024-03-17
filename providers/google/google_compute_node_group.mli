(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_node_group__autoscaling_policy
type google_compute_node_group__maintenance_window
type google_compute_node_group__share_settings__project_map
type google_compute_node_group__share_settings
type google_compute_node_group__timeouts
type google_compute_node_group

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  initial_size : float prop;
  maintenance_policy : string prop;
  name : string prop;
  node_template : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

val google_compute_node_group :
  ?description:string prop ->
  ?id:string prop ->
  ?initial_size:float prop ->
  ?maintenance_policy:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_node_group__timeouts ->
  node_template:string prop ->
  autoscaling_policy:
    google_compute_node_group__autoscaling_policy list ->
  maintenance_window:
    google_compute_node_group__maintenance_window list ->
  share_settings:google_compute_node_group__share_settings list ->
  string ->
  t
