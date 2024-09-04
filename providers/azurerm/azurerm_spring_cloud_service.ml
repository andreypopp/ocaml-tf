(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config_server_git_setting__http_basic_auth = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__http_basic_auth) -> ()

let yojson_of_config_server_git_setting__http_basic_auth =
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
    : config_server_git_setting__http_basic_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__http_basic_auth

[@@@deriving.end]

type config_server_git_setting__repository__http_basic_auth = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config_server_git_setting__repository__http_basic_auth) ->
  ()

let yojson_of_config_server_git_setting__repository__http_basic_auth
    =
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
    : config_server_git_setting__repository__http_basic_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config_server_git_setting__repository__http_basic_auth

[@@@deriving.end]

type config_server_git_setting__repository__ssh_auth = {
  host_key : string prop option; [@option]
  host_key_algorithm : string prop option; [@option]
  private_key : string prop;
  strict_host_key_checking_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config_server_git_setting__repository__ssh_auth) -> ()

let yojson_of_config_server_git_setting__repository__ssh_auth =
  (function
   | {
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       private_key = v_private_key;
       strict_host_key_checking_enabled =
         v_strict_host_key_checking_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strict_host_key_checking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_host_key_checking_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         match v_host_key_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__repository__ssh_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__repository__ssh_auth

[@@@deriving.end]

type config_server_git_setting__repository = {
  label : string prop option; [@option]
  name : string prop;
  pattern : string prop list option; [@option]
  search_paths : string prop list option; [@option]
  uri : string prop;
  http_basic_auth :
    config_server_git_setting__repository__http_basic_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh_auth : config_server_git_setting__repository__ssh_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__repository) -> ()

let yojson_of_config_server_git_setting__repository =
  (function
   | {
       label = v_label;
       name = v_name;
       pattern = v_pattern;
       search_paths = v_search_paths;
       uri = v_uri;
       http_basic_auth = v_http_basic_auth;
       ssh_auth = v_ssh_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssh_auth then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config_server_git_setting__repository__ssh_auth)
               v_ssh_auth
           in
           let bnd = "ssh_auth", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_basic_auth then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config_server_git_setting__repository__http_basic_auth)
               v_http_basic_auth
           in
           let bnd = "http_basic_auth", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_search_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "search_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "pattern", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__repository

[@@@deriving.end]

type config_server_git_setting__ssh_auth = {
  host_key : string prop option; [@option]
  host_key_algorithm : string prop option; [@option]
  private_key : string prop;
  strict_host_key_checking_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__ssh_auth) -> ()

let yojson_of_config_server_git_setting__ssh_auth =
  (function
   | {
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       private_key = v_private_key;
       strict_host_key_checking_enabled =
         v_strict_host_key_checking_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strict_host_key_checking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_host_key_checking_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         match v_host_key_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__ssh_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__ssh_auth

[@@@deriving.end]

type config_server_git_setting = {
  label : string prop option; [@option]
  search_paths : string prop list option; [@option]
  uri : string prop;
  http_basic_auth : config_server_git_setting__http_basic_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  repository : config_server_git_setting__repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh_auth : config_server_git_setting__ssh_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting) -> ()

let yojson_of_config_server_git_setting =
  (function
   | {
       label = v_label;
       search_paths = v_search_paths;
       uri = v_uri;
       http_basic_auth = v_http_basic_auth;
       repository = v_repository;
       ssh_auth = v_ssh_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssh_auth then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config_server_git_setting__ssh_auth)
               v_ssh_auth
           in
           let bnd = "ssh_auth", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config_server_git_setting__repository)
               v_repository
           in
           let bnd = "repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_basic_auth then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config_server_git_setting__http_basic_auth)
               v_http_basic_auth
           in
           let bnd = "http_basic_auth", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_search_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "search_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_server_git_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting

[@@@deriving.end]

type container_registry = {
  name : string prop;
  password : string prop;
  server : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_registry) -> ()

let yojson_of_container_registry =
  (function
   | {
       name = v_name;
       password = v_password;
       server = v_server;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : container_registry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_registry

[@@@deriving.end]

type default_build_service = {
  container_registry_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_build_service) -> ()

let yojson_of_default_build_service =
  (function
   | { container_registry_name = v_container_registry_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_container_registry_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_registry_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_build_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_build_service

[@@@deriving.end]

type marketplace = {
  plan : string prop;
  product : string prop;
  publisher : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : marketplace) -> ()

let yojson_of_marketplace =
  (function
   | { plan = v_plan; product = v_product; publisher = v_publisher }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product in
         ("product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plan in
         ("plan", arg) :: bnds
       in
       `Assoc bnds
    : marketplace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_marketplace

[@@@deriving.end]

type network = {
  app_network_resource_group : string prop option; [@option]
  app_subnet_id : string prop;
  cidr_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outbound_type : string prop option; [@option]
  read_timeout_seconds : float prop option; [@option]
  service_runtime_network_resource_group : string prop option;
      [@option]
  service_runtime_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | {
       app_network_resource_group = v_app_network_resource_group;
       app_subnet_id = v_app_subnet_id;
       cidr_ranges = v_cidr_ranges;
       outbound_type = v_outbound_type;
       read_timeout_seconds = v_read_timeout_seconds;
       service_runtime_network_resource_group =
         v_service_runtime_network_resource_group;
       service_runtime_subnet_id = v_service_runtime_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_service_runtime_subnet_id
         in
         ("service_runtime_subnet_id", arg) :: bnds
       in
       let bnds =
         match v_service_runtime_network_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "service_runtime_network_resource_group", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_read_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_type", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidr_ranges
           in
           let bnd = "cidr_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_subnet_id in
         ("app_subnet_id", arg) :: bnds
       in
       let bnds =
         match v_app_network_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_network_resource_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

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

type trace = {
  connection_string : string prop option; [@option]
  sample_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trace) -> ()

let yojson_of_trace =
  (function
   | {
       connection_string = v_connection_string;
       sample_rate = v_sample_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trace

[@@@deriving.end]

type required_network_traffic_rules = {
  direction : string prop;
  fqdns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_network_traffic_rules) -> ()

let yojson_of_required_network_traffic_rules =
  (function
   | {
       direction = v_direction;
       fqdns = v_fqdns;
       ip_addresses = v_ip_addresses;
       port = v_port;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fqdns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fqdns
           in
           let bnd = "fqdns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : required_network_traffic_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_network_traffic_rules

[@@@deriving.end]

type azurerm_spring_cloud_service = {
  build_agent_pool_size : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  log_stream_public_endpoint_enabled : bool prop option; [@option]
  managed_environment_id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  service_registry_enabled : bool prop option; [@option]
  sku_name : string prop option; [@option]
  sku_tier : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  zone_redundant : bool prop option; [@option]
  config_server_git_setting : config_server_git_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  container_registry : container_registry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_build_service : default_build_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  marketplace : marketplace list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network : network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  trace : trace list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_service) -> ()

let yojson_of_azurerm_spring_cloud_service =
  (function
   | {
       build_agent_pool_size = v_build_agent_pool_size;
       id = v_id;
       location = v_location;
       log_stream_public_endpoint_enabled =
         v_log_stream_public_endpoint_enabled;
       managed_environment_id = v_managed_environment_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       service_registry_enabled = v_service_registry_enabled;
       sku_name = v_sku_name;
       sku_tier = v_sku_tier;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       config_server_git_setting = v_config_server_git_setting;
       container_registry = v_container_registry;
       default_build_service = v_default_build_service;
       marketplace = v_marketplace;
       network = v_network;
       timeouts = v_timeouts;
       trace = v_trace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trace then bnds
         else
           let arg = (yojson_of_list yojson_of_trace) v_trace in
           let bnd = "trace", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network then bnds
         else
           let arg = (yojson_of_list yojson_of_network) v_network in
           let bnd = "network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_marketplace then bnds
         else
           let arg =
             (yojson_of_list yojson_of_marketplace) v_marketplace
           in
           let bnd = "marketplace", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_build_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_build_service)
               v_default_build_service
           in
           let bnd = "default_build_service", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_registry then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container_registry)
               v_container_registry
           in
           let bnd = "container_registry", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config_server_git_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config_server_git_setting)
               v_config_server_git_setting
           in
           let bnd = "config_server_git_setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_registry_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_registry_enabled", arg in
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
         match v_managed_environment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_environment_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_stream_public_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_stream_public_endpoint_enabled", arg in
             bnd :: bnds
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
       let bnds =
         match v_build_agent_pool_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_agent_pool_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_service

[@@@deriving.end]

let config_server_git_setting__http_basic_auth ~password ~username ()
    : config_server_git_setting__http_basic_auth =
  { password; username }

let config_server_git_setting__repository__http_basic_auth ~password
    ~username () :
    config_server_git_setting__repository__http_basic_auth =
  { password; username }

let config_server_git_setting__repository__ssh_auth ?host_key
    ?host_key_algorithm ?strict_host_key_checking_enabled
    ~private_key () : config_server_git_setting__repository__ssh_auth
    =
  {
    host_key;
    host_key_algorithm;
    private_key;
    strict_host_key_checking_enabled;
  }

let config_server_git_setting__repository ?label ?pattern
    ?search_paths ?(http_basic_auth = []) ?(ssh_auth = []) ~name ~uri
    () : config_server_git_setting__repository =
  {
    label;
    name;
    pattern;
    search_paths;
    uri;
    http_basic_auth;
    ssh_auth;
  }

let config_server_git_setting__ssh_auth ?host_key ?host_key_algorithm
    ?strict_host_key_checking_enabled ~private_key () :
    config_server_git_setting__ssh_auth =
  {
    host_key;
    host_key_algorithm;
    private_key;
    strict_host_key_checking_enabled;
  }

let config_server_git_setting ?label ?search_paths
    ?(http_basic_auth = []) ?(repository = []) ?(ssh_auth = []) ~uri
    () : config_server_git_setting =
  { label; search_paths; uri; http_basic_auth; repository; ssh_auth }

let container_registry ~name ~password ~server ~username () :
    container_registry =
  { name; password; server; username }

let default_build_service ?container_registry_name () :
    default_build_service =
  { container_registry_name }

let marketplace ~plan ~product ~publisher () : marketplace =
  { plan; product; publisher }

let network ?app_network_resource_group ?outbound_type
    ?read_timeout_seconds ?service_runtime_network_resource_group
    ~app_subnet_id ~cidr_ranges ~service_runtime_subnet_id () :
    network =
  {
    app_network_resource_group;
    app_subnet_id;
    cidr_ranges;
    outbound_type;
    read_timeout_seconds;
    service_runtime_network_resource_group;
    service_runtime_subnet_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trace ?connection_string ?sample_rate () : trace =
  { connection_string; sample_rate }

let azurerm_spring_cloud_service ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?(config_server_git_setting = [])
    ?(container_registry = []) ?(default_build_service = [])
    ?(marketplace = []) ?(network = []) ?timeouts ?(trace = [])
    ~location ~name ~resource_group_name () :
    azurerm_spring_cloud_service =
  {
    build_agent_pool_size;
    id;
    location;
    log_stream_public_endpoint_enabled;
    managed_environment_id;
    name;
    resource_group_name;
    service_registry_enabled;
    sku_name;
    sku_tier;
    tags;
    zone_redundant;
    config_server_git_setting;
    container_registry;
    default_build_service;
    marketplace;
    network;
    timeouts;
    trace;
  }

type t = {
  tf_name : string;
  build_agent_pool_size : string prop;
  id : string prop;
  location : string prop;
  log_stream_public_endpoint_enabled : bool prop;
  managed_environment_id : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    required_network_traffic_rules list prop;
  resource_group_name : string prop;
  service_registry_enabled : bool prop;
  service_registry_id : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : string Tf_core.assoc prop;
  zone_redundant : bool prop;
}

let make ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?(config_server_git_setting = [])
    ?(container_registry = []) ?(default_build_service = [])
    ?(marketplace = []) ?(network = []) ?timeouts ?(trace = [])
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_spring_cloud_service" in
  let __attrs =
    ({
       tf_name = __id;
       build_agent_pool_size =
         Prop.computed __type __id "build_agent_pool_size";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       log_stream_public_endpoint_enabled =
         Prop.computed __type __id
           "log_stream_public_endpoint_enabled";
       managed_environment_id =
         Prop.computed __type __id "managed_environment_id";
       name = Prop.computed __type __id "name";
       outbound_public_ip_addresses =
         Prop.computed __type __id "outbound_public_ip_addresses";
       required_network_traffic_rules =
         Prop.computed __type __id "required_network_traffic_rules";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_registry_enabled =
         Prop.computed __type __id "service_registry_enabled";
       service_registry_id =
         Prop.computed __type __id "service_registry_id";
       sku_name = Prop.computed __type __id "sku_name";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_service
        (azurerm_spring_cloud_service ?build_agent_pool_size ?id
           ?log_stream_public_endpoint_enabled
           ?managed_environment_id ?service_registry_enabled
           ?sku_name ?sku_tier ?tags ?zone_redundant
           ~config_server_git_setting ~container_registry
           ~default_build_service ~marketplace ~network ?timeouts
           ~trace ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?(config_server_git_setting = [])
    ?(container_registry = []) ?(default_build_service = [])
    ?(marketplace = []) ?(network = []) ?timeouts ?(trace = [])
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?build_agent_pool_size ?id
      ?log_stream_public_endpoint_enabled ?managed_environment_id
      ?service_registry_enabled ?sku_name ?sku_tier ?tags
      ?zone_redundant ~config_server_git_setting ~container_registry
      ~default_build_service ~marketplace ~network ?timeouts ~trace
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
