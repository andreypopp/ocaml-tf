(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_string = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_string) -> ()

let yojson_of_connection_string =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : connection_string -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_string

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type site_config__cors = {
  allowed_origins : string prop list;
  support_credentials : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__cors) -> ()

let yojson_of_site_config__cors =
  (function
   | {
       allowed_origins = v_allowed_origins;
       support_credentials = v_support_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_support_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       `Assoc bnds
    : site_config__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__cors

[@@@deriving.end]

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
  x_fd_health_probe : string prop list;
  x_forwarded_for : string prop list;
  x_forwarded_host : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction__headers) -> ()

let yojson_of_site_config__ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_host
         in
         ("x_forwarded_host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_for
         in
         ("x_forwarded_for", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_fd_health_probe
         in
         ("x_fd_health_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_azure_fdid
         in
         ("x_azure_fdid", arg) :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction__headers

[@@@deriving.end]

type site_config__ip_restriction = {
  action : string prop;
  headers : site_config__ip_restriction__headers list;
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction) -> ()

let yojson_of_site_config__ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_site_config__ip_restriction__headers v_headers
         in
         ("headers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction

[@@@deriving.end]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
  x_fd_health_probe : string prop list;
  x_forwarded_for : string prop list;
  x_forwarded_host : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction__headers) -> ()

let yojson_of_site_config__scm_ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_host
         in
         ("x_forwarded_host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_for
         in
         ("x_forwarded_for", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_fd_health_probe
         in
         ("x_fd_health_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_azure_fdid
         in
         ("x_azure_fdid", arg) :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction__headers

[@@@deriving.end]

type site_config__scm_ip_restriction = {
  action : string prop;
  headers : site_config__scm_ip_restriction__headers list;
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction) -> ()

let yojson_of_site_config__scm_ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_site_config__scm_ip_restriction__headers
             v_headers
         in
         ("headers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction

[@@@deriving.end]

type site_config = {
  always_on : bool prop option; [@option]
  app_scale_limit : float prop option; [@option]
  dotnet_framework_version : string prop option; [@option]
  elastic_instance_minimum : float prop option; [@option]
  ftps_state : string prop option; [@option]
  health_check_path : string prop option; [@option]
  http2_enabled : bool prop option; [@option]
  ip_restriction : site_config__ip_restriction list option; [@option]
  linux_fx_version : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  pre_warmed_instance_count : float prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  runtime_scale_monitoring_enabled : bool prop option; [@option]
  scm_ip_restriction : site_config__scm_ip_restriction list option;
      [@option]
  scm_min_tls_version : string prop option; [@option]
  scm_type : string prop option; [@option]
  scm_use_main_ip_restriction : bool prop option; [@option]
  use_32_bit_worker_process : bool prop option; [@option]
  vnet_route_all_enabled : bool prop option; [@option]
  websockets_enabled : bool prop option; [@option]
  cors : site_config__cors list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config) -> ()

let yojson_of_site_config =
  (function
   | {
       always_on = v_always_on;
       app_scale_limit = v_app_scale_limit;
       dotnet_framework_version = v_dotnet_framework_version;
       elastic_instance_minimum = v_elastic_instance_minimum;
       ftps_state = v_ftps_state;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction = v_ip_restriction;
       linux_fx_version = v_linux_fx_version;
       min_tls_version = v_min_tls_version;
       pre_warmed_instance_count = v_pre_warmed_instance_count;
       public_network_access_enabled =
         v_public_network_access_enabled;
       runtime_scale_monitoring_enabled =
         v_runtime_scale_monitoring_enabled;
       scm_ip_restriction = v_scm_ip_restriction;
       scm_min_tls_version = v_scm_min_tls_version;
       scm_type = v_scm_type;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker_process = v_use_32_bit_worker_process;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       cors = v_cors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         match v_websockets_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "websockets_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vnet_route_all_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vnet_route_all_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_32_bit_worker_process with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_32_bit_worker_process", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_use_main_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scm_use_main_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_site_config__scm_ip_restriction v
             in
             let bnd = "scm_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_scale_monitoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "runtime_scale_monitoring_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_warmed_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pre_warmed_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linux_fx_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linux_fx_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_site_config__ip_restriction v
             in
             let bnd = "ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ftps_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ftps_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_instance_minimum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "elastic_instance_minimum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dotnet_framework_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dotnet_framework_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_scale_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_scale_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_on", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config

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

type site_credential = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_credential) -> ()

let yojson_of_site_credential =
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
    : site_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_credential

[@@@deriving.end]

type azurerm_logic_app_standard = {
  app_service_plan_id : string prop;
  app_settings : (string * string prop) list option; [@option]
  bundle_version : string prop option; [@option]
  client_affinity_enabled : bool prop option; [@option]
  client_certificate_mode : string prop option; [@option]
  enabled : bool prop option; [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_account_share_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  use_extension_bundle : bool prop option; [@option]
  version : string prop option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
  connection_string : connection_string list;
  identity : identity list;
  site_config : site_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_standard) -> ()

let yojson_of_azurerm_logic_app_standard =
  (function
   | {
       app_service_plan_id = v_app_service_plan_id;
       app_settings = v_app_settings;
       bundle_version = v_bundle_version;
       client_affinity_enabled = v_client_affinity_enabled;
       client_certificate_mode = v_client_certificate_mode;
       enabled = v_enabled;
       https_only = v_https_only;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       storage_account_access_key = v_storage_account_access_key;
       storage_account_name = v_storage_account_name;
       storage_account_share_name = v_storage_account_share_name;
       tags = v_tags;
       use_extension_bundle = v_use_extension_bundle;
       version = v_version;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
       connection_string = v_connection_string;
       identity = v_identity;
       site_config = v_site_config;
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
         let arg =
           yojson_of_list yojson_of_site_config v_site_config
         in
         ("site_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connection_string
             v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_extension_bundle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_extension_bundle", arg in
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
         match v_storage_account_share_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_share_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_account_access_key
         in
         ("storage_account_access_key", arg) :: bnds
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
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
         match v_client_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_affinity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_affinity_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bundle_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings with
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
             let bnd = "app_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_plan_id
         in
         ("app_service_plan_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_standard -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_standard

[@@@deriving.end]

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?always_on ?app_scale_limit ?dotnet_framework_version
    ?elastic_instance_minimum ?ftps_state ?health_check_path
    ?http2_enabled ?ip_restriction ?linux_fx_version ?min_tls_version
    ?pre_warmed_instance_count ?public_network_access_enabled
    ?runtime_scale_monitoring_enabled ?scm_ip_restriction
    ?scm_min_tls_version ?scm_type ?scm_use_main_ip_restriction
    ?use_32_bit_worker_process ?vnet_route_all_enabled
    ?websockets_enabled ?(cors = []) () : site_config =
  {
    always_on;
    app_scale_limit;
    dotnet_framework_version;
    elastic_instance_minimum;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    linux_fx_version;
    min_tls_version;
    pre_warmed_instance_count;
    public_network_access_enabled;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction;
    scm_min_tls_version;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    cors;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_standard ?app_settings ?bundle_version
    ?client_affinity_enabled ?client_certificate_mode ?enabled
    ?https_only ?id ?storage_account_share_name ?tags
    ?use_extension_bundle ?version ?virtual_network_subnet_id
    ?(identity = []) ?(site_config = []) ?timeouts
    ~app_service_plan_id ~location ~name ~resource_group_name
    ~storage_account_access_key ~storage_account_name
    ~connection_string () : azurerm_logic_app_standard =
  {
    app_service_plan_id;
    app_settings;
    bundle_version;
    client_affinity_enabled;
    client_certificate_mode;
    enabled;
    https_only;
    id;
    location;
    name;
    resource_group_name;
    storage_account_access_key;
    storage_account_name;
    storage_account_share_name;
    tags;
    use_extension_bundle;
    version;
    virtual_network_subnet_id;
    connection_string;
    identity;
    site_config;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  bundle_version : string prop;
  client_affinity_enabled : bool prop;
  client_certificate_mode : string prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_account_share_name : string prop;
  tags : (string * string) list prop;
  use_extension_bundle : bool prop;
  version : string prop;
  virtual_network_subnet_id : string prop;
}

let make ?app_settings ?bundle_version ?client_affinity_enabled
    ?client_certificate_mode ?enabled ?https_only ?id
    ?storage_account_share_name ?tags ?use_extension_bundle ?version
    ?virtual_network_subnet_id ?(identity = []) ?(site_config = [])
    ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~connection_string __id =
  let __type = "azurerm_logic_app_standard" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       bundle_version = Prop.computed __type __id "bundle_version";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_credential = Prop.computed __type __id "site_credential";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_account_share_name =
         Prop.computed __type __id "storage_account_share_name";
       tags = Prop.computed __type __id "tags";
       use_extension_bundle =
         Prop.computed __type __id "use_extension_bundle";
       version = Prop.computed __type __id "version";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_standard
        (azurerm_logic_app_standard ?app_settings ?bundle_version
           ?client_affinity_enabled ?client_certificate_mode ?enabled
           ?https_only ?id ?storage_account_share_name ?tags
           ?use_extension_bundle ?version ?virtual_network_subnet_id
           ~identity ~site_config ?timeouts ~app_service_plan_id
           ~location ~name ~resource_group_name
           ~storage_account_access_key ~storage_account_name
           ~connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?bundle_version
    ?client_affinity_enabled ?client_certificate_mode ?enabled
    ?https_only ?id ?storage_account_share_name ?tags
    ?use_extension_bundle ?version ?virtual_network_subnet_id
    ?(identity = []) ?(site_config = []) ?timeouts
    ~app_service_plan_id ~location ~name ~resource_group_name
    ~storage_account_access_key ~storage_account_name
    ~connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?bundle_version ?client_affinity_enabled
      ?client_certificate_mode ?enabled ?https_only ?id
      ?storage_account_share_name ?tags ?use_extension_bundle
      ?version ?virtual_network_subnet_id ~identity ~site_config
      ?timeouts ~app_service_plan_id ~location ~name
      ~resource_group_name ~storage_account_access_key
      ~storage_account_name ~connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
