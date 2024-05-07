(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dead_letter_config = { target_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dead_letter_config) -> ()

let yojson_of_dead_letter_config =
  (function
   | { target_arn = v_target_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
       in
       `Assoc bnds
    : dead_letter_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dead_letter_config

[@@@deriving.end]

type environment = {
  variables : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment) -> ()

let yojson_of_environment =
  (function
   | { variables = v_variables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_variables with
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
             let bnd = "variables", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment

[@@@deriving.end]

type ephemeral_storage = { size : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_storage) -> ()

let yojson_of_ephemeral_storage =
  (function
   | { size = v_size } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ephemeral_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_storage

[@@@deriving.end]

type file_system_config = {
  arn : string prop;
  local_mount_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_system_config) -> ()

let yojson_of_file_system_config =
  (function
   | { arn = v_arn; local_mount_path = v_local_mount_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_local_mount_path
         in
         ("local_mount_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : file_system_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_system_config

[@@@deriving.end]

type image_config = {
  command : string prop list option; [@option]
  entry_point : string prop list option; [@option]
  working_directory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_config) -> ()

let yojson_of_image_config =
  (function
   | {
       command = v_command;
       entry_point = v_entry_point;
       working_directory = v_working_directory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_working_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_directory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entry_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "entry_point", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_config

[@@@deriving.end]

type logging_config = {
  application_log_level : string prop option; [@option]
  log_format : string prop;
  log_group : string prop option; [@option]
  system_log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | {
       application_log_level = v_application_log_level;
       log_format = v_log_format;
       log_group = v_log_group;
       system_log_level = v_system_log_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_system_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "system_log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_format in
         ("log_format", arg) :: bnds
       in
       let bnds =
         match v_application_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_log_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type snap_start = { apply_on : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : snap_start) -> ()

let yojson_of_snap_start =
  (function
   | { apply_on = v_apply_on } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_apply_on in
         ("apply_on", arg) :: bnds
       in
       `Assoc bnds
    : snap_start -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snap_start

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

type tracing_config = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : tracing_config) -> ()

let yojson_of_tracing_config =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : tracing_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tracing_config

[@@@deriving.end]

type vpc_config = {
  ipv6_allowed_for_dual_stack : bool prop option; [@option]
  security_group_ids : string prop list;
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       ipv6_allowed_for_dual_stack = v_ipv6_allowed_for_dual_stack;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       let bnds =
         match v_ipv6_allowed_for_dual_stack with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv6_allowed_for_dual_stack", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_lambda_function = {
  architectures : string prop list option; [@option]
  code_signing_config_arn : string prop option; [@option]
  description : string prop option; [@option]
  filename : string prop option; [@option]
  function_name : string prop;
  handler : string prop option; [@option]
  id : string prop option; [@option]
  image_uri : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  layers : string prop list option; [@option]
  memory_size : float prop option; [@option]
  package_type : string prop option; [@option]
  publish : bool prop option; [@option]
  replace_security_groups_on_destroy : bool prop option; [@option]
  replacement_security_group_ids : string prop list option; [@option]
  reserved_concurrent_executions : float prop option; [@option]
  role : string prop;
  runtime : string prop option; [@option]
  s3_bucket : string prop option; [@option]
  s3_key : string prop option; [@option]
  s3_object_version : string prop option; [@option]
  skip_destroy : bool prop option; [@option]
  source_code_hash : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeout : float prop option; [@option]
  dead_letter_config : dead_letter_config list;
  environment : environment list;
  ephemeral_storage : ephemeral_storage list;
  file_system_config : file_system_config list;
  image_config : image_config list;
  logging_config : logging_config list;
  snap_start : snap_start list;
  timeouts : timeouts option;
  tracing_config : tracing_config list;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_function) -> ()

let yojson_of_aws_lambda_function =
  (function
   | {
       architectures = v_architectures;
       code_signing_config_arn = v_code_signing_config_arn;
       description = v_description;
       filename = v_filename;
       function_name = v_function_name;
       handler = v_handler;
       id = v_id;
       image_uri = v_image_uri;
       kms_key_arn = v_kms_key_arn;
       layers = v_layers;
       memory_size = v_memory_size;
       package_type = v_package_type;
       publish = v_publish;
       replace_security_groups_on_destroy =
         v_replace_security_groups_on_destroy;
       replacement_security_group_ids =
         v_replacement_security_group_ids;
       reserved_concurrent_executions =
         v_reserved_concurrent_executions;
       role = v_role;
       runtime = v_runtime;
       s3_bucket = v_s3_bucket;
       s3_key = v_s3_key;
       s3_object_version = v_s3_object_version;
       skip_destroy = v_skip_destroy;
       source_code_hash = v_source_code_hash;
       tags = v_tags;
       tags_all = v_tags_all;
       timeout = v_timeout;
       dead_letter_config = v_dead_letter_config;
       environment = v_environment;
       ephemeral_storage = v_ephemeral_storage;
       file_system_config = v_file_system_config;
       image_config = v_image_config;
       logging_config = v_logging_config;
       snap_start = v_snap_start;
       timeouts = v_timeouts;
       tracing_config = v_tracing_config;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tracing_config v_tracing_config
         in
         ("tracing_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_snap_start v_snap_start
         in
         ("snap_start", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_config v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_image_config v_image_config
         in
         ("image_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_file_system_config
             v_file_system_config
         in
         ("file_system_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ephemeral_storage
             v_ephemeral_storage
         in
         ("ephemeral_storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_environment v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dead_letter_config
             v_dead_letter_config
         in
         ("dead_letter_config", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_source_code_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_code_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_reserved_concurrent_executions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reserved_concurrent_executions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replacement_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "replacement_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replace_security_groups_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_security_groups_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_layers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "layers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_uri", arg in
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
         match v_handler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "handler", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       let bnds =
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_code_signing_config_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "code_signing_config_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_architectures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "architectures", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lambda_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_function

[@@@deriving.end]

let dead_letter_config ~target_arn () : dead_letter_config =
  { target_arn }

let environment ?variables () : environment = { variables }
let ephemeral_storage ?size () : ephemeral_storage = { size }

let file_system_config ~arn ~local_mount_path () : file_system_config
    =
  { arn; local_mount_path }

let image_config ?command ?entry_point ?working_directory () :
    image_config =
  { command; entry_point; working_directory }

let logging_config ?application_log_level ?log_group
    ?system_log_level ~log_format () : logging_config =
  { application_log_level; log_format; log_group; system_log_level }

let snap_start ~apply_on () : snap_start = { apply_on }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let tracing_config ~mode () : tracing_config = { mode }

let vpc_config ?ipv6_allowed_for_dual_stack ~security_group_ids
    ~subnet_ids () : vpc_config =
  { ipv6_allowed_for_dual_stack; security_group_ids; subnet_ids }

let aws_lambda_function ?architectures ?code_signing_config_arn
    ?description ?filename ?handler ?id ?image_uri ?kms_key_arn
    ?layers ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout
    ?(dead_letter_config = []) ?(environment = [])
    ?(ephemeral_storage = []) ?(file_system_config = [])
    ?(image_config = []) ?(logging_config = []) ?(snap_start = [])
    ?timeouts ?(tracing_config = []) ?(vpc_config = [])
    ~function_name ~role () : aws_lambda_function =
  {
    architectures;
    code_signing_config_arn;
    description;
    filename;
    function_name;
    handler;
    id;
    image_uri;
    kms_key_arn;
    layers;
    memory_size;
    package_type;
    publish;
    replace_security_groups_on_destroy;
    replacement_security_group_ids;
    reserved_concurrent_executions;
    role;
    runtime;
    s3_bucket;
    s3_key;
    s3_object_version;
    skip_destroy;
    source_code_hash;
    tags;
    tags_all;
    timeout;
    dead_letter_config;
    environment;
    ephemeral_storage;
    file_system_config;
    image_config;
    logging_config;
    snap_start;
    timeouts;
    tracing_config;
    vpc_config;
  }

type t = {
  tf_name : string;
  architectures : string list prop;
  arn : string prop;
  code_signing_config_arn : string prop;
  description : string prop;
  filename : string prop;
  function_name : string prop;
  handler : string prop;
  id : string prop;
  image_uri : string prop;
  invoke_arn : string prop;
  kms_key_arn : string prop;
  last_modified : string prop;
  layers : string list prop;
  memory_size : float prop;
  package_type : string prop;
  publish : bool prop;
  qualified_arn : string prop;
  qualified_invoke_arn : string prop;
  replace_security_groups_on_destroy : bool prop;
  replacement_security_group_ids : string list prop;
  reserved_concurrent_executions : float prop;
  role : string prop;
  runtime : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  version : string prop;
}

let make ?architectures ?code_signing_config_arn ?description
    ?filename ?handler ?id ?image_uri ?kms_key_arn ?layers
    ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout
    ?(dead_letter_config = []) ?(environment = [])
    ?(ephemeral_storage = []) ?(file_system_config = [])
    ?(image_config = []) ?(logging_config = []) ?(snap_start = [])
    ?timeouts ?(tracing_config = []) ?(vpc_config = [])
    ~function_name ~role __id =
  let __type = "aws_lambda_function" in
  let __attrs =
    ({
       tf_name = __id;
       architectures = Prop.computed __type __id "architectures";
       arn = Prop.computed __type __id "arn";
       code_signing_config_arn =
         Prop.computed __type __id "code_signing_config_arn";
       description = Prop.computed __type __id "description";
       filename = Prop.computed __type __id "filename";
       function_name = Prop.computed __type __id "function_name";
       handler = Prop.computed __type __id "handler";
       id = Prop.computed __type __id "id";
       image_uri = Prop.computed __type __id "image_uri";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       last_modified = Prop.computed __type __id "last_modified";
       layers = Prop.computed __type __id "layers";
       memory_size = Prop.computed __type __id "memory_size";
       package_type = Prop.computed __type __id "package_type";
       publish = Prop.computed __type __id "publish";
       qualified_arn = Prop.computed __type __id "qualified_arn";
       qualified_invoke_arn =
         Prop.computed __type __id "qualified_invoke_arn";
       replace_security_groups_on_destroy =
         Prop.computed __type __id
           "replace_security_groups_on_destroy";
       replacement_security_group_ids =
         Prop.computed __type __id "replacement_security_group_ids";
       reserved_concurrent_executions =
         Prop.computed __type __id "reserved_concurrent_executions";
       role = Prop.computed __type __id "role";
       runtime = Prop.computed __type __id "runtime";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_key = Prop.computed __type __id "s3_key";
       s3_object_version =
         Prop.computed __type __id "s3_object_version";
       signing_job_arn = Prop.computed __type __id "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __type __id "signing_profile_version_arn";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       source_code_hash =
         Prop.computed __type __id "source_code_hash";
       source_code_size =
         Prop.computed __type __id "source_code_size";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeout = Prop.computed __type __id "timeout";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function
        (aws_lambda_function ?architectures ?code_signing_config_arn
           ?description ?filename ?handler ?id ?image_uri
           ?kms_key_arn ?layers ?memory_size ?package_type ?publish
           ?replace_security_groups_on_destroy
           ?replacement_security_group_ids
           ?reserved_concurrent_executions ?runtime ?s3_bucket
           ?s3_key ?s3_object_version ?skip_destroy ?source_code_hash
           ?tags ?tags_all ?timeout ~dead_letter_config ~environment
           ~ephemeral_storage ~file_system_config ~image_config
           ~logging_config ~snap_start ?timeouts ~tracing_config
           ~vpc_config ~function_name ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?architectures ?code_signing_config_arn
    ?description ?filename ?handler ?id ?image_uri ?kms_key_arn
    ?layers ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout
    ?(dead_letter_config = []) ?(environment = [])
    ?(ephemeral_storage = []) ?(file_system_config = [])
    ?(image_config = []) ?(logging_config = []) ?(snap_start = [])
    ?timeouts ?(tracing_config = []) ?(vpc_config = [])
    ~function_name ~role __id =
  let (r : _ Tf_core.resource) =
    make ?architectures ?code_signing_config_arn ?description
      ?filename ?handler ?id ?image_uri ?kms_key_arn ?layers
      ?memory_size ?package_type ?publish
      ?replace_security_groups_on_destroy
      ?replacement_security_group_ids ?reserved_concurrent_executions
      ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
      ?source_code_hash ?tags ?tags_all ?timeout ~dead_letter_config
      ~environment ~ephemeral_storage ~file_system_config
      ~image_config ~logging_config ~snap_start ?timeouts
      ~tracing_config ~vpc_config ~function_name ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
