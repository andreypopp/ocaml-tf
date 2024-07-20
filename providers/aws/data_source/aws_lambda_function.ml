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

type environment = { variables : (string * string prop) list }
[@@deriving_inline yojson_of]

let _ = fun (_ : environment) -> ()

let yojson_of_environment =
  (function
   | { variables = v_variables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_variables
         in
         ("variables", arg) :: bnds
       in
       `Assoc bnds
    : environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment

[@@@deriving.end]

type ephemeral_storage = { size : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_storage) -> ()

let yojson_of_ephemeral_storage =
  (function
   | { size = v_size } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
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

type logging_config = {
  application_log_level : string prop;
  log_format : string prop;
  log_group : string prop;
  system_log_level : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_system_log_level
         in
         ("system_log_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_group in
         ("log_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_format in
         ("log_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_log_level
         in
         ("application_log_level", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

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
  ipv6_allowed_for_dual_stack : bool prop;
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       ipv6_allowed_for_dual_stack = v_ipv6_allowed_for_dual_stack;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_ipv6_allowed_for_dual_stack
         in
         ("ipv6_allowed_for_dual_stack", arg) :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_lambda_function = {
  function_name : string prop;
  id : string prop option; [@option]
  qualifier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_function) -> ()

let yojson_of_aws_lambda_function =
  (function
   | {
       function_name = v_function_name;
       id = v_id;
       qualifier = v_qualifier;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier", arg in
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_function

[@@@deriving.end]

let aws_lambda_function ?id ?qualifier ?tags ~function_name () :
    aws_lambda_function =
  { function_name; id; qualifier; tags }

type t = {
  tf_name : string;
  architectures : string list prop;
  arn : string prop;
  code_sha256 : string prop;
  code_signing_config_arn : string prop;
  dead_letter_config : dead_letter_config list prop;
  description : string prop;
  environment : environment list prop;
  ephemeral_storage : ephemeral_storage list prop;
  file_system_config : file_system_config list prop;
  function_name : string prop;
  handler : string prop;
  id : string prop;
  image_uri : string prop;
  invoke_arn : string prop;
  kms_key_arn : string prop;
  last_modified : string prop;
  layers : string list prop;
  logging_config : logging_config list prop;
  memory_size : float prop;
  qualified_arn : string prop;
  qualified_invoke_arn : string prop;
  qualifier : string prop;
  reserved_concurrent_executions : float prop;
  role : string prop;
  runtime : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  tags : (string * string) list prop;
  timeout : float prop;
  tracing_config : tracing_config list prop;
  version : string prop;
  vpc_config : vpc_config list prop;
}

let make ?id ?qualifier ?tags ~function_name __id =
  let __type = "aws_lambda_function" in
  let __attrs =
    ({
       tf_name = __id;
       architectures = Prop.computed __type __id "architectures";
       arn = Prop.computed __type __id "arn";
       code_sha256 = Prop.computed __type __id "code_sha256";
       code_signing_config_arn =
         Prop.computed __type __id "code_signing_config_arn";
       dead_letter_config =
         Prop.computed __type __id "dead_letter_config";
       description = Prop.computed __type __id "description";
       environment = Prop.computed __type __id "environment";
       ephemeral_storage =
         Prop.computed __type __id "ephemeral_storage";
       file_system_config =
         Prop.computed __type __id "file_system_config";
       function_name = Prop.computed __type __id "function_name";
       handler = Prop.computed __type __id "handler";
       id = Prop.computed __type __id "id";
       image_uri = Prop.computed __type __id "image_uri";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       last_modified = Prop.computed __type __id "last_modified";
       layers = Prop.computed __type __id "layers";
       logging_config = Prop.computed __type __id "logging_config";
       memory_size = Prop.computed __type __id "memory_size";
       qualified_arn = Prop.computed __type __id "qualified_arn";
       qualified_invoke_arn =
         Prop.computed __type __id "qualified_invoke_arn";
       qualifier = Prop.computed __type __id "qualifier";
       reserved_concurrent_executions =
         Prop.computed __type __id "reserved_concurrent_executions";
       role = Prop.computed __type __id "role";
       runtime = Prop.computed __type __id "runtime";
       signing_job_arn = Prop.computed __type __id "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __type __id "signing_profile_version_arn";
       source_code_hash =
         Prop.computed __type __id "source_code_hash";
       source_code_size =
         Prop.computed __type __id "source_code_size";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
       tracing_config = Prop.computed __type __id "tracing_config";
       version = Prop.computed __type __id "version";
       vpc_config = Prop.computed __type __id "vpc_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function
        (aws_lambda_function ?id ?qualifier ?tags ~function_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?qualifier ?tags ~function_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?qualifier ?tags ~function_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
