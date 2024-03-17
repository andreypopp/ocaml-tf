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

type t = private {
  beta_settings : (string * string) list prop;
  default_expiration : string prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
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

val google_app_engine_flexible_app_version :
  ?beta_settings:(string * string prop) list ->
  ?default_expiration:string prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:(string * string prop) list ->
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
  ?timeouts:google_app_engine_flexible_app_version__timeouts ->
  runtime:string prop ->
  service:string prop ->
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
  t
