(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__filter__item

val endpoint__filter__item :
  ?address:string prop ->
  ?type_:string prop ->
  unit ->
  endpoint__filter__item

type endpoint__filter

val endpoint__filter :
  ?type_:string prop ->
  item:endpoint__filter__item list ->
  unit ->
  endpoint__filter

type endpoint

val endpoint :
  ?address:string prop ->
  ?coverage_level:string prop ->
  ?excluded_ip_addresses:string prop list ->
  ?included_ip_addresses:string prop list ->
  ?target_resource_id:string prop ->
  ?target_resource_type:string prop ->
  name:string prop ->
  filter:endpoint__filter list ->
  unit ->
  endpoint

type test_configuration__http_configuration__request_header

val test_configuration__http_configuration__request_header :
  name:string prop ->
  value:string prop ->
  unit ->
  test_configuration__http_configuration__request_header

type test_configuration__http_configuration

val test_configuration__http_configuration :
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?prefer_https:bool prop ->
  ?valid_status_code_ranges:string prop list ->
  request_header:
    test_configuration__http_configuration__request_header list ->
  unit ->
  test_configuration__http_configuration

type test_configuration__icmp_configuration

val test_configuration__icmp_configuration :
  ?trace_route_enabled:bool prop ->
  unit ->
  test_configuration__icmp_configuration

type test_configuration__success_threshold

val test_configuration__success_threshold :
  ?checks_failed_percent:float prop ->
  ?round_trip_time_ms:float prop ->
  unit ->
  test_configuration__success_threshold

type test_configuration__tcp_configuration

val test_configuration__tcp_configuration :
  ?destination_port_behavior:string prop ->
  ?trace_route_enabled:bool prop ->
  port:float prop ->
  unit ->
  test_configuration__tcp_configuration

type test_configuration

val test_configuration :
  ?preferred_ip_version:string prop ->
  ?test_frequency_in_seconds:float prop ->
  name:string prop ->
  protocol:string prop ->
  http_configuration:test_configuration__http_configuration list ->
  icmp_configuration:test_configuration__icmp_configuration list ->
  success_threshold:test_configuration__success_threshold list ->
  tcp_configuration:test_configuration__tcp_configuration list ->
  unit ->
  test_configuration

type test_group

val test_group :
  ?enabled:bool prop ->
  destination_endpoints:string prop list ->
  name:string prop ->
  source_endpoints:string prop list ->
  test_configuration_names:string prop list ->
  unit ->
  test_group

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_connection_monitor

val azurerm_network_connection_monitor :
  ?id:string prop ->
  ?notes:string prop ->
  ?output_workspace_resource_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network_watcher_id:string prop ->
  endpoint:endpoint list ->
  test_configuration:test_configuration list ->
  test_group:test_group list ->
  unit ->
  azurerm_network_connection_monitor

val yojson_of_azurerm_network_connection_monitor :
  azurerm_network_connection_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  network_watcher_id : string prop;
  notes : string prop;
  output_workspace_resource_ids : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?notes:string prop ->
  ?output_workspace_resource_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network_watcher_id:string prop ->
  endpoint:endpoint list ->
  test_configuration:test_configuration list ->
  test_group:test_group list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?notes:string prop ->
  ?output_workspace_resource_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network_watcher_id:string prop ->
  endpoint:endpoint list ->
  test_configuration:test_configuration list ->
  test_group:test_group list ->
  string ->
  t Tf_core.resource
