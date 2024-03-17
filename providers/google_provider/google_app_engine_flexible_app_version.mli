(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_flexible_app_version__api_config

type google_app_engine_flexible_app_version__automatic_scaling__cpu_utilization

type google_app_engine_flexible_app_version__automatic_scaling__disk_utilization

type google_app_engine_flexible_app_version__automatic_scaling__network_utilization

type google_app_engine_flexible_app_version__automatic_scaling__request_utilization

type google_app_engine_flexible_app_version__automatic_scaling

type google_app_engine_flexible_app_version__deployment__cloud_build_options

type google_app_engine_flexible_app_version__deployment__container
type google_app_engine_flexible_app_version__deployment__files
type google_app_engine_flexible_app_version__deployment__zip
type google_app_engine_flexible_app_version__deployment
type google_app_engine_flexible_app_version__endpoints_api_service
type google_app_engine_flexible_app_version__entrypoint
type google_app_engine_flexible_app_version__handlers__script
type google_app_engine_flexible_app_version__handlers__static_files
type google_app_engine_flexible_app_version__handlers
type google_app_engine_flexible_app_version__liveness_check
type google_app_engine_flexible_app_version__manual_scaling
type google_app_engine_flexible_app_version__network
type google_app_engine_flexible_app_version__readiness_check
type google_app_engine_flexible_app_version__resources__volumes
type google_app_engine_flexible_app_version__resources
type google_app_engine_flexible_app_version__timeouts
type google_app_engine_flexible_app_version__vpc_access_connector
type google_app_engine_flexible_app_version

val google_app_engine_flexible_app_version :
  ?beta_settings:(string * string) list ->
  ?default_expiration:string ->
  ?delete_service_on_destroy:bool ->
  ?env_variables:(string * string) list ->
  ?inbound_services:string list ->
  ?instance_class:string ->
  ?nobuild_files_regex:string ->
  ?noop_on_destroy:bool ->
  ?runtime_channel:string ->
  ?runtime_main_executable_path:string ->
  ?serving_status:string ->
  ?version_id:string ->
  ?timeouts:google_app_engine_flexible_app_version__timeouts ->
  runtime:string ->
  service:string ->
  api_config:google_app_engine_flexible_app_version__api_config list ->
  automatic_scaling:
    google_app_engine_flexible_app_version__automatic_scaling list ->
  deployment:google_app_engine_flexible_app_version__deployment list ->
  endpoints_api_service:
    google_app_engine_flexible_app_version__endpoints_api_service
    list ->
  entrypoint:google_app_engine_flexible_app_version__entrypoint list ->
  handlers:google_app_engine_flexible_app_version__handlers list ->
  liveness_check:
    google_app_engine_flexible_app_version__liveness_check list ->
  manual_scaling:
    google_app_engine_flexible_app_version__manual_scaling list ->
  network:google_app_engine_flexible_app_version__network list ->
  readiness_check:
    google_app_engine_flexible_app_version__readiness_check list ->
  resources:google_app_engine_flexible_app_version__resources list ->
  vpc_access_connector:
    google_app_engine_flexible_app_version__vpc_access_connector list ->
  string ->
  unit
