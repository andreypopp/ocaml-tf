(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_frontdoor__backend_pool__backend = {
  address : string prop;  (** address *)
  enabled : bool prop option; [@option]  (** enabled *)
  host_header : string prop;  (** host_header *)
  http_port : float prop;  (** http_port *)
  https_port : float prop;  (** https_port *)
  priority : float prop option; [@option]  (** priority *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool__backend *)

type azurerm_frontdoor__backend_pool = {
  health_probe_name : string prop;  (** health_probe_name *)
  id : string prop;  (** id *)
  load_balancing_name : string prop;  (** load_balancing_name *)
  name : string prop;  (** name *)
  backend : azurerm_frontdoor__backend_pool__backend list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool *)

type azurerm_frontdoor__backend_pool_health_probe = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop;  (** id *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  probe_method : string prop option; [@option]  (** probe_method *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_health_probe *)

type azurerm_frontdoor__backend_pool_load_balancing = {
  additional_latency_milliseconds : float prop option; [@option]
      (** additional_latency_milliseconds *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  sample_size : float prop option; [@option]  (** sample_size *)
  successful_samples_required : float prop option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_load_balancing *)

type azurerm_frontdoor__backend_pool_settings = {
  backend_pools_send_receive_timeout_seconds : float prop option;
      [@option]
      (** backend_pools_send_receive_timeout_seconds *)
  enforce_backend_pools_certificate_name_check : bool prop;
      (** enforce_backend_pools_certificate_name_check *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__backend_pool_settings *)

type azurerm_frontdoor__frontend_endpoint = {
  host_name : string prop;  (** host_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  session_affinity_enabled : bool prop option; [@option]
      (** session_affinity_enabled *)
  session_affinity_ttl_seconds : float prop option; [@option]
      (** session_affinity_ttl_seconds *)
  web_application_firewall_policy_link_id : string prop option;
      [@option]
      (** web_application_firewall_policy_link_id *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__frontend_endpoint *)

type azurerm_frontdoor__routing_rule__forwarding_configuration = {
  backend_pool_name : string prop;  (** backend_pool_name *)
  cache_duration : string prop option; [@option]
      (** cache_duration *)
  cache_enabled : bool prop option; [@option]  (** cache_enabled *)
  cache_query_parameter_strip_directive : string prop option;
      [@option]
      (** cache_query_parameter_strip_directive *)
  cache_query_parameters : string prop list option; [@option]
      (** cache_query_parameters *)
  cache_use_dynamic_compression : bool prop option; [@option]
      (** cache_use_dynamic_compression *)
  custom_forwarding_path : string prop option; [@option]
      (** custom_forwarding_path *)
  forwarding_protocol : string prop option; [@option]
      (** forwarding_protocol *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule__forwarding_configuration *)

type azurerm_frontdoor__routing_rule__redirect_configuration = {
  custom_fragment : string prop option; [@option]
      (** custom_fragment *)
  custom_host : string prop option; [@option]  (** custom_host *)
  custom_path : string prop option; [@option]  (** custom_path *)
  custom_query_string : string prop option; [@option]
      (** custom_query_string *)
  redirect_protocol : string prop;  (** redirect_protocol *)
  redirect_type : string prop;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule__redirect_configuration *)

type azurerm_frontdoor__routing_rule = {
  accepted_protocols : string prop list;  (** accepted_protocols *)
  enabled : bool prop option; [@option]  (** enabled *)
  frontend_endpoints : string prop list;  (** frontend_endpoints *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  patterns_to_match : string prop list;  (** patterns_to_match *)
  forwarding_configuration :
    azurerm_frontdoor__routing_rule__forwarding_configuration list;
  redirect_configuration :
    azurerm_frontdoor__routing_rule__redirect_configuration list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor__routing_rule *)

type azurerm_frontdoor__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor__timeouts *)

type azurerm_frontdoor__explicit_resource_order = {
  backend_pool_health_probe_ids : string prop list;
      (** backend_pool_health_probe_ids *)
  backend_pool_ids : string prop list;  (** backend_pool_ids *)
  backend_pool_load_balancing_ids : string prop list;
      (** backend_pool_load_balancing_ids *)
  frontend_endpoint_ids : string prop list;
      (** frontend_endpoint_ids *)
  routing_rule_ids : string prop list;  (** routing_rule_ids *)
}
[@@deriving yojson_of]

type azurerm_frontdoor = {
  friendly_name : string prop option; [@option]  (** friendly_name *)
  id : string prop option; [@option]  (** id *)
  load_balancer_enabled : bool prop option; [@option]
      (** load_balancer_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

type t = {
  backend_pool_health_probes : (string * string) list prop;
  backend_pool_load_balancing_settings : (string * string) list prop;
  backend_pools : (string * string) list prop;
  cname : string prop;
  explicit_resource_order :
    azurerm_frontdoor__explicit_resource_order list prop;
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

let azurerm_frontdoor ?friendly_name ?id ?load_balancer_enabled ?tags
    ?timeouts ~name ~resource_group_name ~backend_pool
    ~backend_pool_health_probe ~backend_pool_load_balancing
    ~backend_pool_settings ~frontend_endpoint ~routing_rule
    __resource_id =
  let __resource_type = "azurerm_frontdoor" in
  let __resource =
    ({
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
      : azurerm_frontdoor)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor __resource);
  let __resource_attributes =
    ({
       backend_pool_health_probes =
         Prop.computed __resource_type __resource_id
           "backend_pool_health_probes";
       backend_pool_load_balancing_settings =
         Prop.computed __resource_type __resource_id
           "backend_pool_load_balancing_settings";
       backend_pools =
         Prop.computed __resource_type __resource_id "backend_pools";
       cname = Prop.computed __resource_type __resource_id "cname";
       explicit_resource_order =
         Prop.computed __resource_type __resource_id
           "explicit_resource_order";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       frontend_endpoints =
         Prop.computed __resource_type __resource_id
           "frontend_endpoints";
       header_frontdoor_id =
         Prop.computed __resource_type __resource_id
           "header_frontdoor_id";
       id = Prop.computed __resource_type __resource_id "id";
       load_balancer_enabled =
         Prop.computed __resource_type __resource_id
           "load_balancer_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       routing_rules =
         Prop.computed __resource_type __resource_id "routing_rules";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
