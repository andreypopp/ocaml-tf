(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscaling_policy

val autoscaling_policy :
  ?max_nodes:float prop ->
  ?min_nodes:float prop ->
  ?mode:string prop ->
  unit ->
  autoscaling_policy

type maintenance_window

val maintenance_window :
  start_time:string prop -> unit -> maintenance_window

type share_settings__project_map

val share_settings__project_map :
  id:string prop ->
  project_id:string prop ->
  unit ->
  share_settings__project_map

type share_settings

val share_settings :
  share_type:string prop ->
  project_map:share_settings__project_map list ->
  unit ->
  share_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_node_group

val google_compute_node_group :
  ?description:string prop ->
  ?id:string prop ->
  ?initial_size:float prop ->
  ?maintenance_policy:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?autoscaling_policy:autoscaling_policy list ->
  ?maintenance_window:maintenance_window list ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  node_template:string prop ->
  unit ->
  google_compute_node_group

val yojson_of_google_compute_node_group :
  google_compute_node_group -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?initial_size:float prop ->
  ?maintenance_policy:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?autoscaling_policy:autoscaling_policy list ->
  ?maintenance_window:maintenance_window list ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  node_template:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?initial_size:float prop ->
  ?maintenance_policy:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?autoscaling_policy:autoscaling_policy list ->
  ?maintenance_window:maintenance_window list ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  node_template:string prop ->
  string ->
  t Tf_core.resource
