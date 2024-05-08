(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

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

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction__headers

[@@@deriving.end]

type site_config__scm_ip_restriction = {
  action : string prop;
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__scm_ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
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

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction__headers

[@@@deriving.end]

type site_config__ip_restriction = {
  action : string prop;
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
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

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  support_credentials : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_support_credentials
         in
         ("support_credentials", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__cors

[@@@deriving.end]

type site_config = {
  acr_use_managed_identity_credentials : bool prop;
  acr_user_managed_identity_client_id : string prop;
  always_on : bool prop;
  app_command_line : string prop;
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_documents : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dotnet_framework_version : string prop;
  ftps_state : string prop;
  health_check_path : string prop;
  http2_enabled : bool prop;
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  java_container : string prop;
  java_container_version : string prop;
  java_version : string prop;
  linux_fx_version : string prop;
  local_mysql_enabled : bool prop;
  managed_pipeline_mode : string prop;
  min_tls_version : string prop;
  number_of_workers : float prop;
  php_version : string prop;
  python_version : string prop;
  remote_debugging_enabled : bool prop;
  remote_debugging_version : string prop;
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scm_type : string prop;
  scm_use_main_ip_restriction : bool prop;
  use_32_bit_worker_process : bool prop;
  vnet_route_all_enabled : bool prop;
  websockets_enabled : bool prop;
  windows_fx_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config) -> ()

let yojson_of_site_config =
  (function
   | {
       acr_use_managed_identity_credentials =
         v_acr_use_managed_identity_credentials;
       acr_user_managed_identity_client_id =
         v_acr_user_managed_identity_client_id;
       always_on = v_always_on;
       app_command_line = v_app_command_line;
       cors = v_cors;
       default_documents = v_default_documents;
       dotnet_framework_version = v_dotnet_framework_version;
       ftps_state = v_ftps_state;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction = v_ip_restriction;
       java_container = v_java_container;
       java_container_version = v_java_container_version;
       java_version = v_java_version;
       linux_fx_version = v_linux_fx_version;
       local_mysql_enabled = v_local_mysql_enabled;
       managed_pipeline_mode = v_managed_pipeline_mode;
       min_tls_version = v_min_tls_version;
       number_of_workers = v_number_of_workers;
       php_version = v_php_version;
       python_version = v_python_version;
       remote_debugging_enabled = v_remote_debugging_enabled;
       remote_debugging_version = v_remote_debugging_version;
       scm_ip_restriction = v_scm_ip_restriction;
       scm_type = v_scm_type;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker_process = v_use_32_bit_worker_process;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       windows_fx_version = v_windows_fx_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_windows_fx_version
         in
         ("windows_fx_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_websockets_enabled
         in
         ("websockets_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_vnet_route_all_enabled
         in
         ("vnet_route_all_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_32_bit_worker_process
         in
         ("use_32_bit_worker_process", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_scm_use_main_ip_restriction
         in
         ("scm_use_main_ip_restriction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scm_type in
         ("scm_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scm_ip_restriction then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__scm_ip_restriction)
               v_scm_ip_restriction
           in
           let bnd = "scm_ip_restriction", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_debugging_version
         in
         ("remote_debugging_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_remote_debugging_enabled
         in
         ("remote_debugging_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_python_version
         in
         ("python_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_php_version in
         ("php_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_workers
         in
         ("number_of_workers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_tls_version
         in
         ("min_tls_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_pipeline_mode
         in
         ("managed_pipeline_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_local_mysql_enabled
         in
         ("local_mysql_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linux_fx_version
         in
         ("linux_fx_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_java_version in
         ("java_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_java_container_version
         in
         ("java_container_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_java_container
         in
         ("java_container", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_restriction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__ip_restriction)
               v_ip_restriction
           in
           let bnd = "ip_restriction", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_http2_enabled in
         ("http2_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_health_check_path
         in
         ("health_check_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ftps_state in
         ("ftps_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dotnet_framework_version
         in
         ("dotnet_framework_version", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_documents then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_default_documents
           in
           let bnd = "default_documents", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_command_line
         in
         ("app_command_line", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_always_on in
         ("always_on", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_acr_user_managed_identity_client_id
         in
         ("acr_user_managed_identity_client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_acr_use_managed_identity_credentials
         in
         ("acr_use_managed_identity_credentials", arg) :: bnds
       in
       `Assoc bnds
    : site_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config

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

type source_control = {
  branch : string prop;
  manual_integration : bool prop;
  repo_url : string prop;
  rollback_enabled : bool prop;
  use_mercurial : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_control) -> ()

let yojson_of_source_control =
  (function
   | {
       branch = v_branch;
       manual_integration = v_manual_integration;
       repo_url = v_repo_url;
       rollback_enabled = v_rollback_enabled;
       use_mercurial = v_use_mercurial;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_mercurial in
         ("use_mercurial", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_rollback_enabled
         in
         ("rollback_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_url in
         ("repo_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_manual_integration
         in
         ("manual_integration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : source_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_control

[@@@deriving.end]

type azurerm_app_service = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service) -> ()

let yojson_of_azurerm_app_service =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_app_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_service ?id ?timeouts ~name ~resource_group_name () :
    azurerm_app_service =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  client_cert_enabled : bool prop;
  connection_string : connection_string list prop;
  custom_domain_verification_id : string prop;
  default_site_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_config : site_config list prop;
  site_credential : site_credential list prop;
  source_control : source_control list prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_app_service" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       client_cert_enabled =
         Prop.computed __type __id "client_cert_enabled";
       connection_string =
         Prop.computed __type __id "connection_string";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       default_site_hostname =
         Prop.computed __type __id "default_site_hostname";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_address_list =
         Prop.computed __type __id "outbound_ip_address_list";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_address_list =
         Prop.computed __type __id
           "possible_outbound_ip_address_list";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_config = Prop.computed __type __id "site_config";
       site_credential = Prop.computed __type __id "site_credential";
       source_control = Prop.computed __type __id "source_control";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service
        (azurerm_app_service ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
