(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint__filter__item = {
  address : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__filter__item) -> ()

let yojson_of_endpoint__filter__item =
  (function
   | { address = v_address; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint__filter__item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__filter__item

[@@@deriving.end]

type endpoint__filter = {
  type_ : string prop option; [@option] [@key "type"]
  item : endpoint__filter__item list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__filter) -> ()

let yojson_of_endpoint__filter =
  (function
   | { type_ = v_type_; item = v_item } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_item then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint__filter__item) v_item
           in
           let bnd = "item", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__filter

[@@@deriving.end]

type endpoint = {
  address : string prop option; [@option]
  coverage_level : string prop option; [@option]
  excluded_ip_addresses : string prop list option; [@option]
  included_ip_addresses : string prop list option; [@option]
  name : string prop;
  target_resource_id : string prop option; [@option]
  target_resource_type : string prop option; [@option]
  filter : endpoint__filter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       address = v_address;
       coverage_level = v_coverage_level;
       excluded_ip_addresses = v_excluded_ip_addresses;
       included_ip_addresses = v_included_ip_addresses;
       name = v_name;
       target_resource_id = v_target_resource_id;
       target_resource_type = v_target_resource_type;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint__filter) v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_included_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coverage_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coverage_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type test_configuration__http_configuration__request_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_configuration__http_configuration__request_header) ->
  ()

let yojson_of_test_configuration__http_configuration__request_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : test_configuration__http_configuration__request_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_configuration__http_configuration__request_header

[@@@deriving.end]

type test_configuration__http_configuration = {
  method_ : string prop option; [@option] [@key "method"]
  path : string prop option; [@option]
  port : float prop option; [@option]
  prefer_https : bool prop option; [@option]
  valid_status_code_ranges : string prop list option; [@option]
  request_header :
    test_configuration__http_configuration__request_header list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_configuration__http_configuration) -> ()

let yojson_of_test_configuration__http_configuration =
  (function
   | {
       method_ = v_method_;
       path = v_path;
       port = v_port;
       prefer_https = v_prefer_https;
       valid_status_code_ranges = v_valid_status_code_ranges;
       request_header = v_request_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_request_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_test_configuration__http_configuration__request_header)
               v_request_header
           in
           let bnd = "request_header", arg in
           bnd :: bnds
       in
       let bnds =
         match v_valid_status_code_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "valid_status_code_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefer_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prefer_https", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
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
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_configuration__http_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_configuration__http_configuration

[@@@deriving.end]

type test_configuration__icmp_configuration = {
  trace_route_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_configuration__icmp_configuration) -> ()

let yojson_of_test_configuration__icmp_configuration =
  (function
   | { trace_route_enabled = v_trace_route_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trace_route_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trace_route_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_configuration__icmp_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_configuration__icmp_configuration

[@@@deriving.end]

type test_configuration__success_threshold = {
  checks_failed_percent : float prop option; [@option]
  round_trip_time_ms : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_configuration__success_threshold) -> ()

let yojson_of_test_configuration__success_threshold =
  (function
   | {
       checks_failed_percent = v_checks_failed_percent;
       round_trip_time_ms = v_round_trip_time_ms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_round_trip_time_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "round_trip_time_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checks_failed_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "checks_failed_percent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_configuration__success_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_configuration__success_threshold

[@@@deriving.end]

type test_configuration__tcp_configuration = {
  destination_port_behavior : string prop option; [@option]
  port : float prop;
  trace_route_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_configuration__tcp_configuration) -> ()

let yojson_of_test_configuration__tcp_configuration =
  (function
   | {
       destination_port_behavior = v_destination_port_behavior;
       port = v_port;
       trace_route_enabled = v_trace_route_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trace_route_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trace_route_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_destination_port_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_port_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_configuration__tcp_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_configuration__tcp_configuration

[@@@deriving.end]

type test_configuration = {
  name : string prop;
  preferred_ip_version : string prop option; [@option]
  protocol : string prop;
  test_frequency_in_seconds : float prop option; [@option]
  http_configuration : test_configuration__http_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  icmp_configuration : test_configuration__icmp_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  success_threshold : test_configuration__success_threshold list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_configuration : test_configuration__tcp_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_configuration) -> ()

let yojson_of_test_configuration =
  (function
   | {
       name = v_name;
       preferred_ip_version = v_preferred_ip_version;
       protocol = v_protocol;
       test_frequency_in_seconds = v_test_frequency_in_seconds;
       http_configuration = v_http_configuration;
       icmp_configuration = v_icmp_configuration;
       success_threshold = v_success_threshold;
       tcp_configuration = v_tcp_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tcp_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_test_configuration__tcp_configuration)
               v_tcp_configuration
           in
           let bnd = "tcp_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_success_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_test_configuration__success_threshold)
               v_success_threshold
           in
           let bnd = "success_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_icmp_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_test_configuration__icmp_configuration)
               v_icmp_configuration
           in
           let bnd = "icmp_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_test_configuration__http_configuration)
               v_http_configuration
           in
           let bnd = "http_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_test_frequency_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "test_frequency_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_preferred_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_ip_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : test_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_configuration

[@@@deriving.end]

type test_group = {
  destination_endpoints : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  enabled : bool prop option; [@option]
  name : string prop;
  source_endpoints : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  test_configuration_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_group) -> ()

let yojson_of_test_group =
  (function
   | {
       destination_endpoints = v_destination_endpoints;
       enabled = v_enabled;
       name = v_name;
       source_endpoints = v_source_endpoints;
       test_configuration_names = v_test_configuration_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_test_configuration_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_test_configuration_names
           in
           let bnd = "test_configuration_names", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source_endpoints then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_endpoints
           in
           let bnd = "source_endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         if [] = v_destination_endpoints then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_endpoints
           in
           let bnd = "destination_endpoints", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : test_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_group

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

type azurerm_network_connection_monitor = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  network_watcher_id : string prop;
  notes : string prop option; [@option]
  output_workspace_resource_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  endpoint : endpoint list;
      [@default []] [@yojson_drop_default ( = )]
  test_configuration : test_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  test_group : test_group list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_connection_monitor) -> ()

let yojson_of_azurerm_network_connection_monitor =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       network_watcher_id = v_network_watcher_id;
       notes = v_notes;
       output_workspace_resource_ids =
         v_output_workspace_resource_ids;
       tags = v_tags;
       endpoint = v_endpoint;
       test_configuration = v_test_configuration;
       test_group = v_test_group;
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
         if [] = v_test_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_test_group) v_test_group
           in
           let bnd = "test_group", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_test_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_test_configuration)
               v_test_configuration
           in
           let bnd = "test_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint) v_endpoint
           in
           let bnd = "endpoint", arg in
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
         match v_output_workspace_resource_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "output_workspace_resource_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_watcher_id
         in
         ("network_watcher_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_network_connection_monitor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_connection_monitor

[@@@deriving.end]

let endpoint__filter__item ?address ?type_ () :
    endpoint__filter__item =
  { address; type_ }

let endpoint__filter ?type_ ~item () : endpoint__filter =
  { type_; item }

let endpoint ?address ?coverage_level ?excluded_ip_addresses
    ?included_ip_addresses ?target_resource_id ?target_resource_type
    ?(filter = []) ~name () : endpoint =
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
    ?test_frequency_in_seconds ?(http_configuration = [])
    ?(icmp_configuration = []) ?(success_threshold = [])
    ?(tcp_configuration = []) ~name ~protocol () : test_configuration
    =
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
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  network_watcher_id : string prop;
  notes : string prop;
  output_workspace_resource_ids : string list prop;
  tags : (string * string) list prop;
}

let make ?id ?notes ?output_workspace_resource_ids ?tags ?timeouts
    ~location ~name ~network_watcher_id ~endpoint ~test_configuration
    ~test_group __id =
  let __type = "azurerm_network_connection_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_watcher_id =
         Prop.computed __type __id "network_watcher_id";
       notes = Prop.computed __type __id "notes";
       output_workspace_resource_ids =
         Prop.computed __type __id "output_workspace_resource_ids";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_connection_monitor
        (azurerm_network_connection_monitor ?id ?notes
           ?output_workspace_resource_ids ?tags ?timeouts ~location
           ~name ~network_watcher_id ~endpoint ~test_configuration
           ~test_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?output_workspace_resource_ids
    ?tags ?timeouts ~location ~name ~network_watcher_id ~endpoint
    ~test_configuration ~test_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?output_workspace_resource_ids ?tags ?timeouts
      ~location ~name ~network_watcher_id ~endpoint
      ~test_configuration ~test_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
