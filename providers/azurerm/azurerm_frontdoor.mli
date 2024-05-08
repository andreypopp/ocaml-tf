(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type explicit_resource_order = {
  backend_pool_health_probe_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** backend_pool_health_probe_ids *)
  backend_pool_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** backend_pool_ids *)
  backend_pool_load_balancing_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** backend_pool_load_balancing_ids *)
  frontend_endpoint_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** frontend_endpoint_ids *)
  routing_rule_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** routing_rule_ids *)
}

type backend_pool__backend

val backend_pool__backend :
  ?enabled:bool prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  address:string prop ->
  host_header:string prop ->
  http_port:float prop ->
  https_port:float prop ->
  unit ->
  backend_pool__backend

type backend_pool

val backend_pool :
  health_probe_name:string prop ->
  load_balancing_name:string prop ->
  name:string prop ->
  backend:backend_pool__backend list ->
  unit ->
  backend_pool

type backend_pool_health_probe

val backend_pool_health_probe :
  ?enabled:bool prop ->
  ?interval_in_seconds:float prop ->
  ?path:string prop ->
  ?probe_method:string prop ->
  ?protocol:string prop ->
  name:string prop ->
  unit ->
  backend_pool_health_probe

type backend_pool_load_balancing

val backend_pool_load_balancing :
  ?additional_latency_milliseconds:float prop ->
  ?sample_size:float prop ->
  ?successful_samples_required:float prop ->
  name:string prop ->
  unit ->
  backend_pool_load_balancing

type backend_pool_settings

val backend_pool_settings :
  ?backend_pools_send_receive_timeout_seconds:float prop ->
  enforce_backend_pools_certificate_name_check:bool prop ->
  unit ->
  backend_pool_settings

type frontend_endpoint

val frontend_endpoint :
  ?session_affinity_enabled:bool prop ->
  ?session_affinity_ttl_seconds:float prop ->
  ?web_application_firewall_policy_link_id:string prop ->
  host_name:string prop ->
  name:string prop ->
  unit ->
  frontend_endpoint

type routing_rule__forwarding_configuration

val routing_rule__forwarding_configuration :
  ?cache_duration:string prop ->
  ?cache_enabled:bool prop ->
  ?cache_query_parameter_strip_directive:string prop ->
  ?cache_query_parameters:string prop list ->
  ?cache_use_dynamic_compression:bool prop ->
  ?custom_forwarding_path:string prop ->
  ?forwarding_protocol:string prop ->
  backend_pool_name:string prop ->
  unit ->
  routing_rule__forwarding_configuration

type routing_rule__redirect_configuration

val routing_rule__redirect_configuration :
  ?custom_fragment:string prop ->
  ?custom_host:string prop ->
  ?custom_path:string prop ->
  ?custom_query_string:string prop ->
  redirect_protocol:string prop ->
  redirect_type:string prop ->
  unit ->
  routing_rule__redirect_configuration

type routing_rule

val routing_rule :
  ?enabled:bool prop ->
  ?forwarding_configuration:
    routing_rule__forwarding_configuration list ->
  ?redirect_configuration:routing_rule__redirect_configuration list ->
  accepted_protocols:string prop list ->
  frontend_endpoints:string prop list ->
  name:string prop ->
  patterns_to_match:string prop list ->
  unit ->
  routing_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_frontdoor

val azurerm_frontdoor :
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?load_balancer_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?backend_pool_settings:backend_pool_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  backend_pool:backend_pool list ->
  backend_pool_health_probe:backend_pool_health_probe list ->
  backend_pool_load_balancing:backend_pool_load_balancing list ->
  frontend_endpoint:frontend_endpoint list ->
  routing_rule:routing_rule list ->
  unit ->
  azurerm_frontdoor

val yojson_of_azurerm_frontdoor : azurerm_frontdoor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend_pool_health_probes : (string * string) list prop;
  backend_pool_load_balancing_settings : (string * string) list prop;
  backend_pools : (string * string) list prop;
  cname : string prop;
  explicit_resource_order : explicit_resource_order list prop;
  friendly_name : string prop;
  frontend_endpoints : (string * string) list prop;
  header_frontdoor_id : string prop;
  id : string prop;
  load_balancer_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  routing_rules : (string * string) list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?load_balancer_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?backend_pool_settings:backend_pool_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  backend_pool:backend_pool list ->
  backend_pool_health_probe:backend_pool_health_probe list ->
  backend_pool_load_balancing:backend_pool_load_balancing list ->
  frontend_endpoint:frontend_endpoint list ->
  routing_rule:routing_rule list ->
  string ->
  t

val make :
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?load_balancer_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?backend_pool_settings:backend_pool_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  backend_pool:backend_pool list ->
  backend_pool_health_probe:backend_pool_health_probe list ->
  backend_pool_load_balancing:backend_pool_load_balancing list ->
  frontend_endpoint:frontend_endpoint list ->
  routing_rule:routing_rule list ->
  string ->
  t Tf_core.resource
