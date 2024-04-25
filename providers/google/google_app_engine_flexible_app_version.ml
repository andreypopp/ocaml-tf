(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type api_config = {
  auth_fail_action : string prop option; [@option]
  login : string prop option; [@option]
  script : string prop;
  security_level : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_config) -> ()

let yojson_of_api_config =
  (function
   | {
       auth_fail_action = v_auth_fail_action;
       login = v_login;
       script = v_script;
       security_level = v_security_level;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
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
         let arg = yojson_of_prop yojson_of_string v_script in
         ("script", arg) :: bnds
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
    : api_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_config

[@@@deriving.end]

type automatic_scaling__cpu_utilization = {
  aggregation_window_length : string prop option; [@option]
  target_utilization : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling__cpu_utilization) -> ()

let yojson_of_automatic_scaling__cpu_utilization =
  (function
   | {
       aggregation_window_length = v_aggregation_window_length;
       target_utilization = v_target_utilization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_utilization
         in
         ("target_utilization", arg) :: bnds
       in
       let bnds =
         match v_aggregation_window_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aggregation_window_length", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling__cpu_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling__cpu_utilization

[@@@deriving.end]

type automatic_scaling__disk_utilization = {
  target_read_bytes_per_second : float prop option; [@option]
  target_read_ops_per_second : float prop option; [@option]
  target_write_bytes_per_second : float prop option; [@option]
  target_write_ops_per_second : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling__disk_utilization) -> ()

let yojson_of_automatic_scaling__disk_utilization =
  (function
   | {
       target_read_bytes_per_second = v_target_read_bytes_per_second;
       target_read_ops_per_second = v_target_read_ops_per_second;
       target_write_bytes_per_second =
         v_target_write_bytes_per_second;
       target_write_ops_per_second = v_target_write_ops_per_second;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_write_ops_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_write_ops_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_write_bytes_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_write_bytes_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_read_ops_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_read_ops_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_read_bytes_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_read_bytes_per_second", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling__disk_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling__disk_utilization

[@@@deriving.end]

type automatic_scaling__network_utilization = {
  target_received_bytes_per_second : float prop option; [@option]
  target_received_packets_per_second : float prop option; [@option]
  target_sent_bytes_per_second : float prop option; [@option]
  target_sent_packets_per_second : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling__network_utilization) -> ()

let yojson_of_automatic_scaling__network_utilization =
  (function
   | {
       target_received_bytes_per_second =
         v_target_received_bytes_per_second;
       target_received_packets_per_second =
         v_target_received_packets_per_second;
       target_sent_bytes_per_second = v_target_sent_bytes_per_second;
       target_sent_packets_per_second =
         v_target_sent_packets_per_second;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_sent_packets_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_sent_packets_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_sent_bytes_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_sent_bytes_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_received_packets_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_received_packets_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_received_bytes_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_received_bytes_per_second", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling__network_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling__network_utilization

[@@@deriving.end]

type automatic_scaling__request_utilization = {
  target_concurrent_requests : float prop option; [@option]
  target_request_count_per_second : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling__request_utilization) -> ()

let yojson_of_automatic_scaling__request_utilization =
  (function
   | {
       target_concurrent_requests = v_target_concurrent_requests;
       target_request_count_per_second =
         v_target_request_count_per_second;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_request_count_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_request_count_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_concurrent_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_concurrent_requests", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling__request_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling__request_utilization

[@@@deriving.end]

type automatic_scaling = {
  cool_down_period : string prop option; [@option]
  max_concurrent_requests : float prop option; [@option]
  max_idle_instances : float prop option; [@option]
  max_pending_latency : string prop option; [@option]
  max_total_instances : float prop option; [@option]
  min_idle_instances : float prop option; [@option]
  min_pending_latency : string prop option; [@option]
  min_total_instances : float prop option; [@option]
  cpu_utilization : automatic_scaling__cpu_utilization list;
  disk_utilization : automatic_scaling__disk_utilization list;
  network_utilization : automatic_scaling__network_utilization list;
  request_utilization : automatic_scaling__request_utilization list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_scaling) -> ()

let yojson_of_automatic_scaling =
  (function
   | {
       cool_down_period = v_cool_down_period;
       max_concurrent_requests = v_max_concurrent_requests;
       max_idle_instances = v_max_idle_instances;
       max_pending_latency = v_max_pending_latency;
       max_total_instances = v_max_total_instances;
       min_idle_instances = v_min_idle_instances;
       min_pending_latency = v_min_pending_latency;
       min_total_instances = v_min_total_instances;
       cpu_utilization = v_cpu_utilization;
       disk_utilization = v_disk_utilization;
       network_utilization = v_network_utilization;
       request_utilization = v_request_utilization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_automatic_scaling__request_utilization
             v_request_utilization
         in
         ("request_utilization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_automatic_scaling__network_utilization
             v_network_utilization
         in
         ("network_utilization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_automatic_scaling__disk_utilization
             v_disk_utilization
         in
         ("disk_utilization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_automatic_scaling__cpu_utilization
             v_cpu_utilization
         in
         ("cpu_utilization", arg) :: bnds
       in
       let bnds =
         match v_min_total_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_total_instances", arg in
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
         match v_max_total_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_total_instances", arg in
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
       let bnds =
         match v_cool_down_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cool_down_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_scaling

[@@@deriving.end]

type deployment__cloud_build_options = {
  app_yaml_path : string prop;
  cloud_build_timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment__cloud_build_options) -> ()

let yojson_of_deployment__cloud_build_options =
  (function
   | {
       app_yaml_path = v_app_yaml_path;
       cloud_build_timeout = v_cloud_build_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cloud_build_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_build_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_yaml_path in
         ("app_yaml_path", arg) :: bnds
       in
       `Assoc bnds
    : deployment__cloud_build_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment__cloud_build_options

[@@@deriving.end]

type deployment__container = { image : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment__container) -> ()

let yojson_of_deployment__container =
  (function
   | { image = v_image } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       `Assoc bnds
    : deployment__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment__container

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
  cloud_build_options : deployment__cloud_build_options list;
  container : deployment__container list;
  files : deployment__files list;
  zip : deployment__zip list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment) -> ()

let yojson_of_deployment =
  (function
   | {
       cloud_build_options = v_cloud_build_options;
       container = v_container;
       files = v_files;
       zip = v_zip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_deployment__zip v_zip in
         ("zip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment__files v_files
         in
         ("files", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment__container v_container
         in
         ("container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment__cloud_build_options
             v_cloud_build_options
         in
         ("cloud_build_options", arg) :: bnds
       in
       `Assoc bnds
    : deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment

[@@@deriving.end]

type endpoints_api_service = {
  config_id : string prop option; [@option]
  disable_trace_sampling : bool prop option; [@option]
  name : string prop;
  rollout_strategy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints_api_service) -> ()

let yojson_of_endpoints_api_service =
  (function
   | {
       config_id = v_config_id;
       disable_trace_sampling = v_disable_trace_sampling;
       name = v_name;
       rollout_strategy = v_rollout_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rollout_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rollout_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_disable_trace_sampling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_trace_sampling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoints_api_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints_api_service

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
  static_files : handlers__static_files list;
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
         let arg =
           yojson_of_list yojson_of_handlers__static_files
             v_static_files
         in
         ("static_files", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_handlers__script v_script
         in
         ("script", arg) :: bnds
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

type liveness_check = {
  check_interval : string prop option; [@option]
  failure_threshold : float prop option; [@option]
  host : string prop option; [@option]
  initial_delay : string prop option; [@option]
  path : string prop;
  success_threshold : float prop option; [@option]
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : liveness_check) -> ()

let yojson_of_liveness_check =
  (function
   | {
       check_interval = v_check_interval;
       failure_threshold = v_failure_threshold;
       host = v_host;
       initial_delay = v_initial_delay;
       path = v_path;
       success_threshold = v_success_threshold;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_initial_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "check_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : liveness_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_liveness_check

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

type network = {
  forwarded_ports : string prop list option; [@option]
  instance_tag : string prop option; [@option]
  name : string prop;
  session_affinity : bool prop option; [@option]
  subnetwork : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | {
       forwarded_ports = v_forwarded_ports;
       instance_tag = v_instance_tag;
       name = v_name;
       session_affinity = v_session_affinity;
       subnetwork = v_subnetwork;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_instance_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forwarded_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "forwarded_ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

[@@@deriving.end]

type readiness_check = {
  app_start_timeout : string prop option; [@option]
  check_interval : string prop option; [@option]
  failure_threshold : float prop option; [@option]
  host : string prop option; [@option]
  path : string prop;
  success_threshold : float prop option; [@option]
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : readiness_check) -> ()

let yojson_of_readiness_check =
  (function
   | {
       app_start_timeout = v_app_start_timeout;
       check_interval = v_check_interval;
       failure_threshold = v_failure_threshold;
       host = v_host;
       path = v_path;
       success_threshold = v_success_threshold;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "check_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_start_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_start_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : readiness_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_readiness_check

[@@@deriving.end]

type resources__volumes = {
  name : string prop;
  size_gb : float prop;
  volume_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources__volumes) -> ()

let yojson_of_resources__volumes =
  (function
   | {
       name = v_name;
       size_gb = v_size_gb;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : resources__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources__volumes

[@@@deriving.end]

type resources = {
  cpu : float prop option; [@option]
  disk_gb : float prop option; [@option]
  memory_gb : float prop option; [@option]
  volumes : resources__volumes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | {
       cpu = v_cpu;
       disk_gb = v_disk_gb;
       memory_gb = v_memory_gb;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resources__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         match v_memory_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

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

type vpc_access_connector = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_access_connector) -> ()

let yojson_of_vpc_access_connector =
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
    : vpc_access_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_access_connector

[@@@deriving.end]

type google_app_engine_flexible_app_version = {
  beta_settings : (string * string prop) list option; [@option]
  default_expiration : string prop option; [@option]
  delete_service_on_destroy : bool prop option; [@option]
  env_variables : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  inbound_services : string prop list option; [@option]
  instance_class : string prop option; [@option]
  nobuild_files_regex : string prop option; [@option]
  noop_on_destroy : bool prop option; [@option]
  project : string prop option; [@option]
  runtime : string prop;
  runtime_api_version : string prop option; [@option]
  runtime_channel : string prop option; [@option]
  runtime_main_executable_path : string prop option; [@option]
  service : string prop;
  service_account : string prop option; [@option]
  serving_status : string prop option; [@option]
  version_id : string prop option; [@option]
  api_config : api_config list;
  automatic_scaling : automatic_scaling list;
  deployment : deployment list;
  endpoints_api_service : endpoints_api_service list;
  entrypoint : entrypoint list;
  handlers : handlers list;
  liveness_check : liveness_check list;
  manual_scaling : manual_scaling list;
  network : network list;
  readiness_check : readiness_check list;
  resources : resources list;
  timeouts : timeouts option;
  vpc_access_connector : vpc_access_connector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_flexible_app_version) -> ()

let yojson_of_google_app_engine_flexible_app_version =
  (function
   | {
       beta_settings = v_beta_settings;
       default_expiration = v_default_expiration;
       delete_service_on_destroy = v_delete_service_on_destroy;
       env_variables = v_env_variables;
       id = v_id;
       inbound_services = v_inbound_services;
       instance_class = v_instance_class;
       nobuild_files_regex = v_nobuild_files_regex;
       noop_on_destroy = v_noop_on_destroy;
       project = v_project;
       runtime = v_runtime;
       runtime_api_version = v_runtime_api_version;
       runtime_channel = v_runtime_channel;
       runtime_main_executable_path = v_runtime_main_executable_path;
       service = v_service;
       service_account = v_service_account;
       serving_status = v_serving_status;
       version_id = v_version_id;
       api_config = v_api_config;
       automatic_scaling = v_automatic_scaling;
       deployment = v_deployment;
       endpoints_api_service = v_endpoints_api_service;
       entrypoint = v_entrypoint;
       handlers = v_handlers;
       liveness_check = v_liveness_check;
       manual_scaling = v_manual_scaling;
       network = v_network;
       readiness_check = v_readiness_check;
       resources = v_resources;
       timeouts = v_timeouts;
       vpc_access_connector = v_vpc_access_connector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_access_connector
             v_vpc_access_connector
         in
         ("vpc_access_connector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_resources v_resources in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_readiness_check v_readiness_check
         in
         ("readiness_check", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_network v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_manual_scaling v_manual_scaling
         in
         ("manual_scaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_liveness_check v_liveness_check
         in
         ("liveness_check", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_handlers v_handlers in
         ("handlers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_entrypoint v_entrypoint
         in
         ("entrypoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoints_api_service
             v_endpoints_api_service
         in
         ("endpoints_api_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment v_deployment
         in
         ("deployment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_automatic_scaling
             v_automatic_scaling
         in
         ("automatic_scaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_api_config v_api_config
         in
         ("api_config", arg) :: bnds
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
         match v_serving_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serving_status", arg in
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
         match v_runtime_main_executable_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_main_executable_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_channel", arg in
             bnd :: bnds
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
         match v_nobuild_files_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nobuild_files_regex", arg in
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
         match v_default_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_beta_settings with
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
             let bnd = "beta_settings", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_app_engine_flexible_app_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_flexible_app_version

[@@@deriving.end]

let api_config ?auth_fail_action ?login ?security_level ?url ~script
    () : api_config =
  { auth_fail_action; login; script; security_level; url }

let automatic_scaling__cpu_utilization ?aggregation_window_length
    ~target_utilization () : automatic_scaling__cpu_utilization =
  { aggregation_window_length; target_utilization }

let automatic_scaling__disk_utilization ?target_read_bytes_per_second
    ?target_read_ops_per_second ?target_write_bytes_per_second
    ?target_write_ops_per_second () :
    automatic_scaling__disk_utilization =
  {
    target_read_bytes_per_second;
    target_read_ops_per_second;
    target_write_bytes_per_second;
    target_write_ops_per_second;
  }

let automatic_scaling__network_utilization
    ?target_received_bytes_per_second
    ?target_received_packets_per_second ?target_sent_bytes_per_second
    ?target_sent_packets_per_second () :
    automatic_scaling__network_utilization =
  {
    target_received_bytes_per_second;
    target_received_packets_per_second;
    target_sent_bytes_per_second;
    target_sent_packets_per_second;
  }

let automatic_scaling__request_utilization
    ?target_concurrent_requests ?target_request_count_per_second () :
    automatic_scaling__request_utilization =
  { target_concurrent_requests; target_request_count_per_second }

let automatic_scaling ?cool_down_period ?max_concurrent_requests
    ?max_idle_instances ?max_pending_latency ?max_total_instances
    ?min_idle_instances ?min_pending_latency ?min_total_instances
    ?(disk_utilization = []) ?(network_utilization = [])
    ?(request_utilization = []) ~cpu_utilization () :
    automatic_scaling =
  {
    cool_down_period;
    max_concurrent_requests;
    max_idle_instances;
    max_pending_latency;
    max_total_instances;
    min_idle_instances;
    min_pending_latency;
    min_total_instances;
    cpu_utilization;
    disk_utilization;
    network_utilization;
    request_utilization;
  }

let deployment__cloud_build_options ?cloud_build_timeout
    ~app_yaml_path () : deployment__cloud_build_options =
  { app_yaml_path; cloud_build_timeout }

let deployment__container ~image () : deployment__container =
  { image }

let deployment__files ?sha1_sum ~name ~source_url () :
    deployment__files =
  { name; sha1_sum; source_url }

let deployment__zip ?files_count ~source_url () : deployment__zip =
  { files_count; source_url }

let deployment ?(cloud_build_options = []) ?(container = [])
    ?(zip = []) ~files () : deployment =
  { cloud_build_options; container; files; zip }

let endpoints_api_service ?config_id ?disable_trace_sampling
    ?rollout_strategy ~name () : endpoints_api_service =
  { config_id; disable_trace_sampling; name; rollout_strategy }

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

let liveness_check ?check_interval ?failure_threshold ?host
    ?initial_delay ?success_threshold ?timeout ~path () :
    liveness_check =
  {
    check_interval;
    failure_threshold;
    host;
    initial_delay;
    path;
    success_threshold;
    timeout;
  }

let manual_scaling ~instances () : manual_scaling = { instances }

let network ?forwarded_ports ?instance_tag ?session_affinity
    ?subnetwork ~name () : network =
  {
    forwarded_ports;
    instance_tag;
    name;
    session_affinity;
    subnetwork;
  }

let readiness_check ?app_start_timeout ?check_interval
    ?failure_threshold ?host ?success_threshold ?timeout ~path () :
    readiness_check =
  {
    app_start_timeout;
    check_interval;
    failure_threshold;
    host;
    path;
    success_threshold;
    timeout;
  }

let resources__volumes ~name ~size_gb ~volume_type () :
    resources__volumes =
  { name; size_gb; volume_type }

let resources ?cpu ?disk_gb ?memory_gb ?(volumes = []) () : resources
    =
  { cpu; disk_gb; memory_gb; volumes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_access_connector ~name () : vpc_access_connector = { name }

let google_app_engine_flexible_app_version ?beta_settings
    ?default_expiration ?delete_service_on_destroy ?env_variables ?id
    ?inbound_services ?instance_class ?nobuild_files_regex
    ?noop_on_destroy ?project ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?(api_config = []) ?(automatic_scaling = [])
    ?(deployment = []) ?(endpoints_api_service = [])
    ?(entrypoint = []) ?(handlers = []) ?(manual_scaling = [])
    ?(network = []) ?(resources = []) ?timeouts
    ?(vpc_access_connector = []) ~runtime ~service ~liveness_check
    ~readiness_check () : google_app_engine_flexible_app_version =
  {
    beta_settings;
    default_expiration;
    delete_service_on_destroy;
    env_variables;
    id;
    inbound_services;
    instance_class;
    nobuild_files_regex;
    noop_on_destroy;
    project;
    runtime;
    runtime_api_version;
    runtime_channel;
    runtime_main_executable_path;
    service;
    service_account;
    serving_status;
    version_id;
    api_config;
    automatic_scaling;
    deployment;
    endpoints_api_service;
    entrypoint;
    handlers;
    liveness_check;
    manual_scaling;
    network;
    readiness_check;
    resources;
    timeouts;
    vpc_access_connector;
  }

type t = {
  beta_settings : (string * string) list prop;
  default_expiration : string prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  nobuild_files_regex : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  runtime_channel : string prop;
  runtime_main_executable_path : string prop;
  service : string prop;
  service_account : string prop;
  serving_status : string prop;
  version_id : string prop;
}

let make ?beta_settings ?default_expiration
    ?delete_service_on_destroy ?env_variables ?id ?inbound_services
    ?instance_class ?nobuild_files_regex ?noop_on_destroy ?project
    ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?(api_config = []) ?(automatic_scaling = [])
    ?(deployment = []) ?(endpoints_api_service = [])
    ?(entrypoint = []) ?(handlers = []) ?(manual_scaling = [])
    ?(network = []) ?(resources = []) ?timeouts
    ?(vpc_access_connector = []) ~runtime ~service ~liveness_check
    ~readiness_check __id =
  let __type = "google_app_engine_flexible_app_version" in
  let __attrs =
    ({
       beta_settings = Prop.computed __type __id "beta_settings";
       default_expiration =
         Prop.computed __type __id "default_expiration";
       delete_service_on_destroy =
         Prop.computed __type __id "delete_service_on_destroy";
       env_variables = Prop.computed __type __id "env_variables";
       id = Prop.computed __type __id "id";
       inbound_services =
         Prop.computed __type __id "inbound_services";
       instance_class = Prop.computed __type __id "instance_class";
       name = Prop.computed __type __id "name";
       nobuild_files_regex =
         Prop.computed __type __id "nobuild_files_regex";
       noop_on_destroy = Prop.computed __type __id "noop_on_destroy";
       project = Prop.computed __type __id "project";
       runtime = Prop.computed __type __id "runtime";
       runtime_api_version =
         Prop.computed __type __id "runtime_api_version";
       runtime_channel = Prop.computed __type __id "runtime_channel";
       runtime_main_executable_path =
         Prop.computed __type __id "runtime_main_executable_path";
       service = Prop.computed __type __id "service";
       service_account = Prop.computed __type __id "service_account";
       serving_status = Prop.computed __type __id "serving_status";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_flexible_app_version
        (google_app_engine_flexible_app_version ?beta_settings
           ?default_expiration ?delete_service_on_destroy
           ?env_variables ?id ?inbound_services ?instance_class
           ?nobuild_files_regex ?noop_on_destroy ?project
           ?runtime_api_version ?runtime_channel
           ?runtime_main_executable_path ?service_account
           ?serving_status ?version_id ~api_config ~automatic_scaling
           ~deployment ~endpoints_api_service ~entrypoint ~handlers
           ~manual_scaling ~network ~resources ?timeouts
           ~vpc_access_connector ~runtime ~service ~liveness_check
           ~readiness_check ());
    attrs = __attrs;
  }

let register ?tf_module ?beta_settings ?default_expiration
    ?delete_service_on_destroy ?env_variables ?id ?inbound_services
    ?instance_class ?nobuild_files_regex ?noop_on_destroy ?project
    ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?(api_config = []) ?(automatic_scaling = [])
    ?(deployment = []) ?(endpoints_api_service = [])
    ?(entrypoint = []) ?(handlers = []) ?(manual_scaling = [])
    ?(network = []) ?(resources = []) ?timeouts
    ?(vpc_access_connector = []) ~runtime ~service ~liveness_check
    ~readiness_check __id =
  let (r : _ Tf_core.resource) =
    make ?beta_settings ?default_expiration
      ?delete_service_on_destroy ?env_variables ?id ?inbound_services
      ?instance_class ?nobuild_files_regex ?noop_on_destroy ?project
      ?runtime_api_version ?runtime_channel
      ?runtime_main_executable_path ?service_account ?serving_status
      ?version_id ~api_config ~automatic_scaling ~deployment
      ~endpoints_api_service ~entrypoint ~handlers ~manual_scaling
      ~network ~resources ?timeouts ~vpc_access_connector ~runtime
      ~service ~liveness_check ~readiness_check __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
