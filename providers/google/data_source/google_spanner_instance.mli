(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscaling_config__autoscaling_targets = {
  high_priority_cpu_utilization_percent : float prop;
      (** high_priority_cpu_utilization_percent *)
  storage_utilization_percent : float prop;
      (** storage_utilization_percent *)
}

type autoscaling_config__autoscaling_limits = {
  max_nodes : float prop;  (** max_nodes *)
  max_processing_units : float prop;  (** max_processing_units *)
  min_nodes : float prop;  (** min_nodes *)
  min_processing_units : float prop;  (** min_processing_units *)
}

type autoscaling_config = {
  autoscaling_limits : autoscaling_config__autoscaling_limits list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** autoscaling_limits *)
  autoscaling_targets : autoscaling_config__autoscaling_targets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** autoscaling_targets *)
}

type google_spanner_instance

val google_spanner_instance :
  ?config:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_spanner_instance

val yojson_of_google_spanner_instance :
  google_spanner_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  autoscaling_config : autoscaling_config list prop;
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
  ?config:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?config:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
