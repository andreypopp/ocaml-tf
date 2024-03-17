(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_frontdoor__backend_pool__backend = {
  address : string;  (** address *)
  enabled : bool option; [@option]  (** enabled *)
  host_header : string;  (** host_header *)
  http_port : float;  (** http_port *)
  https_port : float;  (** https_port *)
  priority : float option; [@option]  (** priority *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool__backend *)

type azurerm_frontdoor__backend_pool = {
  health_probe_name : string;  (** health_probe_name *)
  id : string;  (** id *)
  load_balancing_name : string;  (** load_balancing_name *)
  name : string;  (** name *)
  backend : azurerm_frontdoor__backend_pool__backend list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool *)

type azurerm_frontdoor__backend_pool_health_probe = {
  enabled : bool option; [@option]  (** enabled *)
  id : string;  (** id *)
  interval_in_seconds : float option; [@option]
      (** interval_in_seconds *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  probe_method : string option; [@option]  (** probe_method *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_health_probe *)

type azurerm_frontdoor__backend_pool_load_balancing = {
  additional_latency_milliseconds : float option; [@option]
      (** additional_latency_milliseconds *)
  id : string;  (** id *)
  name : string;  (** name *)
  sample_size : float option; [@option]  (** sample_size *)
  successful_samples_required : float option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_load_balancing *)

type azurerm_frontdoor__backend_pool_settings = {
  backend_pools_send_receive_timeout_seconds : float option;
      [@option]
      (** backend_pools_send_receive_timeout_seconds *)
  enforce_backend_pools_certificate_name_check : bool;
      (** enforce_backend_pools_certificate_name_check *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_settings *)

type azurerm_frontdoor__frontend_endpoint = {
  host_name : string;  (** host_name *)
  id : string;  (** id *)
  name : string;  (** name *)
  session_affinity_enabled : bool option; [@option]
      (** session_affinity_enabled *)
  session_affinity_ttl_seconds : float option; [@option]
      (** session_affinity_ttl_seconds *)
  web_application_firewall_policy_link_id : string option; [@option]
      (** web_application_firewall_policy_link_id *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__frontend_endpoint *)

type azurerm_frontdoor__routing_rule__forwarding_configuration = {
  backend_pool_name : string;  (** backend_pool_name *)
  cache_duration : string option; [@option]  (** cache_duration *)
  cache_enabled : bool option; [@option]  (** cache_enabled *)
  cache_query_parameter_strip_directive : string option; [@option]
      (** cache_query_parameter_strip_directive *)
  cache_query_parameters : string list option; [@option]
      (** cache_query_parameters *)
  cache_use_dynamic_compression : bool option; [@option]
      (** cache_use_dynamic_compression *)
  custom_forwarding_path : string option; [@option]
      (** custom_forwarding_path *)
  forwarding_protocol : string option; [@option]
      (** forwarding_protocol *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule__forwarding_configuration *)

type azurerm_frontdoor__routing_rule__redirect_configuration = {
  custom_fragment : string option; [@option]  (** custom_fragment *)
  custom_host : string option; [@option]  (** custom_host *)
  custom_path : string option; [@option]  (** custom_path *)
  custom_query_string : string option; [@option]
      (** custom_query_string *)
  redirect_protocol : string;  (** redirect_protocol *)
  redirect_type : string;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule__redirect_configuration *)

type azurerm_frontdoor__routing_rule = {
  accepted_protocols : string list;  (** accepted_protocols *)
  enabled : bool option; [@option]  (** enabled *)
  frontend_endpoints : string list;  (** frontend_endpoints *)
  id : string;  (** id *)
  name : string;  (** name *)
  patterns_to_match : string list;  (** patterns_to_match *)
  forwarding_configuration :
    azurerm_frontdoor__routing_rule__forwarding_configuration list;
  redirect_configuration :
    azurerm_frontdoor__routing_rule__redirect_configuration list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule *)

type azurerm_frontdoor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__timeouts *)

type azurerm_frontdoor__explicit_resource_order = {
  backend_pool_health_probe_ids : string list;
      (** backend_pool_health_probe_ids *)
  backend_pool_ids : string list;  (** backend_pool_ids *)
  backend_pool_load_balancing_ids : string list;
      (** backend_pool_load_balancing_ids *)
  frontend_endpoint_ids : string list;  (** frontend_endpoint_ids *)
  routing_rule_ids : string list;  (** routing_rule_ids *)
}
[@@deriving yojson_of]

type azurerm_frontdoor = {
  friendly_name : string option; [@option]  (** friendly_name *)
  load_balancer_enabled : bool option; [@option]
      (** load_balancer_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  backend_pool : azurerm_frontdoor__backend_pool list;
  backend_pool_health_probe :
    azurerm_frontdoor__backend_pool_health_probe list;
  backend_pool_load_balancing :
    azurerm_frontdoor__backend_pool_load_balancing list;
  backend_pool_settings :
    azurerm_frontdoor__backend_pool_settings list;
  frontend_endpoint : azurerm_frontdoor__frontend_endpoint list;
  routing_rule : azurerm_frontdoor__routing_rule list;
  timeouts : azurerm_frontdoor__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor *)

let azurerm_frontdoor ?friendly_name ?load_balancer_enabled ?tags
    ?timeouts ~name ~resource_group_name ~backend_pool
    ~backend_pool_health_probe ~backend_pool_load_balancing
    ~backend_pool_settings ~frontend_endpoint ~routing_rule
    __resource_id =
  let __resource_type = "azurerm_frontdoor" in
  let __resource =
    {
      friendly_name;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor __resource);
  ()
