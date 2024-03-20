(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type build_config__source__storage_source = {
  bucket : string prop;  (** bucket *)
  generation : float prop;  (** generation *)
  object_ : string prop; [@key "object"]  (** object *)
}

type build_config__source__repo_source = {
  branch_name : string prop;  (** branch_name *)
  commit_sha : string prop;  (** commit_sha *)
  dir : string prop;  (** dir *)
  invert_regex : bool prop;  (** invert_regex *)
  project_id : string prop;  (** project_id *)
  repo_name : string prop;  (** repo_name *)
  tag_name : string prop;  (** tag_name *)
}

type build_config__source = {
  repo_source : build_config__source__repo_source list;
      (** repo_source *)
  storage_source : build_config__source__storage_source list;
      (** storage_source *)
}

type build_config = {
  build : string prop;  (** build *)
  docker_repository : string prop;  (** docker_repository *)
  entry_point : string prop;  (** entry_point *)
  environment_variables : (string * string prop) list;
      (** environment_variables *)
  runtime : string prop;  (** runtime *)
  source : build_config__source list;  (** source *)
  worker_pool : string prop;  (** worker_pool *)
}

type event_trigger__event_filters = {
  attribute : string prop;  (** attribute *)
  operator : string prop;  (** operator *)
  value : string prop;  (** value *)
}

type event_trigger = {
  event_filters : event_trigger__event_filters list;
      (** event_filters *)
  event_type : string prop;  (** event_type *)
  pubsub_topic : string prop;  (** pubsub_topic *)
  retry_policy : string prop;  (** retry_policy *)
  service_account_email : string prop;  (** service_account_email *)
  trigger : string prop;  (** trigger *)
  trigger_region : string prop;  (** trigger_region *)
}

type service_config__secret_volumes__versions = {
  path : string prop;  (** path *)
  version : string prop;  (** version *)
}

type service_config__secret_volumes = {
  mount_path : string prop;  (** mount_path *)
  project_id : string prop;  (** project_id *)
  secret : string prop;  (** secret *)
  versions : service_config__secret_volumes__versions list;
      (** versions *)
}

type service_config__secret_environment_variables = {
  key : string prop;  (** key *)
  project_id : string prop;  (** project_id *)
  secret : string prop;  (** secret *)
  version : string prop;  (** version *)
}

type service_config = {
  all_traffic_on_latest_revision : bool prop;
      (** all_traffic_on_latest_revision *)
  available_cpu : string prop;  (** available_cpu *)
  available_memory : string prop;  (** available_memory *)
  environment_variables : (string * string prop) list;
      (** environment_variables *)
  gcf_uri : string prop;  (** gcf_uri *)
  ingress_settings : string prop;  (** ingress_settings *)
  max_instance_count : float prop;  (** max_instance_count *)
  max_instance_request_concurrency : float prop;
      (** max_instance_request_concurrency *)
  min_instance_count : float prop;  (** min_instance_count *)
  secret_environment_variables :
    service_config__secret_environment_variables list;
      (** secret_environment_variables *)
  secret_volumes : service_config__secret_volumes list;
      (** secret_volumes *)
  service : string prop;  (** service *)
  service_account_email : string prop;  (** service_account_email *)
  timeout_seconds : float prop;  (** timeout_seconds *)
  uri : string prop;  (** uri *)
  vpc_connector : string prop;  (** vpc_connector *)
  vpc_connector_egress_settings : string prop;
      (** vpc_connector_egress_settings *)
}

type google_cloudfunctions2_function

val google_cloudfunctions2_function :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_cloudfunctions2_function

val yojson_of_google_cloudfunctions2_function :
  google_cloudfunctions2_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  build_config : build_config list prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  environment : string prop;
  event_trigger : event_trigger list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_config : service_config list prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
