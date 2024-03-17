(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_endpoint__encryption_spec
type google_vertex_ai_endpoint__timeouts

type google_vertex_ai_endpoint__deployed_models__private_endpoints = {
  explain_http_uri : string prop;  (** explain_http_uri *)
  health_http_uri : string prop;  (** health_http_uri *)
  predict_http_uri : string prop;  (** predict_http_uri *)
  service_attachment : string prop;  (** service_attachment *)
}

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float prop;  (** accelerator_count *)
  accelerator_type : string prop;  (** accelerator_type *)
  machine_type : string prop;  (** machine_type *)
}

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string prop;  (** metric_name *)
  target : float prop;  (** target *)
}

type google_vertex_ai_endpoint__deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      (** autoscaling_metric_specs *)
  machine_spec :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec
    list;
      (** machine_spec *)
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}

type google_vertex_ai_endpoint__deployed_models__automatic_resources = {
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}

type google_vertex_ai_endpoint__deployed_models = {
  automatic_resources :
    google_vertex_ai_endpoint__deployed_models__automatic_resources
    list;
      (** automatic_resources *)
  create_time : string prop;  (** create_time *)
  dedicated_resources :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources
    list;
      (** dedicated_resources *)
  display_name : string prop;  (** display_name *)
  enable_access_logging : bool prop;  (** enable_access_logging *)
  enable_container_logging : bool prop;
      (** enable_container_logging *)
  id : string prop;  (** id *)
  model : string prop;  (** model *)
  model_version_id : string prop;  (** model_version_id *)
  private_endpoints :
    google_vertex_ai_endpoint__deployed_models__private_endpoints
    list;
      (** private_endpoints *)
  service_account : string prop;  (** service_account *)
  shared_resources : string prop;  (** shared_resources *)
}

type google_vertex_ai_endpoint

val google_vertex_ai_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_endpoint__timeouts ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  encryption_spec:google_vertex_ai_endpoint__encryption_spec list ->
  string ->
  unit
