(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend_pool__backend = {
  address : string prop;  (** address *)
  enabled : bool prop option; [@option]  (** enabled *)
  host_header : string prop;  (** host_header *)
  http_port : float prop;  (** http_port *)
  https_port : float prop;  (** https_port *)
  priority : float prop option; [@option]  (** priority *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** backend_pool__backend *)

type backend_pool = {
  health_probe_name : string prop;  (** health_probe_name *)
  load_balancing_name : string prop;  (** load_balancing_name *)
  name : string prop;  (** name *)
  backend : backend_pool__backend list;
}
[@@deriving yojson_of]
(** backend_pool *)

type backend_pool_health_probe = {
  enabled : bool prop option; [@option]  (** enabled *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  probe_method : string prop option; [@option]  (** probe_method *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** backend_pool_health_probe *)

type backend_pool_load_balancing = {
  additional_latency_milliseconds : float prop option; [@option]
      (** additional_latency_milliseconds *)
  name : string prop;  (** name *)
  sample_size : float prop option; [@option]  (** sample_size *)
  successful_samples_required : float prop option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** backend_pool_load_balancing *)

type backend_pool_settings = {
  backend_pools_send_receive_timeout_seconds : float prop option;
      [@option]
      (** backend_pools_send_receive_timeout_seconds *)
  enforce_backend_pools_certificate_name_check : bool prop;
      (** enforce_backend_pools_certificate_name_check *)
}
[@@deriving yojson_of]
(** backend_pool_settings *)

type frontend_endpoint = {
  host_name : string prop;  (** host_name *)
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
(** frontend_endpoint *)

type routing_rule__forwarding_configuration = {
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
(** routing_rule__forwarding_configuration *)

type routing_rule__redirect_configuration = {
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
(** routing_rule__redirect_configuration *)

type routing_rule = {
  accepted_protocols : string prop list;  (** accepted_protocols *)
  enabled : bool prop option; [@option]  (** enabled *)
  frontend_endpoints : string prop list;  (** frontend_endpoints *)
  name : string prop;  (** name *)
  patterns_to_match : string prop list;  (** patterns_to_match *)
  forwarding_configuration :
    routing_rule__forwarding_configuration list;
  redirect_configuration : routing_rule__redirect_configuration list;
}
[@@deriving yojson_of]
(** routing_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type explicit_resource_order = {
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
  backend_pool : backend_pool list;
  backend_pool_health_probe : backend_pool_health_probe list;
  backend_pool_load_balancing : backend_pool_load_balancing list;
  backend_pool_settings : backend_pool_settings list;
  frontend_endpoint : frontend_endpoint list;
  routing_rule : routing_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor *)

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

let routing_rule ?enabled ~accepted_protocols ~frontend_endpoints
    ~name ~patterns_to_match ~forwarding_configuration
    ~redirect_configuration () : routing_rule =
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
    ?timeouts ~name ~resource_group_name ~backend_pool
    ~backend_pool_health_probe ~backend_pool_load_balancing
    ~backend_pool_settings ~frontend_endpoint ~routing_rule () :
    azurerm_frontdoor =
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

let make ?friendly_name ?id ?load_balancer_enabled ?tags ?timeouts
    ~name ~resource_group_name ~backend_pool
    ~backend_pool_health_probe ~backend_pool_load_balancing
    ~backend_pool_settings ~frontend_endpoint ~routing_rule __id =
  let __type = "azurerm_frontdoor" in
  let __attrs =
    ({
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
           ?tags ?timeouts ~name ~resource_group_name ~backend_pool
           ~backend_pool_health_probe ~backend_pool_load_balancing
           ~backend_pool_settings ~frontend_endpoint ~routing_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?friendly_name ?id ?load_balancer_enabled
    ?tags ?timeouts ~name ~resource_group_name ~backend_pool
    ~backend_pool_health_probe ~backend_pool_load_balancing
    ~backend_pool_settings ~frontend_endpoint ~routing_rule __id =
  let (r : _ Tf_core.resource) =
    make ?friendly_name ?id ?load_balancer_enabled ?tags ?timeouts
      ~name ~resource_group_name ~backend_pool
      ~backend_pool_health_probe ~backend_pool_load_balancing
      ~backend_pool_settings ~frontend_endpoint ~routing_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
