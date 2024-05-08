(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend_pool__backend = {
  address : string prop;
  enabled : bool prop option; [@option]
  host_header : string prop;
  http_port : float prop;
  https_port : float prop;
  priority : float prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_pool__backend) -> ()

let yojson_of_backend_pool__backend =
  (function
   | {
       address = v_address;
       enabled = v_enabled;
       host_header = v_host_header;
       http_port = v_http_port;
       https_port = v_https_port;
       priority = v_priority;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_https_port in
         ("https_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_http_port in
         ("http_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_header in
         ("host_header", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : backend_pool__backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_pool__backend

[@@@deriving.end]

type backend_pool = {
  health_probe_name : string prop;
  load_balancing_name : string prop;
  name : string prop;
  backend : backend_pool__backend list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_pool) -> ()

let yojson_of_backend_pool =
  (function
   | {
       health_probe_name = v_health_probe_name;
       load_balancing_name = v_load_balancing_name;
       name = v_name;
       backend = v_backend;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_backend then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_pool__backend)
               v_backend
           in
           let bnd = "backend", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancing_name
         in
         ("load_balancing_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_health_probe_name
         in
         ("health_probe_name", arg) :: bnds
       in
       `Assoc bnds
    : backend_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_pool

[@@@deriving.end]

type backend_pool_health_probe = {
  enabled : bool prop option; [@option]
  interval_in_seconds : float prop option; [@option]
  name : string prop;
  path : string prop option; [@option]
  probe_method : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_pool_health_probe) -> ()

let yojson_of_backend_pool_health_probe =
  (function
   | {
       enabled = v_enabled;
       interval_in_seconds = v_interval_in_seconds;
       name = v_name;
       path = v_path;
       probe_method = v_probe_method;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_probe_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_pool_health_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_pool_health_probe

[@@@deriving.end]

type backend_pool_load_balancing = {
  additional_latency_milliseconds : float prop option; [@option]
  name : string prop;
  sample_size : float prop option; [@option]
  successful_samples_required : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_pool_load_balancing) -> ()

let yojson_of_backend_pool_load_balancing =
  (function
   | {
       additional_latency_milliseconds =
         v_additional_latency_milliseconds;
       name = v_name;
       sample_size = v_sample_size;
       successful_samples_required = v_successful_samples_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_successful_samples_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "successful_samples_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sample_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_additional_latency_milliseconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "additional_latency_milliseconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_pool_load_balancing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_pool_load_balancing

[@@@deriving.end]

type backend_pool_settings = {
  backend_pools_send_receive_timeout_seconds : float prop option;
      [@option]
  enforce_backend_pools_certificate_name_check : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_pool_settings) -> ()

let yojson_of_backend_pool_settings =
  (function
   | {
       backend_pools_send_receive_timeout_seconds =
         v_backend_pools_send_receive_timeout_seconds;
       enforce_backend_pools_certificate_name_check =
         v_enforce_backend_pools_certificate_name_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enforce_backend_pools_certificate_name_check
         in
         ("enforce_backend_pools_certificate_name_check", arg)
         :: bnds
       in
       let bnds =
         match v_backend_pools_send_receive_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "backend_pools_send_receive_timeout_seconds", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_pool_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_pool_settings

[@@@deriving.end]

type frontend_endpoint = {
  host_name : string prop;
  name : string prop;
  session_affinity_enabled : bool prop option; [@option]
  session_affinity_ttl_seconds : float prop option; [@option]
  web_application_firewall_policy_link_id : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_endpoint) -> ()

let yojson_of_frontend_endpoint =
  (function
   | {
       host_name = v_host_name;
       name = v_name;
       session_affinity_enabled = v_session_affinity_enabled;
       session_affinity_ttl_seconds = v_session_affinity_ttl_seconds;
       web_application_firewall_policy_link_id =
         v_web_application_firewall_policy_link_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_application_firewall_policy_link_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "web_application_firewall_policy_link_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity_ttl_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_affinity_ttl_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_affinity_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : frontend_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_endpoint

[@@@deriving.end]

type routing_rule__forwarding_configuration = {
  backend_pool_name : string prop;
  cache_duration : string prop option; [@option]
  cache_enabled : bool prop option; [@option]
  cache_query_parameter_strip_directive : string prop option;
      [@option]
  cache_query_parameters : string prop list option; [@option]
  cache_use_dynamic_compression : bool prop option; [@option]
  custom_forwarding_path : string prop option; [@option]
  forwarding_protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule__forwarding_configuration) -> ()

let yojson_of_routing_rule__forwarding_configuration =
  (function
   | {
       backend_pool_name = v_backend_pool_name;
       cache_duration = v_cache_duration;
       cache_enabled = v_cache_enabled;
       cache_query_parameter_strip_directive =
         v_cache_query_parameter_strip_directive;
       cache_query_parameters = v_cache_query_parameters;
       cache_use_dynamic_compression =
         v_cache_use_dynamic_compression;
       custom_forwarding_path = v_custom_forwarding_path;
       forwarding_protocol = v_forwarding_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_forwarding_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forwarding_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_forwarding_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_forwarding_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_use_dynamic_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_use_dynamic_compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_query_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cache_query_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_query_parameter_strip_directive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cache_query_parameter_strip_directive", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_cache_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_pool_name
         in
         ("backend_pool_name", arg) :: bnds
       in
       `Assoc bnds
    : routing_rule__forwarding_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule__forwarding_configuration

[@@@deriving.end]

type routing_rule__redirect_configuration = {
  custom_fragment : string prop option; [@option]
  custom_host : string prop option; [@option]
  custom_path : string prop option; [@option]
  custom_query_string : string prop option; [@option]
  redirect_protocol : string prop;
  redirect_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule__redirect_configuration) -> ()

let yojson_of_routing_rule__redirect_configuration =
  (function
   | {
       custom_fragment = v_custom_fragment;
       custom_host = v_custom_host;
       custom_path = v_custom_path;
       custom_query_string = v_custom_query_string;
       redirect_protocol = v_redirect_protocol;
       redirect_type = v_redirect_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_type in
         ("redirect_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_redirect_protocol
         in
         ("redirect_protocol", arg) :: bnds
       in
       let bnds =
         match v_custom_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_fragment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_fragment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_rule__redirect_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule__redirect_configuration

[@@@deriving.end]

type routing_rule = {
  accepted_protocols : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  enabled : bool prop option; [@option]
  frontend_endpoints : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  patterns_to_match : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  forwarding_configuration :
    routing_rule__forwarding_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  redirect_configuration : routing_rule__redirect_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule) -> ()

let yojson_of_routing_rule =
  (function
   | {
       accepted_protocols = v_accepted_protocols;
       enabled = v_enabled;
       frontend_endpoints = v_frontend_endpoints;
       name = v_name;
       patterns_to_match = v_patterns_to_match;
       forwarding_configuration = v_forwarding_configuration;
       redirect_configuration = v_redirect_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_redirect_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_rule__redirect_configuration)
               v_redirect_configuration
           in
           let bnd = "redirect_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_forwarding_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_rule__forwarding_configuration)
               v_forwarding_configuration
           in
           let bnd = "forwarding_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_patterns_to_match then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_patterns_to_match
           in
           let bnd = "patterns_to_match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_frontend_endpoints then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_frontend_endpoints
           in
           let bnd = "frontend_endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_accepted_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_accepted_protocols
           in
           let bnd = "accepted_protocols", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type explicit_resource_order = {
  backend_pool_health_probe_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  backend_pool_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  backend_pool_load_balancing_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  frontend_endpoint_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  routing_rule_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explicit_resource_order) -> ()

let yojson_of_explicit_resource_order =
  (function
   | {
       backend_pool_health_probe_ids =
         v_backend_pool_health_probe_ids;
       backend_pool_ids = v_backend_pool_ids;
       backend_pool_load_balancing_ids =
         v_backend_pool_load_balancing_ids;
       frontend_endpoint_ids = v_frontend_endpoint_ids;
       routing_rule_ids = v_routing_rule_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_routing_rule_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_routing_rule_ids
           in
           let bnd = "routing_rule_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_frontend_endpoint_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_frontend_endpoint_ids
           in
           let bnd = "frontend_endpoint_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_load_balancing_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_backend_pool_load_balancing_ids
           in
           let bnd = "backend_pool_load_balancing_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_backend_pool_ids
           in
           let bnd = "backend_pool_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_health_probe_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_backend_pool_health_probe_ids
           in
           let bnd = "backend_pool_health_probe_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : explicit_resource_order -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explicit_resource_order

[@@@deriving.end]

type azurerm_frontdoor = {
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  load_balancer_enabled : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  backend_pool : backend_pool list;
      [@default []] [@yojson_drop_default ( = )]
  backend_pool_health_probe : backend_pool_health_probe list;
      [@default []] [@yojson_drop_default ( = )]
  backend_pool_load_balancing : backend_pool_load_balancing list;
      [@default []] [@yojson_drop_default ( = )]
  backend_pool_settings : backend_pool_settings list;
      [@default []] [@yojson_drop_default ( = )]
  frontend_endpoint : frontend_endpoint list;
      [@default []] [@yojson_drop_default ( = )]
  routing_rule : routing_rule list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_frontdoor) -> ()

let yojson_of_azurerm_frontdoor =
  (function
   | {
       friendly_name = v_friendly_name;
       id = v_id;
       load_balancer_enabled = v_load_balancer_enabled;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       backend_pool = v_backend_pool;
       backend_pool_health_probe = v_backend_pool_health_probe;
       backend_pool_load_balancing = v_backend_pool_load_balancing;
       backend_pool_settings = v_backend_pool_settings;
       frontend_endpoint = v_frontend_endpoint;
       routing_rule = v_routing_rule;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_routing_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_rule) v_routing_rule
           in
           let bnd = "routing_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_frontend_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_endpoint)
               v_frontend_endpoint
           in
           let bnd = "frontend_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_pool_settings)
               v_backend_pool_settings
           in
           let bnd = "backend_pool_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_load_balancing then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_pool_load_balancing)
               v_backend_pool_load_balancing
           in
           let bnd = "backend_pool_load_balancing", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool_health_probe then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_pool_health_probe)
               v_backend_pool_health_probe
           in
           let bnd = "backend_pool_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backend_pool then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_pool) v_backend_pool
           in
           let bnd = "backend_pool", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_load_balancer_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "load_balancer_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_frontdoor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_frontdoor

[@@@deriving.end]

let backend_pool__backend ?enabled ?priority ?weight ~address
    ~host_header ~http_port ~https_port () : backend_pool__backend =
  {
    address;
    enabled;
    host_header;
    http_port;
    https_port;
    priority;
    weight;
  }

let backend_pool ~health_probe_name ~load_balancing_name ~name
    ~backend () : backend_pool =
  { health_probe_name; load_balancing_name; name; backend }

let backend_pool_health_probe ?enabled ?interval_in_seconds ?path
    ?probe_method ?protocol ~name () : backend_pool_health_probe =
  {
    enabled;
    interval_in_seconds;
    name;
    path;
    probe_method;
    protocol;
  }

let backend_pool_load_balancing ?additional_latency_milliseconds
    ?sample_size ?successful_samples_required ~name () :
    backend_pool_load_balancing =
  {
    additional_latency_milliseconds;
    name;
    sample_size;
    successful_samples_required;
  }

let backend_pool_settings ?backend_pools_send_receive_timeout_seconds
    ~enforce_backend_pools_certificate_name_check () :
    backend_pool_settings =
  {
    backend_pools_send_receive_timeout_seconds;
    enforce_backend_pools_certificate_name_check;
  }

let frontend_endpoint ?session_affinity_enabled
    ?session_affinity_ttl_seconds
    ?web_application_firewall_policy_link_id ~host_name ~name () :
    frontend_endpoint =
  {
    host_name;
    name;
    session_affinity_enabled;
    session_affinity_ttl_seconds;
    web_application_firewall_policy_link_id;
  }

let routing_rule__forwarding_configuration ?cache_duration
    ?cache_enabled ?cache_query_parameter_strip_directive
    ?cache_query_parameters ?cache_use_dynamic_compression
    ?custom_forwarding_path ?forwarding_protocol ~backend_pool_name
    () : routing_rule__forwarding_configuration =
  {
    backend_pool_name;
    cache_duration;
    cache_enabled;
    cache_query_parameter_strip_directive;
    cache_query_parameters;
    cache_use_dynamic_compression;
    custom_forwarding_path;
    forwarding_protocol;
  }

let routing_rule__redirect_configuration ?custom_fragment
    ?custom_host ?custom_path ?custom_query_string ~redirect_protocol
    ~redirect_type () : routing_rule__redirect_configuration =
  {
    custom_fragment;
    custom_host;
    custom_path;
    custom_query_string;
    redirect_protocol;
    redirect_type;
  }

let routing_rule ?enabled ?(forwarding_configuration = [])
    ?(redirect_configuration = []) ~accepted_protocols
    ~frontend_endpoints ~name ~patterns_to_match () : routing_rule =
  {
    accepted_protocols;
    enabled;
    frontend_endpoints;
    name;
    patterns_to_match;
    forwarding_configuration;
    redirect_configuration;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor ?friendly_name ?id ?load_balancer_enabled ?tags
    ?(backend_pool_settings = []) ?timeouts ~name
    ~resource_group_name ~backend_pool ~backend_pool_health_probe
    ~backend_pool_load_balancing ~frontend_endpoint ~routing_rule ()
    : azurerm_frontdoor =
  {
    friendly_name;
    id;
    load_balancer_enabled;
    name;
    resource_group_name;
    tags;
    backend_pool;
    backend_pool_health_probe;
    backend_pool_load_balancing;
    backend_pool_settings;
    frontend_endpoint;
    routing_rule;
    timeouts;
  }

type t = {
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

let make ?friendly_name ?id ?load_balancer_enabled ?tags
    ?(backend_pool_settings = []) ?timeouts ~name
    ~resource_group_name ~backend_pool ~backend_pool_health_probe
    ~backend_pool_load_balancing ~frontend_endpoint ~routing_rule
    __id =
  let __type = "azurerm_frontdoor" in
  let __attrs =
    ({
       tf_name = __id;
       backend_pool_health_probes =
         Prop.computed __type __id "backend_pool_health_probes";
       backend_pool_load_balancing_settings =
         Prop.computed __type __id
           "backend_pool_load_balancing_settings";
       backend_pools = Prop.computed __type __id "backend_pools";
       cname = Prop.computed __type __id "cname";
       explicit_resource_order =
         Prop.computed __type __id "explicit_resource_order";
       friendly_name = Prop.computed __type __id "friendly_name";
       frontend_endpoints =
         Prop.computed __type __id "frontend_endpoints";
       header_frontdoor_id =
         Prop.computed __type __id "header_frontdoor_id";
       id = Prop.computed __type __id "id";
       load_balancer_enabled =
         Prop.computed __type __id "load_balancer_enabled";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_rules = Prop.computed __type __id "routing_rules";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_frontdoor
        (azurerm_frontdoor ?friendly_name ?id ?load_balancer_enabled
           ?tags ~backend_pool_settings ?timeouts ~name
           ~resource_group_name ~backend_pool
           ~backend_pool_health_probe ~backend_pool_load_balancing
           ~frontend_endpoint ~routing_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?friendly_name ?id ?load_balancer_enabled
    ?tags ?(backend_pool_settings = []) ?timeouts ~name
    ~resource_group_name ~backend_pool ~backend_pool_health_probe
    ~backend_pool_load_balancing ~frontend_endpoint ~routing_rule
    __id =
  let (r : _ Tf_core.resource) =
    make ?friendly_name ?id ?load_balancer_enabled ?tags
      ~backend_pool_settings ?timeouts ~name ~resource_group_name
      ~backend_pool ~backend_pool_health_probe
      ~backend_pool_load_balancing ~frontend_endpoint ~routing_rule
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
