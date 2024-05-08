(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type agent_setting = { cpu : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_setting) -> ()

let yojson_of_agent_setting =
  (function
   | { cpu = v_cpu } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       `Assoc bnds
    : agent_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_setting

[@@@deriving.end]

type base_image_trigger = {
  enabled : bool prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  update_trigger_endpoint : string prop option; [@option]
  update_trigger_payload_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : base_image_trigger) -> ()

let yojson_of_base_image_trigger =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       type_ = v_type_;
       update_trigger_endpoint = v_update_trigger_endpoint;
       update_trigger_payload_type = v_update_trigger_payload_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update_trigger_payload_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_trigger_payload_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_update_trigger_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_trigger_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
       `Assoc bnds
    : base_image_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_base_image_trigger

[@@@deriving.end]

type docker_step = {
  arguments : (string * string prop) list option; [@option]
  cache_enabled : bool prop option; [@option]
  context_access_token : string prop;
  context_path : string prop;
  dockerfile_path : string prop;
  image_names : string prop list option; [@option]
  push_enabled : bool prop option; [@option]
  secret_arguments : (string * string prop) list option; [@option]
  target : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : docker_step) -> ()

let yojson_of_docker_step =
  (function
   | {
       arguments = v_arguments;
       cache_enabled = v_cache_enabled;
       context_access_token = v_context_access_token;
       context_path = v_context_path;
       dockerfile_path = v_dockerfile_path;
       image_names = v_image_names;
       push_enabled = v_push_enabled;
       secret_arguments = v_secret_arguments;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_arguments with
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
             let bnd = "secret_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_push_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "push_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "image_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dockerfile_path
         in
         ("dockerfile_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_context_path in
         ("context_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_context_access_token
         in
         ("context_access_token", arg) :: bnds
       in
       let bnds =
         match v_cache_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arguments with
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
             let bnd = "arguments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : docker_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_docker_step

[@@@deriving.end]

type encoded_step = {
  context_access_token : string prop option; [@option]
  context_path : string prop option; [@option]
  secret_values : (string * string prop) list option; [@option]
  task_content : string prop;
  value_content : string prop option; [@option]
  values : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoded_step) -> ()

let yojson_of_encoded_step =
  (function
   | {
       context_access_token = v_context_access_token;
       context_path = v_context_path;
       secret_values = v_secret_values;
       task_content = v_task_content;
       value_content = v_value_content;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
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
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_value_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_content in
         ("task_content", arg) :: bnds
       in
       let bnds =
         match v_secret_values with
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
             let bnd = "secret_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context_access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoded_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoded_step

[@@@deriving.end]

type file_step = {
  context_access_token : string prop option; [@option]
  context_path : string prop option; [@option]
  secret_values : (string * string prop) list option; [@option]
  task_file_path : string prop;
  value_file_path : string prop option; [@option]
  values : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_step) -> ()

let yojson_of_file_step =
  (function
   | {
       context_access_token = v_context_access_token;
       context_path = v_context_path;
       secret_values = v_secret_values;
       task_file_path = v_task_file_path;
       value_file_path = v_value_file_path;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
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
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_value_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_file_path
         in
         ("task_file_path", arg) :: bnds
       in
       let bnds =
         match v_secret_values with
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
             let bnd = "secret_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context_access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : file_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_step

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

type platform = {
  architecture : string prop option; [@option]
  os : string prop;
  variant : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : platform) -> ()

let yojson_of_platform =
  (function
   | {
       architecture = v_architecture;
       os = v_os;
       variant = v_variant;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "variant", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os in
         ("os", arg) :: bnds
       in
       let bnds =
         match v_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "architecture", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : platform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_platform

[@@@deriving.end]

type registry_credential__custom = {
  identity : string prop option; [@option]
  login_server : string prop;
  password : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registry_credential__custom) -> ()

let yojson_of_registry_credential__custom =
  (function
   | {
       identity = v_identity;
       login_server = v_login_server;
       password = v_password;
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
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login_server in
         ("login_server", arg) :: bnds
       in
       let bnds =
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : registry_credential__custom ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registry_credential__custom

[@@@deriving.end]

type registry_credential__source = { login_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : registry_credential__source) -> ()

let yojson_of_registry_credential__source =
  (function
   | { login_mode = v_login_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login_mode in
         ("login_mode", arg) :: bnds
       in
       `Assoc bnds
    : registry_credential__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registry_credential__source

[@@@deriving.end]

type registry_credential = {
  custom : registry_credential__custom list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : registry_credential__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registry_credential) -> ()

let yojson_of_registry_credential =
  (function
   | { custom = v_custom; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registry_credential__source)
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registry_credential__custom)
               v_custom
           in
           let bnd = "custom", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : registry_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registry_credential

[@@@deriving.end]

type source_trigger__authentication = {
  expire_in_seconds : float prop option; [@option]
  refresh_token : string prop option; [@option]
  scope : string prop option; [@option]
  token : string prop;
  token_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_trigger__authentication) -> ()

let yojson_of_source_trigger__authentication =
  (function
   | {
       expire_in_seconds = v_expire_in_seconds;
       refresh_token = v_refresh_token;
       scope = v_scope;
       token = v_token;
       token_type = v_token_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_type in
         ("token_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expire_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expire_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_trigger__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_trigger__authentication

[@@@deriving.end]

type source_trigger = {
  branch : string prop option; [@option]
  enabled : bool prop option; [@option]
  events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  repository_url : string prop;
  source_type : string prop;
  authentication : source_trigger__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_trigger) -> ()

let yojson_of_source_trigger =
  (function
   | {
       branch = v_branch;
       enabled = v_enabled;
       events = v_events;
       name = v_name;
       repository_url = v_repository_url;
       source_type = v_source_type;
       authentication = v_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_trigger__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_type in
         ("source_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_events then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_events
           in
           let bnd = "events", arg in
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
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_trigger

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

type timer_trigger = {
  enabled : bool prop option; [@option]
  name : string prop;
  schedule : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timer_trigger) -> ()

let yojson_of_timer_trigger =
  (function
   | { enabled = v_enabled; name = v_name; schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
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
       `Assoc bnds
    : timer_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timer_trigger

[@@@deriving.end]

type azurerm_container_registry_task = {
  agent_pool_name : string prop option; [@option]
  container_registry_id : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  is_system_task : bool prop option; [@option]
  log_template : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  timeout_in_seconds : float prop option; [@option]
  agent_setting : agent_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  base_image_trigger : base_image_trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  docker_step : docker_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encoded_step : encoded_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_step : file_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  platform : platform list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry_credential : registry_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_trigger : source_trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  timer_trigger : timer_trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_task) -> ()

let yojson_of_azurerm_container_registry_task =
  (function
   | {
       agent_pool_name = v_agent_pool_name;
       container_registry_id = v_container_registry_id;
       enabled = v_enabled;
       id = v_id;
       is_system_task = v_is_system_task;
       log_template = v_log_template;
       name = v_name;
       tags = v_tags;
       timeout_in_seconds = v_timeout_in_seconds;
       agent_setting = v_agent_setting;
       base_image_trigger = v_base_image_trigger;
       docker_step = v_docker_step;
       encoded_step = v_encoded_step;
       file_step = v_file_step;
       identity = v_identity;
       platform = v_platform;
       registry_credential = v_registry_credential;
       source_trigger = v_source_trigger;
       timeouts = v_timeouts;
       timer_trigger = v_timer_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timer_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_timer_trigger) v_timer_trigger
           in
           let bnd = "timer_trigger", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_trigger)
               v_source_trigger
           in
           let bnd = "source_trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_registry_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registry_credential)
               v_registry_credential
           in
           let bnd = "registry_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_platform then bnds
         else
           let arg =
             (yojson_of_list yojson_of_platform) v_platform
           in
           let bnd = "platform", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_file_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_file_step) v_file_step
           in
           let bnd = "file_step", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encoded_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encoded_step) v_encoded_step
           in
           let bnd = "encoded_step", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_docker_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_docker_step) v_docker_step
           in
           let bnd = "docker_step", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_base_image_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_base_image_trigger)
               v_base_image_trigger
           in
           let bnd = "base_image_trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_agent_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_agent_setting) v_agent_setting
           in
           let bnd = "agent_setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_system_task with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_system_task", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_registry_id
         in
         ("container_registry_id", arg) :: bnds
       in
       let bnds =
         match v_agent_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry_task ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry_task

[@@@deriving.end]

let agent_setting ~cpu () : agent_setting = { cpu }

let base_image_trigger ?enabled ?update_trigger_endpoint
    ?update_trigger_payload_type ~name ~type_ () : base_image_trigger
    =
  {
    enabled;
    name;
    type_;
    update_trigger_endpoint;
    update_trigger_payload_type;
  }

let docker_step ?arguments ?cache_enabled ?image_names ?push_enabled
    ?secret_arguments ?target ~context_access_token ~context_path
    ~dockerfile_path () : docker_step =
  {
    arguments;
    cache_enabled;
    context_access_token;
    context_path;
    dockerfile_path;
    image_names;
    push_enabled;
    secret_arguments;
    target;
  }

let encoded_step ?context_access_token ?context_path ?secret_values
    ?value_content ?values ~task_content () : encoded_step =
  {
    context_access_token;
    context_path;
    secret_values;
    task_content;
    value_content;
    values;
  }

let file_step ?context_access_token ?context_path ?secret_values
    ?value_file_path ?values ~task_file_path () : file_step =
  {
    context_access_token;
    context_path;
    secret_values;
    task_file_path;
    value_file_path;
    values;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let platform ?architecture ?variant ~os () : platform =
  { architecture; os; variant }

let registry_credential__custom ?identity ?password ?username
    ~login_server () : registry_credential__custom =
  { identity; login_server; password; username }

let registry_credential__source ~login_mode () :
    registry_credential__source =
  { login_mode }

let registry_credential ?(source = []) ~custom () :
    registry_credential =
  { custom; source }

let source_trigger__authentication ?expire_in_seconds ?refresh_token
    ?scope ~token ~token_type () : source_trigger__authentication =
  { expire_in_seconds; refresh_token; scope; token; token_type }

let source_trigger ?branch ?enabled ?(authentication = []) ~events
    ~name ~repository_url ~source_type () : source_trigger =
  {
    branch;
    enabled;
    events;
    name;
    repository_url;
    source_type;
    authentication;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let timer_trigger ?enabled ~name ~schedule () : timer_trigger =
  { enabled; name; schedule }

let azurerm_container_registry_task ?agent_pool_name ?enabled ?id
    ?is_system_task ?log_template ?tags ?timeout_in_seconds
    ?(agent_setting = []) ?(base_image_trigger = [])
    ?(docker_step = []) ?(encoded_step = []) ?(file_step = [])
    ?(identity = []) ?(platform = []) ?(registry_credential = [])
    ?(source_trigger = []) ?timeouts ?(timer_trigger = [])
    ~container_registry_id ~name () : azurerm_container_registry_task
    =
  {
    agent_pool_name;
    container_registry_id;
    enabled;
    id;
    is_system_task;
    log_template;
    name;
    tags;
    timeout_in_seconds;
    agent_setting;
    base_image_trigger;
    docker_step;
    encoded_step;
    file_step;
    identity;
    platform;
    registry_credential;
    source_trigger;
    timeouts;
    timer_trigger;
  }

type t = {
  tf_name : string;
  agent_pool_name : string prop;
  container_registry_id : string prop;
  enabled : bool prop;
  id : string prop;
  is_system_task : bool prop;
  log_template : string prop;
  name : string prop;
  tags : (string * string) list prop;
  timeout_in_seconds : float prop;
}

let make ?agent_pool_name ?enabled ?id ?is_system_task ?log_template
    ?tags ?timeout_in_seconds ?(agent_setting = [])
    ?(base_image_trigger = []) ?(docker_step = [])
    ?(encoded_step = []) ?(file_step = []) ?(identity = [])
    ?(platform = []) ?(registry_credential = [])
    ?(source_trigger = []) ?timeouts ?(timer_trigger = [])
    ~container_registry_id ~name __id =
  let __type = "azurerm_container_registry_task" in
  let __attrs =
    ({
       tf_name = __id;
       agent_pool_name = Prop.computed __type __id "agent_pool_name";
       container_registry_id =
         Prop.computed __type __id "container_registry_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       is_system_task = Prop.computed __type __id "is_system_task";
       log_template = Prop.computed __type __id "log_template";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       timeout_in_seconds =
         Prop.computed __type __id "timeout_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_task
        (azurerm_container_registry_task ?agent_pool_name ?enabled
           ?id ?is_system_task ?log_template ?tags
           ?timeout_in_seconds ~agent_setting ~base_image_trigger
           ~docker_step ~encoded_step ~file_step ~identity ~platform
           ~registry_credential ~source_trigger ?timeouts
           ~timer_trigger ~container_registry_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_pool_name ?enabled ?id ?is_system_task
    ?log_template ?tags ?timeout_in_seconds ?(agent_setting = [])
    ?(base_image_trigger = []) ?(docker_step = [])
    ?(encoded_step = []) ?(file_step = []) ?(identity = [])
    ?(platform = []) ?(registry_credential = [])
    ?(source_trigger = []) ?timeouts ?(timer_trigger = [])
    ~container_registry_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?agent_pool_name ?enabled ?id ?is_system_task ?log_template
      ?tags ?timeout_in_seconds ~agent_setting ~base_image_trigger
      ~docker_step ~encoded_step ~file_step ~identity ~platform
      ~registry_credential ~source_trigger ?timeouts ~timer_trigger
      ~container_registry_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
