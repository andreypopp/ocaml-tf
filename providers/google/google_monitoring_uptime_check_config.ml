(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_matchers__json_path_matcher = {
  json_matcher : string prop option; [@option]
  json_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_matchers__json_path_matcher) -> ()

let yojson_of_content_matchers__json_path_matcher =
  (function
   | { json_matcher = v_json_matcher; json_path = v_json_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_json_path in
         ("json_path", arg) :: bnds
       in
       let bnds =
         match v_json_matcher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "json_matcher", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : content_matchers__json_path_matcher ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_matchers__json_path_matcher

[@@@deriving.end]

type content_matchers = {
  content : string prop;
  matcher : string prop option; [@option]
  json_path_matcher : content_matchers__json_path_matcher list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_matchers) -> ()

let yojson_of_content_matchers =
  (function
   | {
       content = v_content;
       matcher = v_matcher;
       json_path_matcher = v_json_path_matcher;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_json_path_matcher then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_content_matchers__json_path_matcher)
               v_json_path_matcher
           in
           let bnd = "json_path_matcher", arg in
           bnd :: bnds
       in
       let bnds =
         match v_matcher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "matcher", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : content_matchers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_matchers

[@@@deriving.end]

type http_check__accepted_response_status_codes = {
  status_class : string prop option; [@option]
  status_value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_check__accepted_response_status_codes) -> ()

let yojson_of_http_check__accepted_response_status_codes =
  (function
   | { status_class = v_status_class; status_value = v_status_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status_class", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_check__accepted_response_status_codes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_check__accepted_response_status_codes

[@@@deriving.end]

type http_check__auth_info = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_check__auth_info) -> ()

let yojson_of_http_check__auth_info =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : http_check__auth_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_check__auth_info

[@@@deriving.end]

type http_check__ping_config = { pings_count : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : http_check__ping_config) -> ()

let yojson_of_http_check__ping_config =
  (function
   | { pings_count = v_pings_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pings_count in
         ("pings_count", arg) :: bnds
       in
       `Assoc bnds
    : http_check__ping_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_check__ping_config

[@@@deriving.end]

type http_check = {
  body : string prop option; [@option]
  content_type : string prop option; [@option]
  custom_content_type : string prop option; [@option]
  headers : (string * string prop) list option; [@option]
  mask_headers : bool prop option; [@option]
  path : string prop option; [@option]
  port : float prop option; [@option]
  request_method : string prop option; [@option]
  use_ssl : bool prop option; [@option]
  validate_ssl : bool prop option; [@option]
  accepted_response_status_codes :
    http_check__accepted_response_status_codes list;
      [@default []] [@yojson_drop_default ( = )]
  auth_info : http_check__auth_info list;
      [@default []] [@yojson_drop_default ( = )]
  ping_config : http_check__ping_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_check) -> ()

let yojson_of_http_check =
  (function
   | {
       body = v_body;
       content_type = v_content_type;
       custom_content_type = v_custom_content_type;
       headers = v_headers;
       mask_headers = v_mask_headers;
       path = v_path;
       port = v_port;
       request_method = v_request_method;
       use_ssl = v_use_ssl;
       validate_ssl = v_validate_ssl;
       accepted_response_status_codes =
         v_accepted_response_status_codes;
       auth_info = v_auth_info;
       ping_config = v_ping_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ping_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_check__ping_config)
               v_ping_config
           in
           let bnd = "ping_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_auth_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_check__auth_info)
               v_auth_info
           in
           let bnd = "auth_info", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_accepted_response_status_codes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_check__accepted_response_status_codes)
               v_accepted_response_status_codes
           in
           let bnd = "accepted_response_status_codes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_validate_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_method", arg in
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
         match v_mask_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mask_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
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
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_check

[@@@deriving.end]

type monitored_resource = {
  labels : (string * string prop) list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitored_resource) -> ()

let yojson_of_monitored_resource =
  (function
   | { labels = v_labels; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : monitored_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitored_resource

[@@@deriving.end]

type resource_group = {
  group_id : string prop option; [@option]
  resource_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_group) -> ()

let yojson_of_resource_group =
  (function
   | { group_id = v_group_id; resource_type = v_resource_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_group

[@@@deriving.end]

type synthetic_monitor__cloud_function_v2 = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : synthetic_monitor__cloud_function_v2) -> ()

let yojson_of_synthetic_monitor__cloud_function_v2 =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : synthetic_monitor__cloud_function_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_synthetic_monitor__cloud_function_v2

[@@@deriving.end]

type synthetic_monitor = {
  cloud_function_v2 : synthetic_monitor__cloud_function_v2 list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : synthetic_monitor) -> ()

let yojson_of_synthetic_monitor =
  (function
   | { cloud_function_v2 = v_cloud_function_v2 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cloud_function_v2 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_synthetic_monitor__cloud_function_v2)
               v_cloud_function_v2
           in
           let bnd = "cloud_function_v2", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : synthetic_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_synthetic_monitor

[@@@deriving.end]

type tcp_check__ping_config = { pings_count : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : tcp_check__ping_config) -> ()

let yojson_of_tcp_check__ping_config =
  (function
   | { pings_count = v_pings_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pings_count in
         ("pings_count", arg) :: bnds
       in
       `Assoc bnds
    : tcp_check__ping_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tcp_check__ping_config

[@@@deriving.end]

type tcp_check = {
  port : float prop;
  ping_config : tcp_check__ping_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tcp_check) -> ()

let yojson_of_tcp_check =
  (function
   | { port = v_port; ping_config = v_ping_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ping_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tcp_check__ping_config)
               v_ping_config
           in
           let bnd = "ping_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : tcp_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tcp_check

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_monitoring_uptime_check_config = {
  checker_type : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  period : string prop option; [@option]
  project : string prop option; [@option]
  selected_regions : string prop list option; [@option]
  timeout : string prop;
  user_labels : (string * string prop) list option; [@option]
  content_matchers : content_matchers list;
      [@default []] [@yojson_drop_default ( = )]
  http_check : http_check list;
      [@default []] [@yojson_drop_default ( = )]
  monitored_resource : monitored_resource list;
      [@default []] [@yojson_drop_default ( = )]
  resource_group : resource_group list;
      [@default []] [@yojson_drop_default ( = )]
  synthetic_monitor : synthetic_monitor list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_check : tcp_check list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_uptime_check_config) -> ()

let yojson_of_google_monitoring_uptime_check_config =
  (function
   | {
       checker_type = v_checker_type;
       display_name = v_display_name;
       id = v_id;
       period = v_period;
       project = v_project;
       selected_regions = v_selected_regions;
       timeout = v_timeout;
       user_labels = v_user_labels;
       content_matchers = v_content_matchers;
       http_check = v_http_check;
       monitored_resource = v_monitored_resource;
       resource_group = v_resource_group;
       synthetic_monitor = v_synthetic_monitor;
       tcp_check = v_tcp_check;
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
         if [] = v_tcp_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tcp_check) v_tcp_check
           in
           let bnd = "tcp_check", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_synthetic_monitor then bnds
         else
           let arg =
             (yojson_of_list yojson_of_synthetic_monitor)
               v_synthetic_monitor
           in
           let bnd = "synthetic_monitor", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_group)
               v_resource_group
           in
           let bnd = "resource_group", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_monitored_resource then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitored_resource)
               v_monitored_resource
           in
           let bnd = "monitored_resource", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_check) v_http_check
           in
           let bnd = "http_check", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_content_matchers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_content_matchers)
               v_content_matchers
           in
           let bnd = "content_matchers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_labels with
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
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         match v_selected_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "selected_regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_checker_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "checker_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_monitoring_uptime_check_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_uptime_check_config

[@@@deriving.end]

let content_matchers__json_path_matcher ?json_matcher ~json_path () :
    content_matchers__json_path_matcher =
  { json_matcher; json_path }

let content_matchers ?matcher ?(json_path_matcher = []) ~content () :
    content_matchers =
  { content; matcher; json_path_matcher }

let http_check__accepted_response_status_codes ?status_class
    ?status_value () : http_check__accepted_response_status_codes =
  { status_class; status_value }

let http_check__auth_info ~password ~username () :
    http_check__auth_info =
  { password; username }

let http_check__ping_config ~pings_count () : http_check__ping_config
    =
  { pings_count }

let http_check ?body ?content_type ?custom_content_type ?headers
    ?mask_headers ?path ?port ?request_method ?use_ssl ?validate_ssl
    ?(accepted_response_status_codes = []) ?(auth_info = [])
    ?(ping_config = []) () : http_check =
  {
    body;
    content_type;
    custom_content_type;
    headers;
    mask_headers;
    path;
    port;
    request_method;
    use_ssl;
    validate_ssl;
    accepted_response_status_codes;
    auth_info;
    ping_config;
  }

let monitored_resource ~labels ~type_ () : monitored_resource =
  { labels; type_ }

let resource_group ?group_id ?resource_type () : resource_group =
  { group_id; resource_type }

let synthetic_monitor__cloud_function_v2 ~name () :
    synthetic_monitor__cloud_function_v2 =
  { name }

let synthetic_monitor ~cloud_function_v2 () : synthetic_monitor =
  { cloud_function_v2 }

let tcp_check__ping_config ~pings_count () : tcp_check__ping_config =
  { pings_count }

let tcp_check ?(ping_config = []) ~port () : tcp_check =
  { port; ping_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_uptime_check_config ?checker_type ?id ?period
    ?project ?selected_regions ?user_labels ?(content_matchers = [])
    ?(http_check = []) ?(monitored_resource = [])
    ?(resource_group = []) ?(synthetic_monitor = [])
    ?(tcp_check = []) ?timeouts ~display_name ~timeout () :
    google_monitoring_uptime_check_config =
  {
    checker_type;
    display_name;
    id;
    period;
    project;
    selected_regions;
    timeout;
    user_labels;
    content_matchers;
    http_check;
    monitored_resource;
    resource_group;
    synthetic_monitor;
    tcp_check;
    timeouts;
  }

type t = {
  tf_name : string;
  checker_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  project : string prop;
  selected_regions : string list prop;
  timeout : string prop;
  uptime_check_id : string prop;
  user_labels : (string * string) list prop;
}

let make ?checker_type ?id ?period ?project ?selected_regions
    ?user_labels ?(content_matchers = []) ?(http_check = [])
    ?(monitored_resource = []) ?(resource_group = [])
    ?(synthetic_monitor = []) ?(tcp_check = []) ?timeouts
    ~display_name ~timeout __id =
  let __type = "google_monitoring_uptime_check_config" in
  let __attrs =
    ({
       tf_name = __id;
       checker_type = Prop.computed __type __id "checker_type";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       period = Prop.computed __type __id "period";
       project = Prop.computed __type __id "project";
       selected_regions =
         Prop.computed __type __id "selected_regions";
       timeout = Prop.computed __type __id "timeout";
       uptime_check_id = Prop.computed __type __id "uptime_check_id";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_uptime_check_config
        (google_monitoring_uptime_check_config ?checker_type ?id
           ?period ?project ?selected_regions ?user_labels
           ~content_matchers ~http_check ~monitored_resource
           ~resource_group ~synthetic_monitor ~tcp_check ?timeouts
           ~display_name ~timeout ());
    attrs = __attrs;
  }

let register ?tf_module ?checker_type ?id ?period ?project
    ?selected_regions ?user_labels ?(content_matchers = [])
    ?(http_check = []) ?(monitored_resource = [])
    ?(resource_group = []) ?(synthetic_monitor = [])
    ?(tcp_check = []) ?timeouts ~display_name ~timeout __id =
  let (r : _ Tf_core.resource) =
    make ?checker_type ?id ?period ?project ?selected_regions
      ?user_labels ~content_matchers ~http_check ~monitored_resource
      ~resource_group ~synthetic_monitor ~tcp_check ?timeouts
      ~display_name ~timeout __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
