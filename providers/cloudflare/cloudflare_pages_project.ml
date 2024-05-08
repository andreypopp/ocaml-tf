(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type build_config = {
  build_caching : bool prop option; [@option]
  build_command : string prop option; [@option]
  destination_dir : string prop option; [@option]
  root_dir : string prop option; [@option]
  web_analytics_tag : string prop option; [@option]
  web_analytics_token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config) -> ()

let yojson_of_build_config =
  (function
   | {
       build_caching = v_build_caching;
       build_command = v_build_command;
       destination_dir = v_destination_dir;
       root_dir = v_root_dir;
       web_analytics_tag = v_web_analytics_tag;
       web_analytics_token = v_web_analytics_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_analytics_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_analytics_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_web_analytics_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_analytics_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "build_caching", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config

[@@@deriving.end]

type deployment_configs__preview__placement = {
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs__preview__placement) -> ()

let yojson_of_deployment_configs__preview__placement =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__preview__placement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__preview__placement

[@@@deriving.end]

type deployment_configs__preview__service_binding = {
  environment : string prop option; [@option]
  name : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs__preview__service_binding) -> ()

let yojson_of_deployment_configs__preview__service_binding =
  (function
   | {
       environment = v_environment;
       name = v_name;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__preview__service_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__preview__service_binding

[@@@deriving.end]

type deployment_configs__preview = {
  always_use_latest_compatibility_date : bool prop option; [@option]
  compatibility_date : string prop option; [@option]
  compatibility_flags : string prop list option; [@option]
  d1_databases : (string * string prop) list option; [@option]
  durable_object_namespaces : (string * string prop) list option;
      [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  fail_open : bool prop option; [@option]
  kv_namespaces : (string * string prop) list option; [@option]
  r2_buckets : (string * string prop) list option; [@option]
  secrets : (string * string prop) list option; [@option]
  usage_model : string prop option; [@option]
  placement : deployment_configs__preview__placement list;
      [@default []] [@yojson_drop_default ( = )]
  service_binding : deployment_configs__preview__service_binding list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs__preview) -> ()

let yojson_of_deployment_configs__preview =
  (function
   | {
       always_use_latest_compatibility_date =
         v_always_use_latest_compatibility_date;
       compatibility_date = v_compatibility_date;
       compatibility_flags = v_compatibility_flags;
       d1_databases = v_d1_databases;
       durable_object_namespaces = v_durable_object_namespaces;
       environment_variables = v_environment_variables;
       fail_open = v_fail_open;
       kv_namespaces = v_kv_namespaces;
       r2_buckets = v_r2_buckets;
       secrets = v_secrets;
       usage_model = v_usage_model;
       placement = v_placement;
       service_binding = v_service_binding;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_binding then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_configs__preview__service_binding)
               v_service_binding
           in
           let bnd = "service_binding", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_placement then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_configs__preview__placement)
               v_placement
           in
           let bnd = "placement", arg in
           bnd :: bnds
       in
       let bnds =
         match v_usage_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets with
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
             let bnd = "secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_r2_buckets with
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
             let bnd = "r2_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kv_namespaces with
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
             let bnd = "kv_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fail_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_open", arg in
             bnd :: bnds
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
         match v_durable_object_namespaces with
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
             let bnd = "durable_object_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_d1_databases with
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
             let bnd = "d1_databases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compatibility_flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatibility_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_use_latest_compatibility_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_use_latest_compatibility_date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__preview ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__preview

[@@@deriving.end]

type deployment_configs__production__placement = {
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs__production__placement) -> ()

let yojson_of_deployment_configs__production__placement =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__production__placement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__production__placement

[@@@deriving.end]

type deployment_configs__production__service_binding = {
  environment : string prop option; [@option]
  name : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : deployment_configs__production__service_binding) -> ()

let yojson_of_deployment_configs__production__service_binding =
  (function
   | {
       environment = v_environment;
       name = v_name;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__production__service_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__production__service_binding

[@@@deriving.end]

type deployment_configs__production = {
  always_use_latest_compatibility_date : bool prop option; [@option]
  compatibility_date : string prop option; [@option]
  compatibility_flags : string prop list option; [@option]
  d1_databases : (string * string prop) list option; [@option]
  durable_object_namespaces : (string * string prop) list option;
      [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  fail_open : bool prop option; [@option]
  kv_namespaces : (string * string prop) list option; [@option]
  r2_buckets : (string * string prop) list option; [@option]
  secrets : (string * string prop) list option; [@option]
  usage_model : string prop option; [@option]
  placement : deployment_configs__production__placement list;
      [@default []] [@yojson_drop_default ( = )]
  service_binding :
    deployment_configs__production__service_binding list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs__production) -> ()

let yojson_of_deployment_configs__production =
  (function
   | {
       always_use_latest_compatibility_date =
         v_always_use_latest_compatibility_date;
       compatibility_date = v_compatibility_date;
       compatibility_flags = v_compatibility_flags;
       d1_databases = v_d1_databases;
       durable_object_namespaces = v_durable_object_namespaces;
       environment_variables = v_environment_variables;
       fail_open = v_fail_open;
       kv_namespaces = v_kv_namespaces;
       r2_buckets = v_r2_buckets;
       secrets = v_secrets;
       usage_model = v_usage_model;
       placement = v_placement;
       service_binding = v_service_binding;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_binding then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_configs__production__service_binding)
               v_service_binding
           in
           let bnd = "service_binding", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_placement then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_configs__production__placement)
               v_placement
           in
           let bnd = "placement", arg in
           bnd :: bnds
       in
       let bnds =
         match v_usage_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets with
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
             let bnd = "secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_r2_buckets with
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
             let bnd = "r2_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kv_namespaces with
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
             let bnd = "kv_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fail_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_open", arg in
             bnd :: bnds
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
         match v_durable_object_namespaces with
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
             let bnd = "durable_object_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_d1_databases with
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
             let bnd = "d1_databases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compatibility_flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatibility_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_use_latest_compatibility_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_use_latest_compatibility_date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs__production ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs__production

[@@@deriving.end]

type deployment_configs = {
  preview : deployment_configs__preview list;
      [@default []] [@yojson_drop_default ( = )]
  production : deployment_configs__production list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_configs) -> ()

let yojson_of_deployment_configs =
  (function
   | { preview = v_preview; production = v_production } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_production then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_configs__production)
               v_production
           in
           let bnd = "production", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_preview then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_configs__preview)
               v_preview
           in
           let bnd = "preview", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployment_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_configs

[@@@deriving.end]

type source__config = {
  deployments_enabled : bool prop option; [@option]
  owner : string prop option; [@option]
  pr_comments_enabled : bool prop option; [@option]
  preview_branch_excludes : string prop list option; [@option]
  preview_branch_includes : string prop list option; [@option]
  preview_deployment_setting : string prop option; [@option]
  production_branch : string prop;
  production_deployment_enabled : bool prop option; [@option]
  repo_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__config) -> ()

let yojson_of_source__config =
  (function
   | {
       deployments_enabled = v_deployments_enabled;
       owner = v_owner;
       pr_comments_enabled = v_pr_comments_enabled;
       preview_branch_excludes = v_preview_branch_excludes;
       preview_branch_includes = v_preview_branch_includes;
       preview_deployment_setting = v_preview_deployment_setting;
       production_branch = v_production_branch;
       production_deployment_enabled =
         v_production_deployment_enabled;
       repo_name = v_repo_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_repo_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_production_deployment_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "production_deployment_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_production_branch
         in
         ("production_branch", arg) :: bnds
       in
       let bnds =
         match v_preview_deployment_setting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preview_deployment_setting", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preview_branch_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preview_branch_includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preview_branch_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preview_branch_excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pr_comments_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pr_comments_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployments_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deployments_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__config

[@@@deriving.end]

type source = {
  type_ : string prop option; [@option] [@key "type"]
  config : source__config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { type_ = v_type_; config = v_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__config) v_config
           in
           let bnd = "config", arg in
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
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type cloudflare_pages_project = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  production_branch : string prop;
  build_config : build_config list;
      [@default []] [@yojson_drop_default ( = )]
  deployment_configs : deployment_configs list;
      [@default []] [@yojson_drop_default ( = )]
  source : source list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_pages_project) -> ()

let yojson_of_cloudflare_pages_project =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       production_branch = v_production_branch;
       build_config = v_build_config;
       deployment_configs = v_deployment_configs;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_deployment_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_configs)
               v_deployment_configs
           in
           let bnd = "deployment_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_build_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_build_config) v_build_config
           in
           let bnd = "build_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_production_branch
         in
         ("production_branch", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_pages_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_pages_project

[@@@deriving.end]

let build_config ?build_caching ?build_command ?destination_dir
    ?root_dir ?web_analytics_tag ?web_analytics_token () :
    build_config =
  {
    build_caching;
    build_command;
    destination_dir;
    root_dir;
    web_analytics_tag;
    web_analytics_token;
  }

let deployment_configs__preview__placement ?mode () :
    deployment_configs__preview__placement =
  { mode }

let deployment_configs__preview__service_binding ?environment ~name
    ~service () : deployment_configs__preview__service_binding =
  { environment; name; service }

let deployment_configs__preview ?always_use_latest_compatibility_date
    ?compatibility_date ?compatibility_flags ?d1_databases
    ?durable_object_namespaces ?environment_variables ?fail_open
    ?kv_namespaces ?r2_buckets ?secrets ?usage_model
    ?(placement = []) ~service_binding () :
    deployment_configs__preview =
  {
    always_use_latest_compatibility_date;
    compatibility_date;
    compatibility_flags;
    d1_databases;
    durable_object_namespaces;
    environment_variables;
    fail_open;
    kv_namespaces;
    r2_buckets;
    secrets;
    usage_model;
    placement;
    service_binding;
  }

let deployment_configs__production__placement ?mode () :
    deployment_configs__production__placement =
  { mode }

let deployment_configs__production__service_binding ?environment
    ~name ~service () :
    deployment_configs__production__service_binding =
  { environment; name; service }

let deployment_configs__production
    ?always_use_latest_compatibility_date ?compatibility_date
    ?compatibility_flags ?d1_databases ?durable_object_namespaces
    ?environment_variables ?fail_open ?kv_namespaces ?r2_buckets
    ?secrets ?usage_model ?(placement = []) ~service_binding () :
    deployment_configs__production =
  {
    always_use_latest_compatibility_date;
    compatibility_date;
    compatibility_flags;
    d1_databases;
    durable_object_namespaces;
    environment_variables;
    fail_open;
    kv_namespaces;
    r2_buckets;
    secrets;
    usage_model;
    placement;
    service_binding;
  }

let deployment_configs ?(preview = []) ?(production = []) () :
    deployment_configs =
  { preview; production }

let source__config ?deployments_enabled ?owner ?pr_comments_enabled
    ?preview_branch_excludes ?preview_branch_includes
    ?preview_deployment_setting ?production_deployment_enabled
    ?repo_name ~production_branch () : source__config =
  {
    deployments_enabled;
    owner;
    pr_comments_enabled;
    preview_branch_excludes;
    preview_branch_includes;
    preview_deployment_setting;
    production_branch;
    production_deployment_enabled;
    repo_name;
  }

let source ?type_ ?(config = []) () : source = { type_; config }

let cloudflare_pages_project ?id ?(build_config = [])
    ?(deployment_configs = []) ?(source = []) ~account_id ~name
    ~production_branch () : cloudflare_pages_project =
  {
    account_id;
    id;
    name;
    production_branch;
    build_config;
    deployment_configs;
    source;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  created_on : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  production_branch : string prop;
  subdomain : string prop;
}

let make ?id ?(build_config = []) ?(deployment_configs = [])
    ?(source = []) ~account_id ~name ~production_branch __id =
  let __type = "cloudflare_pages_project" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       created_on = Prop.computed __type __id "created_on";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       production_branch =
         Prop.computed __type __id "production_branch";
       subdomain = Prop.computed __type __id "subdomain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_pages_project
        (cloudflare_pages_project ?id ~build_config
           ~deployment_configs ~source ~account_id ~name
           ~production_branch ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(build_config = [])
    ?(deployment_configs = []) ?(source = []) ~account_id ~name
    ~production_branch __id =
  let (r : _ Tf_core.resource) =
    make ?id ~build_config ~deployment_configs ~source ~account_id
      ~name ~production_branch __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
