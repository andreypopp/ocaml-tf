(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type content_matchers__json_path_matcher

val content_matchers__json_path_matcher :
  ?json_matcher:string prop ->
  json_path:string prop ->
  unit ->
  content_matchers__json_path_matcher

type content_matchers

val content_matchers :
  ?matcher:string prop ->
  ?json_path_matcher:content_matchers__json_path_matcher list ->
  content:string prop ->
  unit ->
  content_matchers

type http_check__accepted_response_status_codes

val http_check__accepted_response_status_codes :
  ?status_class:string prop ->
  ?status_value:float prop ->
  unit ->
  http_check__accepted_response_status_codes

type http_check__auth_info

val http_check__auth_info :
  password:string prop ->
  username:string prop ->
  unit ->
  http_check__auth_info

type http_check__ping_config

val http_check__ping_config :
  pings_count:float prop -> unit -> http_check__ping_config

type http_check__service_agent_authentication

val http_check__service_agent_authentication :
  ?type_:string prop ->
  unit ->
  http_check__service_agent_authentication

type http_check

val http_check :
  ?body:string prop ->
  ?content_type:string prop ->
  ?custom_content_type:string prop ->
  ?headers:(string * string prop) list ->
  ?mask_headers:bool prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?request_method:string prop ->
  ?use_ssl:bool prop ->
  ?validate_ssl:bool prop ->
  ?accepted_response_status_codes:
    http_check__accepted_response_status_codes list ->
  ?auth_info:http_check__auth_info list ->
  ?ping_config:http_check__ping_config list ->
  ?service_agent_authentication:
    http_check__service_agent_authentication list ->
  unit ->
  http_check

type monitored_resource

val monitored_resource :
  labels:(string * string prop) list ->
  type_:string prop ->
  unit ->
  monitored_resource

type resource_group

val resource_group :
  ?group_id:string prop ->
  ?resource_type:string prop ->
  unit ->
  resource_group

type synthetic_monitor__cloud_function_v2

val synthetic_monitor__cloud_function_v2 :
  name:string prop -> unit -> synthetic_monitor__cloud_function_v2

type synthetic_monitor

val synthetic_monitor :
  cloud_function_v2:synthetic_monitor__cloud_function_v2 list ->
  unit ->
  synthetic_monitor

type tcp_check__ping_config

val tcp_check__ping_config :
  pings_count:float prop -> unit -> tcp_check__ping_config

type tcp_check

val tcp_check :
  ?ping_config:tcp_check__ping_config list ->
  port:float prop ->
  unit ->
  tcp_check

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_uptime_check_config

val google_monitoring_uptime_check_config :
  ?checker_type:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?project:string prop ->
  ?selected_regions:string prop list ->
  ?user_labels:(string * string prop) list ->
  ?content_matchers:content_matchers list ->
  ?http_check:http_check list ->
  ?monitored_resource:monitored_resource list ->
  ?resource_group:resource_group list ->
  ?synthetic_monitor:synthetic_monitor list ->
  ?tcp_check:tcp_check list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  timeout:string prop ->
  unit ->
  google_monitoring_uptime_check_config

val yojson_of_google_monitoring_uptime_check_config :
  google_monitoring_uptime_check_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  checker_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  project : string prop;
  selected_regions : string list prop;
  timeout : string prop;
  uptime_check_id : string prop;
  user_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?checker_type:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?project:string prop ->
  ?selected_regions:string prop list ->
  ?user_labels:(string * string prop) list ->
  ?content_matchers:content_matchers list ->
  ?http_check:http_check list ->
  ?monitored_resource:monitored_resource list ->
  ?resource_group:resource_group list ->
  ?synthetic_monitor:synthetic_monitor list ->
  ?tcp_check:tcp_check list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  timeout:string prop ->
  string ->
  t

val make :
  ?checker_type:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?project:string prop ->
  ?selected_regions:string prop list ->
  ?user_labels:(string * string prop) list ->
  ?content_matchers:content_matchers list ->
  ?http_check:http_check list ->
  ?monitored_resource:monitored_resource list ->
  ?resource_group:resource_group list ->
  ?synthetic_monitor:synthetic_monitor list ->
  ?tcp_check:tcp_check list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  timeout:string prop ->
  string ->
  t Tf_core.resource
