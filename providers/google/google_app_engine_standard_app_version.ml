(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type automatic_scaling__standard_scheduler_settings = {
  max_instances : float prop option; [@option]
  min_instances : float prop option; [@option]
  target_cpu_utilization : float prop option; [@option]
  target_throughput_utilization : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : automatic_scaling__standard_scheduler_settings) -> ()

let yojson_of_automatic_scaling__standard_scheduler_settings =
  (function
   | {
       max_instances = v_max_instances;
       min_instances = v_min_instances;
       target_cpu_utilization = v_target_cpu_utilization;
       target_throughput_utilization =
         v_target_throughput_utilization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_throughput_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_throughput_utilization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_cpu_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_cpu_utilization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instances", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling__standard_scheduler_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling__standard_scheduler_settings

[@@@deriving.end]

type automatic_scaling = {
  max_concurrent_requests : float prop option; [@option]
  max_idle_instances : float prop option; [@option]
  max_pending_latency : string prop option; [@option]
  min_idle_instances : float prop option; [@option]
  min_pending_latency : string prop option; [@option]
  standard_scheduler_settings :
    automatic_scaling__standard_scheduler_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling) -> ()

let yojson_of_automatic_scaling =
  (function
   | {
       max_concurrent_requests = v_max_concurrent_requests;
       max_idle_instances = v_max_idle_instances;
       max_pending_latency = v_max_pending_latency;
       min_idle_instances = v_min_idle_instances;
       min_pending_latency = v_min_pending_latency;
       standard_scheduler_settings = v_standard_scheduler_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_standard_scheduler_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_automatic_scaling__standard_scheduler_settings)
               v_standard_scheduler_settings
           in
           let bnd = "standard_scheduler_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_min_pending_latency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_pending_latency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_idle_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_idle_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_pending_latency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_pending_latency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_idle_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_idle_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_requests", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling

[@@@deriving.end]

type basic_scaling = {
  idle_timeout : string prop option; [@option]
  max_instances : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_scaling) -> ()

let yojson_of_basic_scaling =
  (function
   | {
       idle_timeout = v_idle_timeout;
       max_instances = v_max_instances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_instances in
         ("max_instances", arg) :: bnds
       in
       let bnds =
         match v_idle_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idle_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : basic_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_scaling

[@@@deriving.end]

type deployment__files = {
  name : string prop;
  sha1_sum : string prop option; [@option]
  source_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment__files) -> ()

let yojson_of_deployment__files =
  (function
   | {
       name = v_name;
       sha1_sum = v_sha1_sum;
       source_url = v_source_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_url in
         ("source_url", arg) :: bnds
       in
       let bnds =
         match v_sha1_sum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha1_sum", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deployment__files -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment__files

[@@@deriving.end]

type deployment__zip = {
  files_count : float prop option; [@option]
  source_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment__zip) -> ()

let yojson_of_deployment__zip =
  (function
   | { files_count = v_files_count; source_url = v_source_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_url in
         ("source_url", arg) :: bnds
       in
       let bnds =
         match v_files_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "files_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment__zip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment__zip

[@@@deriving.end]

type deployment = {
  files : deployment__files list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zip : deployment__zip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment) -> ()

let yojson_of_deployment =
  (function
   | { files = v_files; zip = v_zip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment__zip) v_zip
           in
           let bnd = "zip", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_files then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment__files) v_files
           in
           let bnd = "files", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment

[@@@deriving.end]

type entrypoint = { shell : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : entrypoint) -> ()

let yojson_of_entrypoint =
  (function
   | { shell = v_shell } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_shell in
         ("shell", arg) :: bnds
       in
       `Assoc bnds
    : entrypoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entrypoint

[@@@deriving.end]

type handlers__script = { script_path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : handlers__script) -> ()

let yojson_of_handlers__script =
  (function
   | { script_path = v_script_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script_path in
         ("script_path", arg) :: bnds
       in
       `Assoc bnds
    : handlers__script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_handlers__script

[@@@deriving.end]

type handlers__static_files = {
  application_readable : bool prop option; [@option]
  expiration : string prop option; [@option]
  http_headers : (string * string prop) list option; [@option]
  mime_type : string prop option; [@option]
  path : string prop option; [@option]
  require_matching_file : bool prop option; [@option]
  upload_path_regex : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : handlers__static_files) -> ()

let yojson_of_handlers__static_files =
  (function
   | {
       application_readable = v_application_readable;
       expiration = v_expiration;
       http_headers = v_http_headers;
       mime_type = v_mime_type;
       path = v_path;
       require_matching_file = v_require_matching_file;
       upload_path_regex = v_upload_path_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_upload_path_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upload_path_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_matching_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_matching_file", arg in
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
         match v_mime_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mime_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_headers with
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
             let bnd = "http_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_readable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "application_readable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : handlers__static_files -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_handlers__static_files

[@@@deriving.end]

type handlers = {
  auth_fail_action : string prop option; [@option]
  login : string prop option; [@option]
  redirect_http_response_code : string prop option; [@option]
  security_level : string prop option; [@option]
  url_regex : string prop option; [@option]
  script : handlers__script list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  static_files : handlers__static_files list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : handlers) -> ()

let yojson_of_handlers =
  (function
   | {
       auth_fail_action = v_auth_fail_action;
       login = v_login;
       redirect_http_response_code = v_redirect_http_response_code;
       security_level = v_security_level;
       url_regex = v_url_regex;
       script = v_script;
       static_files = v_static_files;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_static_files then bnds
         else
           let arg =
             (yojson_of_list yojson_of_handlers__static_files)
               v_static_files
           in
           let bnd = "static_files", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_script then bnds
         else
           let arg =
             (yojson_of_list yojson_of_handlers__script) v_script
           in
           let bnd = "script", arg in
           bnd :: bnds
       in
       let bnds =
         match v_url_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_http_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_http_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "login", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_fail_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_fail_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : handlers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_handlers

[@@@deriving.end]

type libraries = {
  name : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : libraries) -> ()

let yojson_of_libraries =
  (function
   | { name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : libraries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_libraries

[@@@deriving.end]

type manual_scaling = { instances : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : manual_scaling) -> ()

let yojson_of_manual_scaling =
  (function
   | { instances = v_instances } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instances in
         ("instances", arg) :: bnds
       in
       `Assoc bnds
    : manual_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_manual_scaling

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

type vpc_access_connector = {
  egress_setting : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_access_connector) -> ()

let yojson_of_vpc_access_connector =
  (function
   | { egress_setting = v_egress_setting; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_egress_setting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "egress_setting", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_access_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_access_connector

[@@@deriving.end]

type google_app_engine_standard_app_version = {
  app_engine_apis : bool prop option; [@option]
  delete_service_on_destroy : bool prop option; [@option]
  env_variables : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  inbound_services : string prop list option; [@option]
  instance_class : string prop option; [@option]
  noop_on_destroy : bool prop option; [@option]
  project : string prop option; [@option]
  runtime : string prop;
  runtime_api_version : string prop option; [@option]
  service : string prop;
  service_account : string prop option; [@option]
  threadsafe : bool prop option; [@option]
  version_id : string prop option; [@option]
  automatic_scaling : automatic_scaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  basic_scaling : basic_scaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deployment : deployment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  entrypoint : entrypoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  handlers : handlers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  libraries : libraries list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  manual_scaling : manual_scaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpc_access_connector : vpc_access_connector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_standard_app_version) -> ()

let yojson_of_google_app_engine_standard_app_version =
  (function
   | {
       app_engine_apis = v_app_engine_apis;
       delete_service_on_destroy = v_delete_service_on_destroy;
       env_variables = v_env_variables;
       id = v_id;
       inbound_services = v_inbound_services;
       instance_class = v_instance_class;
       noop_on_destroy = v_noop_on_destroy;
       project = v_project;
       runtime = v_runtime;
       runtime_api_version = v_runtime_api_version;
       service = v_service;
       service_account = v_service_account;
       threadsafe = v_threadsafe;
       version_id = v_version_id;
       automatic_scaling = v_automatic_scaling;
       basic_scaling = v_basic_scaling;
       deployment = v_deployment;
       entrypoint = v_entrypoint;
       handlers = v_handlers;
       libraries = v_libraries;
       manual_scaling = v_manual_scaling;
       timeouts = v_timeouts;
       vpc_access_connector = v_vpc_access_connector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_access_connector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_access_connector)
               v_vpc_access_connector
           in
           let bnd = "vpc_access_connector", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_manual_scaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_manual_scaling)
               v_manual_scaling
           in
           let bnd = "manual_scaling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_libraries then bnds
         else
           let arg =
             (yojson_of_list yojson_of_libraries) v_libraries
           in
           let bnd = "libraries", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_handlers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_handlers) v_handlers
           in
           let bnd = "handlers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_entrypoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_entrypoint) v_entrypoint
           in
           let bnd = "entrypoint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment) v_deployment
           in
           let bnd = "deployment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_scaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_scaling) v_basic_scaling
           in
           let bnd = "basic_scaling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_scaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automatic_scaling)
               v_automatic_scaling
           in
           let bnd = "automatic_scaling", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threadsafe with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "threadsafe", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_runtime_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_api_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
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
         match v_noop_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "noop_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inbound_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inbound_services", arg in
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
         match v_env_variables with
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
             let bnd = "env_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_service_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_service_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_engine_apis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "app_engine_apis", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_app_engine_standard_app_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_standard_app_version

[@@@deriving.end]

let automatic_scaling__standard_scheduler_settings ?max_instances
    ?min_instances ?target_cpu_utilization
    ?target_throughput_utilization () :
    automatic_scaling__standard_scheduler_settings =
  {
    max_instances;
    min_instances;
    target_cpu_utilization;
    target_throughput_utilization;
  }

let automatic_scaling ?max_concurrent_requests ?max_idle_instances
    ?max_pending_latency ?min_idle_instances ?min_pending_latency
    ?(standard_scheduler_settings = []) () : automatic_scaling =
  {
    max_concurrent_requests;
    max_idle_instances;
    max_pending_latency;
    min_idle_instances;
    min_pending_latency;
    standard_scheduler_settings;
  }

let basic_scaling ?idle_timeout ~max_instances () : basic_scaling =
  { idle_timeout; max_instances }

let deployment__files ?sha1_sum ~name ~source_url () :
    deployment__files =
  { name; sha1_sum; source_url }

let deployment__zip ?files_count ~source_url () : deployment__zip =
  { files_count; source_url }

let deployment ?(zip = []) ~files () : deployment = { files; zip }
let entrypoint ~shell () : entrypoint = { shell }

let handlers__script ~script_path () : handlers__script =
  { script_path }

let handlers__static_files ?application_readable ?expiration
    ?http_headers ?mime_type ?path ?require_matching_file
    ?upload_path_regex () : handlers__static_files =
  {
    application_readable;
    expiration;
    http_headers;
    mime_type;
    path;
    require_matching_file;
    upload_path_regex;
  }

let handlers ?auth_fail_action ?login ?redirect_http_response_code
    ?security_level ?url_regex ?(script = []) ?(static_files = []) ()
    : handlers =
  {
    auth_fail_action;
    login;
    redirect_http_response_code;
    security_level;
    url_regex;
    script;
    static_files;
  }

let libraries ?name ?version () : libraries = { name; version }
let manual_scaling ~instances () : manual_scaling = { instances }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_access_connector ?egress_setting ~name () :
    vpc_access_connector =
  { egress_setting; name }

let google_app_engine_standard_app_version ?app_engine_apis
    ?delete_service_on_destroy ?env_variables ?id ?inbound_services
    ?instance_class ?noop_on_destroy ?project ?runtime_api_version
    ?service_account ?threadsafe ?version_id
    ?(automatic_scaling = []) ?(basic_scaling = []) ?(handlers = [])
    ?(libraries = []) ?(manual_scaling = []) ?timeouts
    ?(vpc_access_connector = []) ~runtime ~service ~deployment
    ~entrypoint () : google_app_engine_standard_app_version =
  {
    app_engine_apis;
    delete_service_on_destroy;
    env_variables;
    id;
    inbound_services;
    instance_class;
    noop_on_destroy;
    project;
    runtime;
    runtime_api_version;
    service;
    service_account;
    threadsafe;
    version_id;
    automatic_scaling;
    basic_scaling;
    deployment;
    entrypoint;
    handlers;
    libraries;
    manual_scaling;
    timeouts;
    vpc_access_connector;
  }

type t = {
  tf_name : string;
  app_engine_apis : bool prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  service : string prop;
  service_account : string prop;
  threadsafe : bool prop;
  version_id : string prop;
}

let make ?app_engine_apis ?delete_service_on_destroy ?env_variables
    ?id ?inbound_services ?instance_class ?noop_on_destroy ?project
    ?runtime_api_version ?service_account ?threadsafe ?version_id
    ?(automatic_scaling = []) ?(basic_scaling = []) ?(handlers = [])
    ?(libraries = []) ?(manual_scaling = []) ?timeouts
    ?(vpc_access_connector = []) ~runtime ~service ~deployment
    ~entrypoint __id =
  let __type = "google_app_engine_standard_app_version" in
  let __attrs =
    ({
       tf_name = __id;
       app_engine_apis = Prop.computed __type __id "app_engine_apis";
       delete_service_on_destroy =
         Prop.computed __type __id "delete_service_on_destroy";
       env_variables = Prop.computed __type __id "env_variables";
       id = Prop.computed __type __id "id";
       inbound_services =
         Prop.computed __type __id "inbound_services";
       instance_class = Prop.computed __type __id "instance_class";
       name = Prop.computed __type __id "name";
       noop_on_destroy = Prop.computed __type __id "noop_on_destroy";
       project = Prop.computed __type __id "project";
       runtime = Prop.computed __type __id "runtime";
       runtime_api_version =
         Prop.computed __type __id "runtime_api_version";
       service = Prop.computed __type __id "service";
       service_account = Prop.computed __type __id "service_account";
       threadsafe = Prop.computed __type __id "threadsafe";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_standard_app_version
        (google_app_engine_standard_app_version ?app_engine_apis
           ?delete_service_on_destroy ?env_variables ?id
           ?inbound_services ?instance_class ?noop_on_destroy
           ?project ?runtime_api_version ?service_account ?threadsafe
           ?version_id ~automatic_scaling ~basic_scaling ~handlers
           ~libraries ~manual_scaling ?timeouts ~vpc_access_connector
           ~runtime ~service ~deployment ~entrypoint ());
    attrs = __attrs;
  }

let register ?tf_module ?app_engine_apis ?delete_service_on_destroy
    ?env_variables ?id ?inbound_services ?instance_class
    ?noop_on_destroy ?project ?runtime_api_version ?service_account
    ?threadsafe ?version_id ?(automatic_scaling = [])
    ?(basic_scaling = []) ?(handlers = []) ?(libraries = [])
    ?(manual_scaling = []) ?timeouts ?(vpc_access_connector = [])
    ~runtime ~service ~deployment ~entrypoint __id =
  let (r : _ Tf_core.resource) =
    make ?app_engine_apis ?delete_service_on_destroy ?env_variables
      ?id ?inbound_services ?instance_class ?noop_on_destroy ?project
      ?runtime_api_version ?service_account ?threadsafe ?version_id
      ~automatic_scaling ~basic_scaling ~handlers ~libraries
      ~manual_scaling ?timeouts ~vpc_access_connector ~runtime
      ~service ~deployment ~entrypoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
