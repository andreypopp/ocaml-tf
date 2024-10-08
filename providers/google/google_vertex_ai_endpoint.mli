(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type deployed_models__private_endpoints = {
  explain_http_uri : string prop;  (** explain_http_uri *)
  health_http_uri : string prop;  (** health_http_uri *)
  predict_http_uri : string prop;  (** predict_http_uri *)
  service_attachment : string prop;  (** service_attachment *)
}

type deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float prop;  (** accelerator_count *)
  accelerator_type : string prop;  (** accelerator_type *)
  machine_type : string prop;  (** machine_type *)
}

type deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string prop;  (** metric_name *)
  target : float prop;  (** target *)
}

type deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** autoscaling_metric_specs *)
  machine_spec :
    deployed_models__dedicated_resources__machine_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** machine_spec *)
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}

type deployed_models__automatic_resources = {
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}

type deployed_models = {
  automatic_resources : deployed_models__automatic_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** automatic_resources *)
  create_time : string prop;  (** create_time *)
  dedicated_resources : deployed_models__dedicated_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dedicated_resources *)
  display_name : string prop;  (** display_name *)
  enable_access_logging : bool prop;  (** enable_access_logging *)
  enable_container_logging : bool prop;
      (** enable_container_logging *)
  id : string prop;  (** id *)
  model : string prop;  (** model *)
  model_version_id : string prop;  (** model_version_id *)
  private_endpoints : deployed_models__private_endpoints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_endpoints *)
  service_account : string prop;  (** service_account *)
  shared_resources : string prop;  (** shared_resources *)
}

type encryption_spec

val encryption_spec :
  kms_key_name:string prop -> unit -> encryption_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_endpoint

val google_vertex_ai_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_vertex_ai_endpoint

val yojson_of_google_vertex_ai_endpoint :
  google_vertex_ai_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  deployed_models : deployed_models list prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  model_deployment_monitoring_job : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
