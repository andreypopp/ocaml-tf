(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dedicated_resources__autoscaling_metric_specs

val dedicated_resources__autoscaling_metric_specs :
  ?target:float prop ->
  metric_name:string prop ->
  unit ->
  dedicated_resources__autoscaling_metric_specs

type dedicated_resources__machine_spec

val dedicated_resources__machine_spec :
  ?accelerator_count:float prop ->
  ?accelerator_type:string prop ->
  ?machine_type:string prop ->
  unit ->
  dedicated_resources__machine_spec

type dedicated_resources

val dedicated_resources :
  ?max_replica_count:float prop ->
  ?autoscaling_metric_specs:
    dedicated_resources__autoscaling_metric_specs list ->
  min_replica_count:float prop ->
  machine_spec:dedicated_resources__machine_spec list ->
  unit ->
  dedicated_resources

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_vertex_ai_deployment_resource_pool

val google_vertex_ai_deployment_resource_pool :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?dedicated_resources:dedicated_resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_vertex_ai_deployment_resource_pool

val yojson_of_google_vertex_ai_deployment_resource_pool :
  google_vertex_ai_deployment_resource_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?dedicated_resources:dedicated_resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?dedicated_resources:dedicated_resources list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
