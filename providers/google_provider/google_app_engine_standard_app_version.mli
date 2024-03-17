(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_standard_app_version__automatic_scaling__standard_scheduler_settings

type google_app_engine_standard_app_version__automatic_scaling
type google_app_engine_standard_app_version__basic_scaling
type google_app_engine_standard_app_version__deployment__files
type google_app_engine_standard_app_version__deployment__zip
type google_app_engine_standard_app_version__deployment
type google_app_engine_standard_app_version__entrypoint
type google_app_engine_standard_app_version__handlers__script
type google_app_engine_standard_app_version__handlers__static_files
type google_app_engine_standard_app_version__handlers
type google_app_engine_standard_app_version__libraries
type google_app_engine_standard_app_version__manual_scaling
type google_app_engine_standard_app_version__timeouts
type google_app_engine_standard_app_version__vpc_access_connector
type google_app_engine_standard_app_version

val google_app_engine_standard_app_version :
  ?app_engine_apis:bool ->
  ?delete_service_on_destroy:bool ->
  ?env_variables:(string * string) list ->
  ?id:string ->
  ?inbound_services:string list ->
  ?instance_class:string ->
  ?noop_on_destroy:bool ->
  ?project:string ->
  ?runtime_api_version:string ->
  ?service_account:string ->
  ?threadsafe:bool ->
  ?version_id:string ->
  ?timeouts:google_app_engine_standard_app_version__timeouts ->
  runtime:string ->
  service:string ->
  automatic_scaling:
    google_app_engine_standard_app_version__automatic_scaling list ->
  basic_scaling:
    google_app_engine_standard_app_version__basic_scaling list ->
  deployment:google_app_engine_standard_app_version__deployment list ->
  entrypoint:google_app_engine_standard_app_version__entrypoint list ->
  handlers:google_app_engine_standard_app_version__handlers list ->
  libraries:google_app_engine_standard_app_version__libraries list ->
  manual_scaling:
    google_app_engine_standard_app_version__manual_scaling list ->
  vpc_access_connector:
    google_app_engine_standard_app_version__vpc_access_connector list ->
  string ->
  unit
