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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** repo_source *)
  storage_source : build_config__source__storage_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** storage_source *)
}

type build_config__on_deploy_update_policy = {
  runtime_version : string prop;  (** runtime_version *)
}

type build_config__automatic_update_policy

type build_config = {
  automatic_update_policy :
    build_config__automatic_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** automatic_update_policy *)
  build : string prop;  (** build *)
  docker_repository : string prop;  (** docker_repository *)
  entry_point : string prop;  (** entry_point *)
  environment_variables : string prop Tf_core.assoc;
      (** environment_variables *)
  on_deploy_update_policy :
    build_config__on_deploy_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** on_deploy_update_policy *)
  runtime : string prop;  (** runtime *)
  service_account : string prop;  (** service_account *)
  source : build_config__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source *)
  worker_pool : string prop;  (** worker_pool *)
}

type event_trigger__event_filters = {
  attribute : string prop;  (** attribute *)
  operator : string prop;  (** operator *)
  value : string prop;  (** value *)
}

type event_trigger = {
  event_filters : event_trigger__event_filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
  environment_variables : string prop Tf_core.assoc;
      (** environment_variables *)
  gcf_uri : string prop;  (** gcf_uri *)
  ingress_settings : string prop;  (** ingress_settings *)
  max_instance_count : float prop;  (** max_instance_count *)
  max_instance_request_concurrency : float prop;
      (** max_instance_request_concurrency *)
  min_instance_count : float prop;  (** min_instance_count *)
  secret_environment_variables :
    service_config__secret_environment_variables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_environment_variables *)
  secret_volumes : service_config__secret_volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
  tf_name : string;
  build_config : build_config list prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  environment : string prop;
  event_trigger : event_trigger list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_config : service_config list prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
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
