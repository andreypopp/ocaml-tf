(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type build_config__automatic_update_policy

val build_config__automatic_update_policy :
  unit -> build_config__automatic_update_policy

type build_config__on_deploy_update_policy

val build_config__on_deploy_update_policy :
  unit -> build_config__on_deploy_update_policy

type build_config__source__repo_source

val build_config__source__repo_source :
  ?branch_name:string prop ->
  ?commit_sha:string prop ->
  ?dir:string prop ->
  ?invert_regex:bool prop ->
  ?project_id:string prop ->
  ?repo_name:string prop ->
  ?tag_name:string prop ->
  unit ->
  build_config__source__repo_source

type build_config__source__storage_source

val build_config__source__storage_source :
  ?bucket:string prop ->
  ?generation:float prop ->
  ?object_:string prop ->
  unit ->
  build_config__source__storage_source

type build_config__source

val build_config__source :
  ?repo_source:build_config__source__repo_source list ->
  ?storage_source:build_config__source__storage_source list ->
  unit ->
  build_config__source

type build_config

val build_config :
  ?docker_repository:string prop ->
  ?entry_point:string prop ->
  ?environment_variables:string prop Tf_core.assoc ->
  ?runtime:string prop ->
  ?service_account:string prop ->
  ?worker_pool:string prop ->
  ?automatic_update_policy:build_config__automatic_update_policy list ->
  ?on_deploy_update_policy:build_config__on_deploy_update_policy list ->
  ?source:build_config__source list ->
  unit ->
  build_config

type event_trigger__event_filters

val event_trigger__event_filters :
  ?operator:string prop ->
  attribute:string prop ->
  value:string prop ->
  unit ->
  event_trigger__event_filters

type event_trigger

val event_trigger :
  ?event_type:string prop ->
  ?pubsub_topic:string prop ->
  ?retry_policy:string prop ->
  ?service_account_email:string prop ->
  ?trigger_region:string prop ->
  event_filters:event_trigger__event_filters list ->
  unit ->
  event_trigger

type service_config__secret_environment_variables

val service_config__secret_environment_variables :
  key:string prop ->
  project_id:string prop ->
  secret:string prop ->
  version:string prop ->
  unit ->
  service_config__secret_environment_variables

type service_config__secret_volumes__versions

val service_config__secret_volumes__versions :
  path:string prop ->
  version:string prop ->
  unit ->
  service_config__secret_volumes__versions

type service_config__secret_volumes

val service_config__secret_volumes :
  ?versions:service_config__secret_volumes__versions list ->
  mount_path:string prop ->
  project_id:string prop ->
  secret:string prop ->
  unit ->
  service_config__secret_volumes

type service_config

val service_config :
  ?all_traffic_on_latest_revision:bool prop ->
  ?available_cpu:string prop ->
  ?available_memory:string prop ->
  ?environment_variables:string prop Tf_core.assoc ->
  ?ingress_settings:string prop ->
  ?max_instance_count:float prop ->
  ?max_instance_request_concurrency:float prop ->
  ?min_instance_count:float prop ->
  ?service:string prop ->
  ?service_account_email:string prop ->
  ?timeout_seconds:float prop ->
  ?vpc_connector:string prop ->
  ?vpc_connector_egress_settings:string prop ->
  ?secret_environment_variables:
    service_config__secret_environment_variables list ->
  ?secret_volumes:service_config__secret_volumes list ->
  unit ->
  service_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloudfunctions2_function

val google_cloudfunctions2_function :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?build_config:build_config list ->
  ?event_trigger:event_trigger list ->
  ?service_config:service_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_cloudfunctions2_function

val yojson_of_google_cloudfunctions2_function :
  google_cloudfunctions2_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  environment : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?build_config:build_config list ->
  ?event_trigger:event_trigger list ->
  ?service_config:service_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?build_config:build_config list ->
  ?event_trigger:event_trigger list ->
  ?service_config:service_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
