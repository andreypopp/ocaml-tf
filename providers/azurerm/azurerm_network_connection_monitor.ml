(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type endpoint__filter__item = {
  address : string prop option; [@option]  (** address *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** endpoint__filter__item *)

type endpoint__filter = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  item : endpoint__filter__item list;
}
[@@deriving yojson_of]
(** endpoint__filter *)

type endpoint = {
  address : string prop option; [@option]  (** address *)
  coverage_level : string prop option; [@option]
      (** coverage_level *)
  excluded_ip_addresses : string prop list option; [@option]
      (** excluded_ip_addresses *)
  included_ip_addresses : string prop list option; [@option]
      (** included_ip_addresses *)
  name : string prop;  (** name *)
  target_resource_id : string prop option; [@option]
      (** target_resource_id *)
  target_resource_type : string prop option; [@option]
      (** target_resource_type *)
  filter : endpoint__filter list;
}
[@@deriving yojson_of]
(** endpoint *)

type test_configuration__http_configuration__request_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** test_configuration__http_configuration__request_header *)

type test_configuration__http_configuration = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  prefer_https : bool prop option; [@option]  (** prefer_https *)
  valid_status_code_ranges : string prop list option; [@option]
      (** valid_status_code_ranges *)
  request_header :
    test_configuration__http_configuration__request_header list;
}
[@@deriving yojson_of]
(** test_configuration__http_configuration *)

type test_configuration__icmp_configuration = {
  trace_route_enabled : bool prop option; [@option]
      (** trace_route_enabled *)
}
[@@deriving yojson_of]
(** test_configuration__icmp_configuration *)

type test_configuration__success_threshold = {
  checks_failed_percent : float prop option; [@option]
      (** checks_failed_percent *)
  round_trip_time_ms : float prop option; [@option]
      (** round_trip_time_ms *)
}
[@@deriving yojson_of]
(** test_configuration__success_threshold *)

type test_configuration__tcp_configuration = {
  destination_port_behavior : string prop option; [@option]
      (** destination_port_behavior *)
  port : float prop;  (** port *)
  trace_route_enabled : bool prop option; [@option]
      (** trace_route_enabled *)
}
[@@deriving yojson_of]
(** test_configuration__tcp_configuration *)

type test_configuration = {
  name : string prop;  (** name *)
  preferred_ip_version : string prop option; [@option]
      (** preferred_ip_version *)
  protocol : string prop;  (** protocol *)
  test_frequency_in_seconds : float prop option; [@option]
      (** test_frequency_in_seconds *)
  http_configuration : test_configuration__http_configuration list;
  icmp_configuration : test_configuration__icmp_configuration list;
  success_threshold : test_configuration__success_threshold list;
  tcp_configuration : test_configuration__tcp_configuration list;
}
[@@deriving yojson_of]
(** test_configuration *)

type test_group = {
  destination_endpoints : string prop list;
      (** destination_endpoints *)
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  source_endpoints : string prop list;  (** source_endpoints *)
  test_configuration_names : string prop list;
      (** test_configuration_names *)
}
[@@deriving yojson_of]
(** test_group *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_connection_monitor = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_watcher_id : string prop;  (** network_watcher_id *)
  notes : string prop option; [@option]  (** notes *)
  output_workspace_resource_ids : string prop list option; [@option]
      (** output_workspace_resource_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  endpoint : endpoint list;
  test_configuration : test_configuration list;
  test_group : test_group list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor *)

let endpoint__filter__item ?address ?type_ () :
    endpoint__filter__item =
  { address; type_ }

let endpoint__filter ?type_ ~item () : endpoint__filter =
  { type_; item }

let endpoint ?address ?coverage_level ?excluded_ip_addresses
    ?included_ip_addresses ?target_resource_id ?target_resource_type
    ~name ~filter () : endpoint =
  {
    address;
    coverage_level;
    excluded_ip_addresses;
    included_ip_addresses;
    name;
    target_resource_id;
    target_resource_type;
    filter;
  }

let test_configuration__http_configuration__request_header ~name
    ~value () :
    test_configuration__http_configuration__request_header =
  { name; value }

let test_configuration__http_configuration ?method_ ?path ?port
    ?prefer_https ?valid_status_code_ranges ~request_header () :
    test_configuration__http_configuration =
  {
    method_;
    path;
    port;
    prefer_https;
    valid_status_code_ranges;
    request_header;
  }

let test_configuration__icmp_configuration ?trace_route_enabled () :
    test_configuration__icmp_configuration =
  { trace_route_enabled }

let test_configuration__success_threshold ?checks_failed_percent
    ?round_trip_time_ms () : test_configuration__success_threshold =
  { checks_failed_percent; round_trip_time_ms }

let test_configuration__tcp_configuration ?destination_port_behavior
    ?trace_route_enabled ~port () :
    test_configuration__tcp_configuration =
  { destination_port_behavior; port; trace_route_enabled }

let test_configuration ?preferred_ip_version
    ?test_frequency_in_seconds ~name ~protocol ~http_configuration
    ~icmp_configuration ~success_threshold ~tcp_configuration () :
    test_configuration =
  {
    name;
    preferred_ip_version;
    protocol;
    test_frequency_in_seconds;
    http_configuration;
    icmp_configuration;
    success_threshold;
    tcp_configuration;
  }

let test_group ?enabled ~destination_endpoints ~name
    ~source_endpoints ~test_configuration_names () : test_group =
  {
    destination_endpoints;
    enabled;
    name;
    source_endpoints;
    test_configuration_names;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_connection_monitor ?id ?notes
    ?output_workspace_resource_ids ?tags ?timeouts ~location ~name
    ~network_watcher_id ~endpoint ~test_configuration ~test_group ()
    : azurerm_network_connection_monitor =
  {
    id;
    location;
    name;
    network_watcher_id;
    notes;
    output_workspace_resource_ids;
    tags;
    endpoint;
    test_configuration;
    test_group;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  network_watcher_id : string prop;
  notes : string prop;
  output_workspace_resource_ids : string list prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?notes ?output_workspace_resource_ids
    ?tags ?timeouts ~location ~name ~network_watcher_id ~endpoint
    ~test_configuration ~test_group __resource_id =
  let __resource_type = "azurerm_network_connection_monitor" in
  let __resource =
    azurerm_network_connection_monitor ?id ?notes
      ?output_workspace_resource_ids ?tags ?timeouts ~location ~name
      ~network_watcher_id ~endpoint ~test_configuration ~test_group
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_connection_monitor __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network_watcher_id =
         Prop.computed __resource_type __resource_id
           "network_watcher_id";
       notes = Prop.computed __resource_type __resource_id "notes";
       output_workspace_resource_ids =
         Prop.computed __resource_type __resource_id
           "output_workspace_resource_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
