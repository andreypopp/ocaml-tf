(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type targets = { key : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : targets) -> ()

let yojson_of_targets =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets

[@@@deriving.end]

type task_invocation_parameters__automation_parameters__parameter = {
  name : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       task_invocation_parameters__automation_parameters__parameter) ->
  ()

let yojson_of_task_invocation_parameters__automation_parameters__parameter
    =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__automation_parameters__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_task_invocation_parameters__automation_parameters__parameter

[@@@deriving.end]

type task_invocation_parameters__automation_parameters = {
  document_version : string prop option; [@option]
  parameter :
    task_invocation_parameters__automation_parameters__parameter list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : task_invocation_parameters__automation_parameters) -> ()

let yojson_of_task_invocation_parameters__automation_parameters =
  (function
   | {
       document_version = v_document_version;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__automation_parameters__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         match v_document_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__automation_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_invocation_parameters__automation_parameters

[@@@deriving.end]

type task_invocation_parameters__lambda_parameters = {
  client_context : string prop option; [@option]
  payload : string prop option; [@option]
  qualifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_invocation_parameters__lambda_parameters) -> ()

let yojson_of_task_invocation_parameters__lambda_parameters =
  (function
   | {
       client_context = v_client_context;
       payload = v_payload;
       qualifier = v_qualifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__lambda_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_invocation_parameters__lambda_parameters

[@@@deriving.end]

type task_invocation_parameters__run_command_parameters__cloudwatch_config = {
  cloudwatch_log_group_name : string prop option; [@option]
  cloudwatch_output_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       task_invocation_parameters__run_command_parameters__cloudwatch_config) ->
  ()

let yojson_of_task_invocation_parameters__run_command_parameters__cloudwatch_config
    =
  (function
   | {
       cloudwatch_log_group_name = v_cloudwatch_log_group_name;
       cloudwatch_output_enabled = v_cloudwatch_output_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cloudwatch_output_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloudwatch_output_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_log_group_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__run_command_parameters__cloudwatch_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_task_invocation_parameters__run_command_parameters__cloudwatch_config

[@@@deriving.end]

type task_invocation_parameters__run_command_parameters__notification_config = {
  notification_arn : string prop option; [@option]
  notification_events : string prop list option; [@option]
  notification_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       task_invocation_parameters__run_command_parameters__notification_config) ->
  ()

let yojson_of_task_invocation_parameters__run_command_parameters__notification_config
    =
  (function
   | {
       notification_arn = v_notification_arn;
       notification_events = v_notification_events;
       notification_type = v_notification_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notification_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__run_command_parameters__notification_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_task_invocation_parameters__run_command_parameters__notification_config

[@@@deriving.end]

type task_invocation_parameters__run_command_parameters__parameter = {
  name : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       task_invocation_parameters__run_command_parameters__parameter) ->
  ()

let yojson_of_task_invocation_parameters__run_command_parameters__parameter
    =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__run_command_parameters__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_task_invocation_parameters__run_command_parameters__parameter

[@@@deriving.end]

type task_invocation_parameters__run_command_parameters = {
  comment : string prop option; [@option]
  document_hash : string prop option; [@option]
  document_hash_type : string prop option; [@option]
  document_version : string prop option; [@option]
  output_s3_bucket : string prop option; [@option]
  output_s3_key_prefix : string prop option; [@option]
  service_role_arn : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
  cloudwatch_config :
    task_invocation_parameters__run_command_parameters__cloudwatch_config
    list;
  notification_config :
    task_invocation_parameters__run_command_parameters__notification_config
    list;
  parameter :
    task_invocation_parameters__run_command_parameters__parameter
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : task_invocation_parameters__run_command_parameters) -> ()

let yojson_of_task_invocation_parameters__run_command_parameters =
  (function
   | {
       comment = v_comment;
       document_hash = v_document_hash;
       document_hash_type = v_document_hash_type;
       document_version = v_document_version;
       output_s3_bucket = v_output_s3_bucket;
       output_s3_key_prefix = v_output_s3_key_prefix;
       service_role_arn = v_service_role_arn;
       timeout_seconds = v_timeout_seconds;
       cloudwatch_config = v_cloudwatch_config;
       notification_config = v_notification_config;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__run_command_parameters__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__run_command_parameters__notification_config
             v_notification_config
         in
         ("notification_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__run_command_parameters__cloudwatch_config
             v_cloudwatch_config
         in
         ("cloudwatch_config", arg) :: bnds
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
         match v_service_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_hash_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_hash_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__run_command_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_invocation_parameters__run_command_parameters

[@@@deriving.end]

type task_invocation_parameters__step_functions_parameters = {
  input : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : task_invocation_parameters__step_functions_parameters) ->
  ()

let yojson_of_task_invocation_parameters__step_functions_parameters =
  (function
   | { input = v_input; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters__step_functions_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_task_invocation_parameters__step_functions_parameters

[@@@deriving.end]

type task_invocation_parameters = {
  automation_parameters :
    task_invocation_parameters__automation_parameters list;
  lambda_parameters :
    task_invocation_parameters__lambda_parameters list;
  run_command_parameters :
    task_invocation_parameters__run_command_parameters list;
  step_functions_parameters :
    task_invocation_parameters__step_functions_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_invocation_parameters) -> ()

let yojson_of_task_invocation_parameters =
  (function
   | {
       automation_parameters = v_automation_parameters;
       lambda_parameters = v_lambda_parameters;
       run_command_parameters = v_run_command_parameters;
       step_functions_parameters = v_step_functions_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__step_functions_parameters
             v_step_functions_parameters
         in
         ("step_functions_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__run_command_parameters
             v_run_command_parameters
         in
         ("run_command_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__lambda_parameters
             v_lambda_parameters
         in
         ("lambda_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_invocation_parameters__automation_parameters
             v_automation_parameters
         in
         ("automation_parameters", arg) :: bnds
       in
       `Assoc bnds
    : task_invocation_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_invocation_parameters

[@@@deriving.end]

type aws_ssm_maintenance_window_task = {
  cutoff_behavior : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  max_concurrency : string prop option; [@option]
  max_errors : string prop option; [@option]
  name : string prop option; [@option]
  priority : float prop option; [@option]
  service_role_arn : string prop option; [@option]
  task_arn : string prop;
  task_type : string prop;
  window_id : string prop;
  targets : targets list;
  task_invocation_parameters : task_invocation_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_maintenance_window_task) -> ()

let yojson_of_aws_ssm_maintenance_window_task =
  (function
   | {
       cutoff_behavior = v_cutoff_behavior;
       description = v_description;
       id = v_id;
       max_concurrency = v_max_concurrency;
       max_errors = v_max_errors;
       name = v_name;
       priority = v_priority;
       service_role_arn = v_service_role_arn;
       task_arn = v_task_arn;
       task_type = v_task_type;
       window_id = v_window_id;
       targets = v_targets;
       task_invocation_parameters = v_task_invocation_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_task_invocation_parameters
             v_task_invocation_parameters
         in
         ("task_invocation_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_targets v_targets in
         ("targets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window_id in
         ("window_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_type in
         ("task_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_arn in
         ("task_arn", arg) :: bnds
       in
       let bnds =
         match v_service_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
       let bnds =
         match v_max_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_errors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_concurrency", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cutoff_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cutoff_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_maintenance_window_task ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_maintenance_window_task

[@@@deriving.end]

let targets ~key ~values () : targets = { key; values }

let task_invocation_parameters__automation_parameters__parameter
    ~name ~values () :
    task_invocation_parameters__automation_parameters__parameter =
  { name; values }

let task_invocation_parameters__automation_parameters
    ?document_version ~parameter () :
    task_invocation_parameters__automation_parameters =
  { document_version; parameter }

let task_invocation_parameters__lambda_parameters ?client_context
    ?payload ?qualifier () :
    task_invocation_parameters__lambda_parameters =
  { client_context; payload; qualifier }

let task_invocation_parameters__run_command_parameters__cloudwatch_config
    ?cloudwatch_log_group_name ?cloudwatch_output_enabled () :
    task_invocation_parameters__run_command_parameters__cloudwatch_config
    =
  { cloudwatch_log_group_name; cloudwatch_output_enabled }

let task_invocation_parameters__run_command_parameters__notification_config
    ?notification_arn ?notification_events ?notification_type () :
    task_invocation_parameters__run_command_parameters__notification_config
    =
  { notification_arn; notification_events; notification_type }

let task_invocation_parameters__run_command_parameters__parameter
    ~name ~values () :
    task_invocation_parameters__run_command_parameters__parameter =
  { name; values }

let task_invocation_parameters__run_command_parameters ?comment
    ?document_hash ?document_hash_type ?document_version
    ?output_s3_bucket ?output_s3_key_prefix ?service_role_arn
    ?timeout_seconds ?(cloudwatch_config = [])
    ?(notification_config = []) ~parameter () :
    task_invocation_parameters__run_command_parameters =
  {
    comment;
    document_hash;
    document_hash_type;
    document_version;
    output_s3_bucket;
    output_s3_key_prefix;
    service_role_arn;
    timeout_seconds;
    cloudwatch_config;
    notification_config;
    parameter;
  }

let task_invocation_parameters__step_functions_parameters ?input
    ?name () : task_invocation_parameters__step_functions_parameters
    =
  { input; name }

let task_invocation_parameters ?(automation_parameters = [])
    ?(lambda_parameters = []) ?(run_command_parameters = [])
    ?(step_functions_parameters = []) () : task_invocation_parameters
    =
  {
    automation_parameters;
    lambda_parameters;
    run_command_parameters;
    step_functions_parameters;
  }

let aws_ssm_maintenance_window_task ?cutoff_behavior ?description ?id
    ?max_concurrency ?max_errors ?name ?priority ?service_role_arn
    ?(targets = []) ?(task_invocation_parameters = []) ~task_arn
    ~task_type ~window_id () : aws_ssm_maintenance_window_task =
  {
    cutoff_behavior;
    description;
    id;
    max_concurrency;
    max_errors;
    name;
    priority;
    service_role_arn;
    task_arn;
    task_type;
    window_id;
    targets;
    task_invocation_parameters;
  }

type t = {
  arn : string prop;
  cutoff_behavior : string prop;
  description : string prop;
  id : string prop;
  max_concurrency : string prop;
  max_errors : string prop;
  name : string prop;
  priority : float prop;
  service_role_arn : string prop;
  task_arn : string prop;
  task_type : string prop;
  window_id : string prop;
  window_task_id : string prop;
}

let make ?cutoff_behavior ?description ?id ?max_concurrency
    ?max_errors ?name ?priority ?service_role_arn ?(targets = [])
    ?(task_invocation_parameters = []) ~task_arn ~task_type
    ~window_id __id =
  let __type = "aws_ssm_maintenance_window_task" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cutoff_behavior = Prop.computed __type __id "cutoff_behavior";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_concurrency = Prop.computed __type __id "max_concurrency";
       max_errors = Prop.computed __type __id "max_errors";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       task_arn = Prop.computed __type __id "task_arn";
       task_type = Prop.computed __type __id "task_type";
       window_id = Prop.computed __type __id "window_id";
       window_task_id = Prop.computed __type __id "window_task_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_maintenance_window_task
        (aws_ssm_maintenance_window_task ?cutoff_behavior
           ?description ?id ?max_concurrency ?max_errors ?name
           ?priority ?service_role_arn ~targets
           ~task_invocation_parameters ~task_arn ~task_type
           ~window_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cutoff_behavior ?description ?id
    ?max_concurrency ?max_errors ?name ?priority ?service_role_arn
    ?(targets = []) ?(task_invocation_parameters = []) ~task_arn
    ~task_type ~window_id __id =
  let (r : _ Tf_core.resource) =
    make ?cutoff_behavior ?description ?id ?max_concurrency
      ?max_errors ?name ?priority ?service_role_arn ~targets
      ~task_invocation_parameters ~task_arn ~task_type ~window_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
