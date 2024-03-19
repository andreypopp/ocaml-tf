(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type autoscaling_config__autoscaling_limits

val autoscaling_config__autoscaling_limits :
  ?max_nodes:float prop ->
  ?max_processing_units:float prop ->
  ?min_nodes:float prop ->
  ?min_processing_units:float prop ->
  unit ->
  autoscaling_config__autoscaling_limits

type autoscaling_config__autoscaling_targets

val autoscaling_config__autoscaling_targets :
  ?high_priority_cpu_utilization_percent:float prop ->
  ?storage_utilization_percent:float prop ->
  unit ->
  autoscaling_config__autoscaling_targets

type autoscaling_config

val autoscaling_config :
  autoscaling_limits:autoscaling_config__autoscaling_limits list ->
  autoscaling_targets:autoscaling_config__autoscaling_targets list ->
  unit ->
  autoscaling_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_spanner_instance

val google_spanner_instance :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?num_nodes:float prop ->
  ?processing_units:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  config:string prop ->
  display_name:string prop ->
  autoscaling_config:autoscaling_config list ->
  unit ->
  google_spanner_instance

val yojson_of_google_spanner_instance :
  google_spanner_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  num_nodes : float prop;
  processing_units : float prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?num_nodes:float prop ->
  ?processing_units:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  config:string prop ->
  display_name:string prop ->
  autoscaling_config:autoscaling_config list ->
  string ->
  t
