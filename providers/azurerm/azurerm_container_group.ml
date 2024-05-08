(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container__gpu = {
  count : float prop option; [@option]
  sku : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__gpu) -> ()

let yojson_of_container__gpu =
  (function
   | { count = v_count; sku = v_sku } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__gpu -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__gpu

[@@@deriving.end]

type container__gpu_limit = {
  count : float prop option; [@option]
  sku : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__gpu_limit) -> ()

let yojson_of_container__gpu_limit =
  (function
   | { count = v_count; sku = v_sku } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__gpu_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__gpu_limit

[@@@deriving.end]

type container__liveness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
  path : string prop option; [@option]
  port : float prop option; [@option]
  scheme : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__liveness_probe__http_get) -> ()

let yojson_of_container__liveness_probe__http_get =
  (function
   | {
       http_headers = v_http_headers;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
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
       `Assoc bnds
    : container__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__liveness_probe__http_get

[@@@deriving.end]

type container__liveness_probe = {
  exec : string prop list option; [@option]
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  http_get : container__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__liveness_probe) -> ()

let yojson_of_container__liveness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       http_get = v_http_get;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_container__liveness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
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
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
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
         match v_exec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__liveness_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__liveness_probe

[@@@deriving.end]

type container__ports = {
  port : float prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__ports) -> ()

let yojson_of_container__ports =
  (function
   | { port = v_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
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
       `Assoc bnds
    : container__ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__ports

[@@@deriving.end]

type container__readiness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
  path : string prop option; [@option]
  port : float prop option; [@option]
  scheme : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__readiness_probe__http_get) -> ()

let yojson_of_container__readiness_probe__http_get =
  (function
   | {
       http_headers = v_http_headers;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
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
       `Assoc bnds
    : container__readiness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__readiness_probe__http_get

[@@@deriving.end]

type container__readiness_probe = {
  exec : string prop list option; [@option]
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  http_get : container__readiness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__readiness_probe) -> ()

let yojson_of_container__readiness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       http_get = v_http_get;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_container__readiness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
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
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
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
         match v_exec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__readiness_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__readiness_probe

[@@@deriving.end]

type container__security = { privilege_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : container__security) -> ()

let yojson_of_container__security =
  (function
   | { privilege_enabled = v_privilege_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_privilege_enabled
         in
         ("privilege_enabled", arg) :: bnds
       in
       `Assoc bnds
    : container__security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__security

[@@@deriving.end]

type container__volume__git_repo = {
  directory : string prop option; [@option]
  revision : string prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__volume__git_repo) -> ()

let yojson_of_container__volume__git_repo =
  (function
   | { directory = v_directory; revision = v_revision; url = v_url }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__volume__git_repo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__volume__git_repo

[@@@deriving.end]

type container__volume = {
  empty_dir : bool prop option; [@option]
  mount_path : string prop;
  name : string prop;
  read_only : bool prop option; [@option]
  secret : (string * string prop) list option; [@option]
  share_name : string prop option; [@option]
  storage_account_key : string prop option; [@option]
  storage_account_name : string prop option; [@option]
  git_repo : container__volume__git_repo list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__volume) -> ()

let yojson_of_container__volume =
  (function
   | {
       empty_dir = v_empty_dir;
       mount_path = v_mount_path;
       name = v_name;
       read_only = v_read_only;
       secret = v_secret;
       share_name = v_share_name;
       storage_account_key = v_storage_account_key;
       storage_account_name = v_storage_account_name;
       git_repo = v_git_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_git_repo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__volume__git_repo)
               v_git_repo
           in
           let bnd = "git_repo", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_share_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "share_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
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
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       let bnds =
         match v_empty_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "empty_dir", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container__volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__volume

[@@@deriving.end]

type container = {
  commands : string prop list option; [@option]
  cpu : float prop;
  cpu_limit : float prop option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  image : string prop;
  memory : float prop;
  memory_limit : float prop option; [@option]
  name : string prop;
  secure_environment_variables : (string * string prop) list option;
      [@option]
  gpu : container__gpu list;
      [@default []] [@yojson_drop_default ( = )]
  gpu_limit : container__gpu_limit list;
      [@default []] [@yojson_drop_default ( = )]
  liveness_probe : container__liveness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  ports : container__ports list;
      [@default []] [@yojson_drop_default ( = )]
  readiness_probe : container__readiness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  security : container__security list;
      [@default []] [@yojson_drop_default ( = )]
  volume : container__volume list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container) -> ()

let yojson_of_container =
  (function
   | {
       commands = v_commands;
       cpu = v_cpu;
       cpu_limit = v_cpu_limit;
       environment_variables = v_environment_variables;
       image = v_image;
       memory = v_memory;
       memory_limit = v_memory_limit;
       name = v_name;
       secure_environment_variables = v_secure_environment_variables;
       gpu = v_gpu;
       gpu_limit = v_gpu_limit;
       liveness_probe = v_liveness_probe;
       ports = v_ports;
       readiness_probe = v_readiness_probe;
       security = v_security;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__volume) v_volume
           in
           let bnd = "volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__security)
               v_security
           in
           let bnd = "security", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_readiness_probe then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__readiness_probe)
               v_readiness_probe
           in
           let bnd = "readiness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__ports) v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_gpu_limit then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__gpu_limit)
               v_gpu_limit
           in
           let bnd = "gpu_limit", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_gpu then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container__gpu) v_gpu
           in
           let bnd = "gpu", arg in
           bnd :: bnds
       in
       let bnds =
         match v_secure_environment_variables with
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
             let bnd = "secure_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_memory_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       let bnds =
         match v_commands with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "commands", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container

[@@@deriving.end]

type diagnostics__log_analytics = {
  log_type : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  workspace_id : string prop;
  workspace_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : diagnostics__log_analytics) -> ()

let yojson_of_diagnostics__log_analytics =
  (function
   | {
       log_type = v_log_type;
       metadata = v_metadata;
       workspace_id = v_workspace_id;
       workspace_key = v_workspace_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_key in
         ("workspace_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : diagnostics__log_analytics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_diagnostics__log_analytics

[@@@deriving.end]

type diagnostics = {
  log_analytics : diagnostics__log_analytics list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : diagnostics) -> ()

let yojson_of_diagnostics =
  (function
   | { log_analytics = v_log_analytics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_log_analytics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_diagnostics__log_analytics)
               v_log_analytics
           in
           let bnd = "log_analytics", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : diagnostics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_diagnostics

[@@@deriving.end]

type dns_config = {
  nameservers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  options : string prop list option; [@option]
  search_domains : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config) -> ()

let yojson_of_dns_config =
  (function
   | {
       nameservers = v_nameservers;
       options = v_options;
       search_domains = v_search_domains;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_search_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "search_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "options", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_nameservers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_nameservers
           in
           let bnd = "nameservers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

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

type image_registry_credential = {
  password : string prop option; [@option]
  server : string prop;
  user_assigned_identity_id : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_registry_credential) -> ()

let yojson_of_image_registry_credential =
  (function
   | {
       password = v_password;
       server = v_server;
       user_assigned_identity_id = v_user_assigned_identity_id;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_registry_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_registry_credential

[@@@deriving.end]

type init_container__security = { privilege_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : init_container__security) -> ()

let yojson_of_init_container__security =
  (function
   | { privilege_enabled = v_privilege_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_privilege_enabled
         in
         ("privilege_enabled", arg) :: bnds
       in
       `Assoc bnds
    : init_container__security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_init_container__security

[@@@deriving.end]

type init_container__volume__git_repo = {
  directory : string prop option; [@option]
  revision : string prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : init_container__volume__git_repo) -> ()

let yojson_of_init_container__volume__git_repo =
  (function
   | { directory = v_directory; revision = v_revision; url = v_url }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : init_container__volume__git_repo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_init_container__volume__git_repo

[@@@deriving.end]

type init_container__volume = {
  empty_dir : bool prop option; [@option]
  mount_path : string prop;
  name : string prop;
  read_only : bool prop option; [@option]
  secret : (string * string prop) list option; [@option]
  share_name : string prop option; [@option]
  storage_account_key : string prop option; [@option]
  storage_account_name : string prop option; [@option]
  git_repo : init_container__volume__git_repo list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : init_container__volume) -> ()

let yojson_of_init_container__volume =
  (function
   | {
       empty_dir = v_empty_dir;
       mount_path = v_mount_path;
       name = v_name;
       read_only = v_read_only;
       secret = v_secret;
       share_name = v_share_name;
       storage_account_key = v_storage_account_key;
       storage_account_name = v_storage_account_name;
       git_repo = v_git_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_git_repo then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_init_container__volume__git_repo)
               v_git_repo
           in
           let bnd = "git_repo", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_share_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "share_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
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
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       let bnds =
         match v_empty_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "empty_dir", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : init_container__volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_init_container__volume

[@@@deriving.end]

type init_container = {
  commands : string prop list option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  image : string prop;
  name : string prop;
  secure_environment_variables : (string * string prop) list option;
      [@option]
  security : init_container__security list;
      [@default []] [@yojson_drop_default ( = )]
  volume : init_container__volume list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : init_container) -> ()

let yojson_of_init_container =
  (function
   | {
       commands = v_commands;
       environment_variables = v_environment_variables;
       image = v_image;
       name = v_name;
       secure_environment_variables = v_secure_environment_variables;
       security = v_security;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_init_container__volume)
               v_volume
           in
           let bnd = "volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security then bnds
         else
           let arg =
             (yojson_of_list yojson_of_init_container__security)
               v_security
           in
           let bnd = "security", arg in
           bnd :: bnds
       in
       let bnds =
         match v_secure_environment_variables with
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
             let bnd = "secure_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commands with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "commands", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : init_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_init_container

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

type exposed_port = { port : float prop; protocol : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : exposed_port) -> ()

let yojson_of_exposed_port =
  (function
   | { port = v_port; protocol = v_protocol } ->
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
       `Assoc bnds
    : exposed_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exposed_port

[@@@deriving.end]

type azurerm_container_group = {
  dns_name_label : string prop option; [@option]
  dns_name_label_reuse_policy : string prop option; [@option]
  exposed_port : exposed_port list option; [@option]
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  key_vault_user_assigned_identity_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  network_profile_id : string prop option; [@option]
  os_type : string prop;
  priority : string prop option; [@option]
  resource_group_name : string prop;
  restart_policy : string prop option; [@option]
  sku : string prop option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  zones : string prop list option; [@option]
  container : container list;
      [@default []] [@yojson_drop_default ( = )]
  diagnostics : diagnostics list;
      [@default []] [@yojson_drop_default ( = )]
  dns_config : dns_config list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  image_registry_credential : image_registry_credential list;
      [@default []] [@yojson_drop_default ( = )]
  init_container : init_container list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_group) -> ()

let yojson_of_azurerm_container_group =
  (function
   | {
       dns_name_label = v_dns_name_label;
       dns_name_label_reuse_policy = v_dns_name_label_reuse_policy;
       exposed_port = v_exposed_port;
       id = v_id;
       ip_address_type = v_ip_address_type;
       key_vault_key_id = v_key_vault_key_id;
       key_vault_user_assigned_identity_id =
         v_key_vault_user_assigned_identity_id;
       location = v_location;
       name = v_name;
       network_profile_id = v_network_profile_id;
       os_type = v_os_type;
       priority = v_priority;
       resource_group_name = v_resource_group_name;
       restart_policy = v_restart_policy;
       sku = v_sku;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       zones = v_zones;
       container = v_container;
       diagnostics = v_diagnostics;
       dns_config = v_dns_config;
       identity = v_identity;
       image_registry_credential = v_image_registry_credential;
       init_container = v_init_container;
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
         if [] = v_init_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_init_container)
               v_init_container
           in
           let bnd = "init_container", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_image_registry_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_registry_credential)
               v_image_registry_credential
           in
           let bnd = "image_registry_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dns_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dns_config) v_dns_config
           in
           let bnd = "dns_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_diagnostics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_diagnostics) v_diagnostics
           in
           let bnd = "diagnostics", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container) v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restart_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restart_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         match v_network_profile_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_profile_id", arg in
             bnd :: bnds
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
         match v_key_vault_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
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
         match v_exposed_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_exposed_port v in
             let bnd = "exposed_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_name_label_reuse_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name_label_reuse_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_name_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name_label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_group

[@@@deriving.end]

let container__gpu ?count ?sku () : container__gpu = { count; sku }

let container__gpu_limit ?count ?sku () : container__gpu_limit =
  { count; sku }

let container__liveness_probe__http_get ?http_headers ?path ?port
    ?scheme () : container__liveness_probe__http_get =
  { http_headers; path; port; scheme }

let container__liveness_probe ?exec ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?success_threshold
    ?timeout_seconds ?(http_get = []) () : container__liveness_probe
    =
  {
    exec;
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    http_get;
  }

let container__ports ?port ?protocol () : container__ports =
  { port; protocol }

let container__readiness_probe__http_get ?http_headers ?path ?port
    ?scheme () : container__readiness_probe__http_get =
  { http_headers; path; port; scheme }

let container__readiness_probe ?exec ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?success_threshold
    ?timeout_seconds ?(http_get = []) () : container__readiness_probe
    =
  {
    exec;
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    http_get;
  }

let container__security ~privilege_enabled () : container__security =
  { privilege_enabled }

let container__volume__git_repo ?directory ?revision ~url () :
    container__volume__git_repo =
  { directory; revision; url }

let container__volume ?empty_dir ?read_only ?secret ?share_name
    ?storage_account_key ?storage_account_name ?(git_repo = [])
    ~mount_path ~name () : container__volume =
  {
    empty_dir;
    mount_path;
    name;
    read_only;
    secret;
    share_name;
    storage_account_key;
    storage_account_name;
    git_repo;
  }

let container ?commands ?cpu_limit ?environment_variables
    ?memory_limit ?secure_environment_variables ?(gpu = [])
    ?(gpu_limit = []) ?(liveness_probe = []) ?(readiness_probe = [])
    ?(security = []) ?(volume = []) ~cpu ~image ~memory ~name ~ports
    () : container =
  {
    commands;
    cpu;
    cpu_limit;
    environment_variables;
    image;
    memory;
    memory_limit;
    name;
    secure_environment_variables;
    gpu;
    gpu_limit;
    liveness_probe;
    ports;
    readiness_probe;
    security;
    volume;
  }

let diagnostics__log_analytics ?log_type ?metadata ~workspace_id
    ~workspace_key () : diagnostics__log_analytics =
  { log_type; metadata; workspace_id; workspace_key }

let diagnostics ~log_analytics () : diagnostics = { log_analytics }

let dns_config ?options ?search_domains ~nameservers () : dns_config
    =
  { nameservers; options; search_domains }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let image_registry_credential ?password ?user_assigned_identity_id
    ?username ~server () : image_registry_credential =
  { password; server; user_assigned_identity_id; username }

let init_container__security ~privilege_enabled () :
    init_container__security =
  { privilege_enabled }

let init_container__volume__git_repo ?directory ?revision ~url () :
    init_container__volume__git_repo =
  { directory; revision; url }

let init_container__volume ?empty_dir ?read_only ?secret ?share_name
    ?storage_account_key ?storage_account_name ?(git_repo = [])
    ~mount_path ~name () : init_container__volume =
  {
    empty_dir;
    mount_path;
    name;
    read_only;
    secret;
    share_name;
    storage_account_key;
    storage_account_name;
    git_repo;
  }

let init_container ?commands ?environment_variables
    ?secure_environment_variables ?(security = []) ?(volume = [])
    ~image ~name () : init_container =
  {
    commands;
    environment_variables;
    image;
    name;
    secure_environment_variables;
    security;
    volume;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_group ?dns_name_label
    ?dns_name_label_reuse_policy ?exposed_port ?id ?ip_address_type
    ?key_vault_key_id ?key_vault_user_assigned_identity_id
    ?network_profile_id ?priority ?restart_policy ?sku ?subnet_ids
    ?tags ?zones ?(diagnostics = []) ?(dns_config = [])
    ?(identity = []) ?(image_registry_credential = [])
    ?(init_container = []) ?timeouts ~location ~name ~os_type
    ~resource_group_name ~container () : azurerm_container_group =
  {
    dns_name_label;
    dns_name_label_reuse_policy;
    exposed_port;
    id;
    ip_address_type;
    key_vault_key_id;
    key_vault_user_assigned_identity_id;
    location;
    name;
    network_profile_id;
    os_type;
    priority;
    resource_group_name;
    restart_policy;
    sku;
    subnet_ids;
    tags;
    zones;
    container;
    diagnostics;
    dns_config;
    identity;
    image_registry_credential;
    init_container;
    timeouts;
  }

type t = {
  tf_name : string;
  dns_name_label : string prop;
  dns_name_label_reuse_policy : string prop;
  exposed_port : exposed_port list prop;
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  ip_address_type : string prop;
  key_vault_key_id : string prop;
  key_vault_user_assigned_identity_id : string prop;
  location : string prop;
  name : string prop;
  network_profile_id : string prop;
  os_type : string prop;
  priority : string prop;
  resource_group_name : string prop;
  restart_policy : string prop;
  sku : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?dns_name_label ?dns_name_label_reuse_policy ?exposed_port
    ?id ?ip_address_type ?key_vault_key_id
    ?key_vault_user_assigned_identity_id ?network_profile_id
    ?priority ?restart_policy ?sku ?subnet_ids ?tags ?zones
    ?(diagnostics = []) ?(dns_config = []) ?(identity = [])
    ?(image_registry_credential = []) ?(init_container = [])
    ?timeouts ~location ~name ~os_type ~resource_group_name
    ~container __id =
  let __type = "azurerm_container_group" in
  let __attrs =
    ({
       tf_name = __id;
       dns_name_label = Prop.computed __type __id "dns_name_label";
       dns_name_label_reuse_policy =
         Prop.computed __type __id "dns_name_label_reuse_policy";
       exposed_port = Prop.computed __type __id "exposed_port";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       key_vault_user_assigned_identity_id =
         Prop.computed __type __id
           "key_vault_user_assigned_identity_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_profile_id =
         Prop.computed __type __id "network_profile_id";
       os_type = Prop.computed __type __id "os_type";
       priority = Prop.computed __type __id "priority";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restart_policy = Prop.computed __type __id "restart_policy";
       sku = Prop.computed __type __id "sku";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_group
        (azurerm_container_group ?dns_name_label
           ?dns_name_label_reuse_policy ?exposed_port ?id
           ?ip_address_type ?key_vault_key_id
           ?key_vault_user_assigned_identity_id ?network_profile_id
           ?priority ?restart_policy ?sku ?subnet_ids ?tags ?zones
           ~diagnostics ~dns_config ~identity
           ~image_registry_credential ~init_container ?timeouts
           ~location ~name ~os_type ~resource_group_name ~container
           ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_name_label ?dns_name_label_reuse_policy
    ?exposed_port ?id ?ip_address_type ?key_vault_key_id
    ?key_vault_user_assigned_identity_id ?network_profile_id
    ?priority ?restart_policy ?sku ?subnet_ids ?tags ?zones
    ?(diagnostics = []) ?(dns_config = []) ?(identity = [])
    ?(image_registry_credential = []) ?(init_container = [])
    ?timeouts ~location ~name ~os_type ~resource_group_name
    ~container __id =
  let (r : _ Tf_core.resource) =
    make ?dns_name_label ?dns_name_label_reuse_policy ?exposed_port
      ?id ?ip_address_type ?key_vault_key_id
      ?key_vault_user_assigned_identity_id ?network_profile_id
      ?priority ?restart_policy ?sku ?subnet_ids ?tags ?zones
      ~diagnostics ~dns_config ~identity ~image_registry_credential
      ~init_container ?timeouts ~location ~name ~os_type
      ~resource_group_name ~container __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
