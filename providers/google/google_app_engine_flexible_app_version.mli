(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type api_config

val api_config :
  ?auth_fail_action:string prop ->
  ?login:string prop ->
  ?security_level:string prop ->
  ?url:string prop ->
  script:string prop ->
  unit ->
  api_config

type automatic_scaling__cpu_utilization

val automatic_scaling__cpu_utilization :
  ?aggregation_window_length:string prop ->
  target_utilization:float prop ->
  unit ->
  automatic_scaling__cpu_utilization

type automatic_scaling__disk_utilization

val automatic_scaling__disk_utilization :
  ?target_read_bytes_per_second:float prop ->
  ?target_read_ops_per_second:float prop ->
  ?target_write_bytes_per_second:float prop ->
  ?target_write_ops_per_second:float prop ->
  unit ->
  automatic_scaling__disk_utilization

type automatic_scaling__network_utilization

val automatic_scaling__network_utilization :
  ?target_received_bytes_per_second:float prop ->
  ?target_received_packets_per_second:float prop ->
  ?target_sent_bytes_per_second:float prop ->
  ?target_sent_packets_per_second:float prop ->
  unit ->
  automatic_scaling__network_utilization

type automatic_scaling__request_utilization

val automatic_scaling__request_utilization :
  ?target_concurrent_requests:float prop ->
  ?target_request_count_per_second:string prop ->
  unit ->
  automatic_scaling__request_utilization

type automatic_scaling

val automatic_scaling :
  ?cool_down_period:string prop ->
  ?max_concurrent_requests:float prop ->
  ?max_idle_instances:float prop ->
  ?max_pending_latency:string prop ->
  ?max_total_instances:float prop ->
  ?min_idle_instances:float prop ->
  ?min_pending_latency:string prop ->
  ?min_total_instances:float prop ->
  ?disk_utilization:automatic_scaling__disk_utilization list ->
  ?network_utilization:automatic_scaling__network_utilization list ->
  ?request_utilization:automatic_scaling__request_utilization list ->
  cpu_utilization:automatic_scaling__cpu_utilization list ->
  unit ->
  automatic_scaling

type deployment__cloud_build_options

val deployment__cloud_build_options :
  ?cloud_build_timeout:string prop ->
  app_yaml_path:string prop ->
  unit ->
  deployment__cloud_build_options

type deployment__container

val deployment__container :
  image:string prop -> unit -> deployment__container

type deployment__files

val deployment__files :
  ?sha1_sum:string prop ->
  name:string prop ->
  source_url:string prop ->
  unit ->
  deployment__files

type deployment__zip

val deployment__zip :
  ?files_count:float prop ->
  source_url:string prop ->
  unit ->
  deployment__zip

type deployment

val deployment :
  ?cloud_build_options:deployment__cloud_build_options list ->
  ?container:deployment__container list ->
  ?zip:deployment__zip list ->
  files:deployment__files list ->
  unit ->
  deployment

type endpoints_api_service

val endpoints_api_service :
  ?config_id:string prop ->
  ?disable_trace_sampling:bool prop ->
  ?rollout_strategy:string prop ->
  name:string prop ->
  unit ->
  endpoints_api_service

type entrypoint

val entrypoint : shell:string prop -> unit -> entrypoint

type flexible_runtime_settings

val flexible_runtime_settings :
  ?operating_system:string prop ->
  ?runtime_version:string prop ->
  unit ->
  flexible_runtime_settings

type handlers__script

val handlers__script :
  script_path:string prop -> unit -> handlers__script

type handlers__static_files

val handlers__static_files :
  ?application_readable:bool prop ->
  ?expiration:string prop ->
  ?http_headers:string prop Tf_core.assoc ->
  ?mime_type:string prop ->
  ?path:string prop ->
  ?require_matching_file:bool prop ->
  ?upload_path_regex:string prop ->
  unit ->
  handlers__static_files

type handlers

val handlers :
  ?auth_fail_action:string prop ->
  ?login:string prop ->
  ?redirect_http_response_code:string prop ->
  ?security_level:string prop ->
  ?url_regex:string prop ->
  ?script:handlers__script list ->
  ?static_files:handlers__static_files list ->
  unit ->
  handlers

type liveness_check

val liveness_check :
  ?check_interval:string prop ->
  ?failure_threshold:float prop ->
  ?host:string prop ->
  ?initial_delay:string prop ->
  ?success_threshold:float prop ->
  ?timeout:string prop ->
  path:string prop ->
  unit ->
  liveness_check

type manual_scaling

val manual_scaling : instances:float prop -> unit -> manual_scaling

type network

val network :
  ?forwarded_ports:string prop list ->
  ?instance_tag:string prop ->
  ?session_affinity:bool prop ->
  ?subnetwork:string prop ->
  name:string prop ->
  unit ->
  network

type readiness_check

val readiness_check :
  ?app_start_timeout:string prop ->
  ?check_interval:string prop ->
  ?failure_threshold:float prop ->
  ?host:string prop ->
  ?success_threshold:float prop ->
  ?timeout:string prop ->
  path:string prop ->
  unit ->
  readiness_check

type resources__volumes

val resources__volumes :
  name:string prop ->
  size_gb:float prop ->
  volume_type:string prop ->
  unit ->
  resources__volumes

type resources

val resources :
  ?cpu:float prop ->
  ?disk_gb:float prop ->
  ?memory_gb:float prop ->
  ?volumes:resources__volumes list ->
  unit ->
  resources

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_access_connector

val vpc_access_connector :
  name:string prop -> unit -> vpc_access_connector

type google_app_engine_flexible_app_version

val google_app_engine_flexible_app_version :
  ?beta_settings:string prop Tf_core.assoc ->
  ?default_expiration:string prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?nobuild_files_regex:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?runtime_channel:string prop ->
  ?runtime_main_executable_path:string prop ->
  ?service_account:string prop ->
  ?serving_status:string prop ->
  ?version_id:string prop ->
  ?api_config:api_config list ->
  ?automatic_scaling:automatic_scaling list ->
  ?deployment:deployment list ->
  ?endpoints_api_service:endpoints_api_service list ->
  ?entrypoint:entrypoint list ->
  ?flexible_runtime_settings:flexible_runtime_settings list ->
  ?handlers:handlers list ->
  ?manual_scaling:manual_scaling list ->
  ?network:network list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  liveness_check:liveness_check list ->
  readiness_check:readiness_check list ->
  unit ->
  google_app_engine_flexible_app_version

val yojson_of_google_app_engine_flexible_app_version :
  google_app_engine_flexible_app_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  beta_settings : string Tf_core.assoc prop;
  default_expiration : string prop;
  delete_service_on_destroy : bool prop;
  env_variables : string Tf_core.assoc prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  nobuild_files_regex : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  runtime_channel : string prop;
  runtime_main_executable_path : string prop;
  service : string prop;
  service_account : string prop;
  serving_status : string prop;
  version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?beta_settings:string prop Tf_core.assoc ->
  ?default_expiration:string prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?nobuild_files_regex:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?runtime_channel:string prop ->
  ?runtime_main_executable_path:string prop ->
  ?service_account:string prop ->
  ?serving_status:string prop ->
  ?version_id:string prop ->
  ?api_config:api_config list ->
  ?automatic_scaling:automatic_scaling list ->
  ?deployment:deployment list ->
  ?endpoints_api_service:endpoints_api_service list ->
  ?entrypoint:entrypoint list ->
  ?flexible_runtime_settings:flexible_runtime_settings list ->
  ?handlers:handlers list ->
  ?manual_scaling:manual_scaling list ->
  ?network:network list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  liveness_check:liveness_check list ->
  readiness_check:readiness_check list ->
  string ->
  t

val make :
  ?beta_settings:string prop Tf_core.assoc ->
  ?default_expiration:string prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?nobuild_files_regex:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?runtime_channel:string prop ->
  ?runtime_main_executable_path:string prop ->
  ?service_account:string prop ->
  ?serving_status:string prop ->
  ?version_id:string prop ->
  ?api_config:api_config list ->
  ?automatic_scaling:automatic_scaling list ->
  ?deployment:deployment list ->
  ?endpoints_api_service:endpoints_api_service list ->
  ?entrypoint:entrypoint list ->
  ?flexible_runtime_settings:flexible_runtime_settings list ->
  ?handlers:handlers list ->
  ?manual_scaling:manual_scaling list ->
  ?network:network list ->
  ?resources:resources list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  liveness_check:liveness_check list ->
  readiness_check:readiness_check list ->
  string ->
  t Tf_core.resource
