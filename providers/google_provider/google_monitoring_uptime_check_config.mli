(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_uptime_check_config__content_matchers__json_path_matcher

type google_monitoring_uptime_check_config__content_matchers

type google_monitoring_uptime_check_config__http_check__accepted_response_status_codes

type google_monitoring_uptime_check_config__http_check__auth_info
type google_monitoring_uptime_check_config__http_check__ping_config
type google_monitoring_uptime_check_config__http_check
type google_monitoring_uptime_check_config__monitored_resource
type google_monitoring_uptime_check_config__resource_group

type google_monitoring_uptime_check_config__synthetic_monitor__cloud_function_v2

type google_monitoring_uptime_check_config__synthetic_monitor
type google_monitoring_uptime_check_config__tcp_check__ping_config
type google_monitoring_uptime_check_config__tcp_check
type google_monitoring_uptime_check_config__timeouts
type google_monitoring_uptime_check_config

val google_monitoring_uptime_check_config :
  ?period:string ->
  ?selected_regions:string list ->
  ?user_labels:(string * string) list ->
  ?timeouts:google_monitoring_uptime_check_config__timeouts ->
  display_name:string ->
  timeout:string ->
  content_matchers:
    google_monitoring_uptime_check_config__content_matchers list ->
  http_check:google_monitoring_uptime_check_config__http_check list ->
  monitored_resource:
    google_monitoring_uptime_check_config__monitored_resource list ->
  resource_group:
    google_monitoring_uptime_check_config__resource_group list ->
  synthetic_monitor:
    google_monitoring_uptime_check_config__synthetic_monitor list ->
  tcp_check:google_monitoring_uptime_check_config__tcp_check list ->
  string ->
  unit
