(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_config

val dns_config :
  relative_name:string prop -> ttl:float prop -> unit -> dns_config

type monitor_config__custom_header

val monitor_config__custom_header :
  name:string prop ->
  value:string prop ->
  unit ->
  monitor_config__custom_header

type monitor_config

val monitor_config :
  ?expected_status_code_ranges:string prop list ->
  ?interval_in_seconds:float prop ->
  ?path:string prop ->
  ?timeout_in_seconds:float prop ->
  ?tolerated_number_of_failures:float prop ->
  ?custom_header:monitor_config__custom_header list ->
  port:float prop ->
  protocol:string prop ->
  unit ->
  monitor_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_traffic_manager_profile

val azurerm_traffic_manager_profile :
  ?id:string prop ->
  ?max_return:float prop ->
  ?profile_status:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  traffic_routing_method:string prop ->
  dns_config:dns_config list ->
  monitor_config:monitor_config list ->
  unit ->
  azurerm_traffic_manager_profile

val yojson_of_azurerm_traffic_manager_profile :
  azurerm_traffic_manager_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  max_return : float prop;
  name : string prop;
  profile_status : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?max_return:float prop ->
  ?profile_status:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  traffic_routing_method:string prop ->
  dns_config:dns_config list ->
  monitor_config:monitor_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?max_return:float prop ->
  ?profile_status:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  traffic_routing_method:string prop ->
  dns_config:dns_config list ->
  monitor_config:monitor_config list ->
  string ->
  t Tf_core.resource
