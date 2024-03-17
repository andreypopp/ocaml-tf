(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_endpoint__encryption_spec
type google_vertex_ai_endpoint__timeouts

type google_vertex_ai_endpoint__deployed_models__private_endpoints = {
  explain_http_uri : string;  (** explain_http_uri *)
  health_http_uri : string;  (** health_http_uri *)
  predict_http_uri : string;  (** predict_http_uri *)
  service_attachment : string;  (** service_attachment *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float;  (** accelerator_count *)
  accelerator_type : string;  (** accelerator_type *)
  machine_type : string;  (** machine_type *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string;  (** metric_name *)
  target : float;  (** target *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      (** autoscaling_metric_specs *)
  machine_spec :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec
    list;
      (** machine_spec *)
  max_replica_count : float;  (** max_replica_count *)
  min_replica_count : float;  (** min_replica_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__automatic_resources = {
  max_replica_count : float;  (** max_replica_count *)
  min_replica_count : float;  (** min_replica_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models = {
  automatic_resources :
    google_vertex_ai_endpoint__deployed_models__automatic_resources
    list;
      (** automatic_resources *)
  create_time : string;  (** create_time *)
  dedicated_resources :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources
    list;
      (** dedicated_resources *)
  display_name : string;  (** display_name *)
  enable_access_logging : bool;  (** enable_access_logging *)
  enable_container_logging : bool;  (** enable_container_logging *)
  id : string;  (** id *)
  model : string;  (** model *)
  model_version_id : string;  (** model_version_id *)
  private_endpoints :
    google_vertex_ai_endpoint__deployed_models__private_endpoints
    list;
      (** private_endpoints *)
  service_account : string;  (** service_account *)
  shared_resources : string;  (** shared_resources *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint

val google_vertex_ai_endpoint :
  ?description:string ->
  ?labels:(string * string) list ->
  ?network:string ->
  ?region:string ->
  ?timeouts:google_vertex_ai_endpoint__timeouts ->
  display_name:string ->
  location:string ->
  name:string ->
  encryption_spec:google_vertex_ai_endpoint__encryption_spec list ->
  string ->
  unit
