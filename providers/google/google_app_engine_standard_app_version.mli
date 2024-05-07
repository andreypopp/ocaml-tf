(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type automatic_scaling__standard_scheduler_settings

val automatic_scaling__standard_scheduler_settings :
  ?max_instances:float prop ->
  ?min_instances:float prop ->
  ?target_cpu_utilization:float prop ->
  ?target_throughput_utilization:float prop ->
  unit ->
  automatic_scaling__standard_scheduler_settings

type automatic_scaling

val automatic_scaling :
  ?max_concurrent_requests:float prop ->
  ?max_idle_instances:float prop ->
  ?max_pending_latency:string prop ->
  ?min_idle_instances:float prop ->
  ?min_pending_latency:string prop ->
  ?standard_scheduler_settings:
    automatic_scaling__standard_scheduler_settings list ->
  unit ->
  automatic_scaling

type basic_scaling

val basic_scaling :
  ?idle_timeout:string prop ->
  max_instances:float prop ->
  unit ->
  basic_scaling

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
  ?zip:deployment__zip list ->
  files:deployment__files list ->
  unit ->
  deployment

type entrypoint

val entrypoint : shell:string prop -> unit -> entrypoint

type handlers__script

val handlers__script :
  script_path:string prop -> unit -> handlers__script

type handlers__static_files

val handlers__static_files :
  ?application_readable:bool prop ->
  ?expiration:string prop ->
  ?http_headers:(string * string prop) list ->
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

type libraries

val libraries :
  ?name:string prop -> ?version:string prop -> unit -> libraries

type manual_scaling

val manual_scaling : instances:float prop -> unit -> manual_scaling

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_access_connector

val vpc_access_connector :
  ?egress_setting:string prop ->
  name:string prop ->
  unit ->
  vpc_access_connector

type google_app_engine_standard_app_version

val google_app_engine_standard_app_version :
  ?app_engine_apis:bool prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:(string * string prop) list ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?service_account:string prop ->
  ?threadsafe:bool prop ->
  ?version_id:string prop ->
  ?automatic_scaling:automatic_scaling list ->
  ?basic_scaling:basic_scaling list ->
  ?handlers:handlers list ->
  ?libraries:libraries list ->
  ?manual_scaling:manual_scaling list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  deployment:deployment list ->
  entrypoint:entrypoint list ->
  unit ->
  google_app_engine_standard_app_version

val yojson_of_google_app_engine_standard_app_version :
  google_app_engine_standard_app_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_engine_apis : bool prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  service : string prop;
  service_account : string prop;
  threadsafe : bool prop;
  version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_engine_apis:bool prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:(string * string prop) list ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?service_account:string prop ->
  ?threadsafe:bool prop ->
  ?version_id:string prop ->
  ?automatic_scaling:automatic_scaling list ->
  ?basic_scaling:basic_scaling list ->
  ?handlers:handlers list ->
  ?libraries:libraries list ->
  ?manual_scaling:manual_scaling list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  deployment:deployment list ->
  entrypoint:entrypoint list ->
  string ->
  t

val make :
  ?app_engine_apis:bool prop ->
  ?delete_service_on_destroy:bool prop ->
  ?env_variables:(string * string prop) list ->
  ?id:string prop ->
  ?inbound_services:string prop list ->
  ?instance_class:string prop ->
  ?noop_on_destroy:bool prop ->
  ?project:string prop ->
  ?runtime_api_version:string prop ->
  ?service_account:string prop ->
  ?threadsafe:bool prop ->
  ?version_id:string prop ->
  ?automatic_scaling:automatic_scaling list ->
  ?basic_scaling:basic_scaling list ->
  ?handlers:handlers list ->
  ?libraries:libraries list ->
  ?manual_scaling:manual_scaling list ->
  ?timeouts:timeouts ->
  ?vpc_access_connector:vpc_access_connector list ->
  runtime:string prop ->
  service:string prop ->
  deployment:deployment list ->
  entrypoint:entrypoint list ->
  string ->
  t Tf_core.resource
