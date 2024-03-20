(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type batch_target = {
  array_size : float prop option; [@option]
  job_attempts : float prop option; [@option]
  job_definition : string prop;
  job_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : batch_target) -> ()

let yojson_of_batch_target =
  (function
   | {
       array_size = v_array_size;
       job_attempts = v_job_attempts;
       job_definition = v_job_definition;
       job_name = v_job_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_name in
         ("job_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_job_definition
         in
         ("job_definition", arg) :: bnds
       in
       let bnds =
         match v_job_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "job_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_array_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "array_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : batch_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_batch_target

[@@@deriving.end]

type dead_letter_config = { arn : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : dead_letter_config) -> ()

let yojson_of_dead_letter_config =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dead_letter_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dead_letter_config

[@@@deriving.end]

type ecs_target__capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_target__capacity_provider_strategy) -> ()

let yojson_of_ecs_target__capacity_provider_strategy =
  (function
   | {
       base = v_base;
       capacity_provider = v_capacity_provider;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_provider
         in
         ("capacity_provider", arg) :: bnds
       in
       let bnds =
         match v_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ecs_target__capacity_provider_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_target__capacity_provider_strategy

[@@@deriving.end]

type ecs_target__network_configuration = {
  assign_public_ip : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_target__network_configuration) -> ()

let yojson_of_ecs_target__network_configuration =
  (function
   | {
       assign_public_ip = v_assign_public_ip;
       security_groups = v_security_groups;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assign_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assign_public_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ecs_target__network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_target__network_configuration

[@@@deriving.end]

type ecs_target__ordered_placement_strategy = {
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_target__ordered_placement_strategy) -> ()

let yojson_of_ecs_target__ordered_placement_strategy =
  (function
   | { field = v_field; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ecs_target__ordered_placement_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_target__ordered_placement_strategy

[@@@deriving.end]

type ecs_target__placement_constraint = {
  expression : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_target__placement_constraint) -> ()

let yojson_of_ecs_target__placement_constraint =
  (function
   | { expression = v_expression; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ecs_target__placement_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_target__placement_constraint

[@@@deriving.end]

type ecs_target = {
  enable_ecs_managed_tags : bool prop option; [@option]
  enable_execute_command : bool prop option; [@option]
  group : string prop option; [@option]
  launch_type : string prop option; [@option]
  platform_version : string prop option; [@option]
  propagate_tags : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  task_count : float prop option; [@option]
  task_definition_arn : string prop;
  capacity_provider_strategy :
    ecs_target__capacity_provider_strategy list;
  network_configuration : ecs_target__network_configuration list;
  ordered_placement_strategy :
    ecs_target__ordered_placement_strategy list;
  placement_constraint : ecs_target__placement_constraint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_target) -> ()

let yojson_of_ecs_target =
  (function
   | {
       enable_ecs_managed_tags = v_enable_ecs_managed_tags;
       enable_execute_command = v_enable_execute_command;
       group = v_group;
       launch_type = v_launch_type;
       platform_version = v_platform_version;
       propagate_tags = v_propagate_tags;
       tags = v_tags;
       task_count = v_task_count;
       task_definition_arn = v_task_definition_arn;
       capacity_provider_strategy = v_capacity_provider_strategy;
       network_configuration = v_network_configuration;
       ordered_placement_strategy = v_ordered_placement_strategy;
       placement_constraint = v_placement_constraint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ecs_target__placement_constraint
             v_placement_constraint
         in
         ("placement_constraint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ecs_target__ordered_placement_strategy
             v_ordered_placement_strategy
         in
         ("ordered_placement_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ecs_target__network_configuration
             v_network_configuration
         in
         ("network_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ecs_target__capacity_provider_strategy
             v_capacity_provider_strategy
         in
         ("capacity_provider_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_definition_arn
         in
         ("task_definition_arn", arg) :: bnds
       in
       let bnds =
         match v_task_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_count", arg in
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
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_execute_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_execute_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ecs_managed_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ecs_managed_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ecs_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_target

[@@@deriving.end]

type http_target = {
  header_parameters : (string * string prop) list option; [@option]
  path_parameter_values : string prop list option; [@option]
  query_string_parameters : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_target) -> ()

let yojson_of_http_target =
  (function
   | {
       header_parameters = v_header_parameters;
       path_parameter_values = v_path_parameter_values;
       query_string_parameters = v_query_string_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_string_parameters with
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
             let bnd = "query_string_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_parameter_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "path_parameter_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_parameters with
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
             let bnd = "header_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_target

[@@@deriving.end]

type input_transformer = {
  input_paths : (string * string prop) list option; [@option]
  input_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_transformer) -> ()

let yojson_of_input_transformer =
  (function
   | {
       input_paths = v_input_paths;
       input_template = v_input_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_input_template
         in
         ("input_template", arg) :: bnds
       in
       let bnds =
         match v_input_paths with
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
             let bnd = "input_paths", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_transformer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_transformer

[@@@deriving.end]

type kinesis_target = {
  partition_key_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis_target) -> ()

let yojson_of_kinesis_target =
  (function
   | { partition_key_path = v_partition_key_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_partition_key_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kinesis_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_target

[@@@deriving.end]

type redshift_target = {
  database : string prop;
  db_user : string prop option; [@option]
  secrets_manager_arn : string prop option; [@option]
  sql : string prop option; [@option]
  statement_name : string prop option; [@option]
  with_event : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift_target) -> ()

let yojson_of_redshift_target =
  (function
   | {
       database = v_database;
       db_user = v_db_user;
       secrets_manager_arn = v_secrets_manager_arn;
       sql = v_sql;
       statement_name = v_statement_name;
       with_event = v_with_event;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_event", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets_manager_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secrets_manager_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : redshift_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_target

[@@@deriving.end]

type retry_policy = {
  maximum_event_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_policy) -> ()

let yojson_of_retry_policy =
  (function
   | {
       maximum_event_age_in_seconds = v_maximum_event_age_in_seconds;
       maximum_retry_attempts = v_maximum_retry_attempts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_maximum_retry_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_retry_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_event_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_event_age_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_policy

[@@@deriving.end]

type run_command_targets = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : run_command_targets) -> ()

let yojson_of_run_command_targets =
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
    : run_command_targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_run_command_targets

[@@@deriving.end]

type sagemaker_pipeline_target__pipeline_parameter_list = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : sagemaker_pipeline_target__pipeline_parameter_list) -> ()

let yojson_of_sagemaker_pipeline_target__pipeline_parameter_list =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : sagemaker_pipeline_target__pipeline_parameter_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sagemaker_pipeline_target__pipeline_parameter_list

[@@@deriving.end]

type sagemaker_pipeline_target = {
  pipeline_parameter_list :
    sagemaker_pipeline_target__pipeline_parameter_list list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sagemaker_pipeline_target) -> ()

let yojson_of_sagemaker_pipeline_target =
  (function
   | { pipeline_parameter_list = v_pipeline_parameter_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_sagemaker_pipeline_target__pipeline_parameter_list
             v_pipeline_parameter_list
         in
         ("pipeline_parameter_list", arg) :: bnds
       in
       `Assoc bnds
    : sagemaker_pipeline_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sagemaker_pipeline_target

[@@@deriving.end]

type sqs_target = { message_group_id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : sqs_target) -> ()

let yojson_of_sqs_target =
  (function
   | { message_group_id = v_message_group_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_message_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sqs_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sqs_target

[@@@deriving.end]

type aws_cloudwatch_event_target = {
  arn : string prop;
  event_bus_name : string prop option; [@option]
  id : string prop option; [@option]
  input : string prop option; [@option]
  input_path : string prop option; [@option]
  role_arn : string prop option; [@option]
  rule : string prop;
  target_id : string prop option; [@option]
  batch_target : batch_target list;
  dead_letter_config : dead_letter_config list;
  ecs_target : ecs_target list;
  http_target : http_target list;
  input_transformer : input_transformer list;
  kinesis_target : kinesis_target list;
  redshift_target : redshift_target list;
  retry_policy : retry_policy list;
  run_command_targets : run_command_targets list;
  sagemaker_pipeline_target : sagemaker_pipeline_target list;
  sqs_target : sqs_target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_target) -> ()

let yojson_of_aws_cloudwatch_event_target =
  (function
   | {
       arn = v_arn;
       event_bus_name = v_event_bus_name;
       id = v_id;
       input = v_input;
       input_path = v_input_path;
       role_arn = v_role_arn;
       rule = v_rule;
       target_id = v_target_id;
       batch_target = v_batch_target;
       dead_letter_config = v_dead_letter_config;
       ecs_target = v_ecs_target;
       http_target = v_http_target;
       input_transformer = v_input_transformer;
       kinesis_target = v_kinesis_target;
       redshift_target = v_redshift_target;
       retry_policy = v_retry_policy;
       run_command_targets = v_run_command_targets;
       sagemaker_pipeline_target = v_sagemaker_pipeline_target;
       sqs_target = v_sqs_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sqs_target v_sqs_target
         in
         ("sqs_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sagemaker_pipeline_target
             v_sagemaker_pipeline_target
         in
         ("sagemaker_pipeline_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_run_command_targets
             v_run_command_targets
         in
         ("run_command_targets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retry_policy v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_redshift_target v_redshift_target
         in
         ("redshift_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kinesis_target v_kinesis_target
         in
         ("kinesis_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_transformer
             v_input_transformer
         in
         ("input_transformer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_target v_http_target
         in
         ("http_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ecs_target v_ecs_target
         in
         ("ecs_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dead_letter_config
             v_dead_letter_config
         in
         ("dead_letter_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_batch_target v_batch_target
         in
         ("batch_target", arg) :: bnds
       in
       let bnds =
         match v_target_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_path", arg in
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_bus_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_bus_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_target

[@@@deriving.end]

let batch_target ?array_size ?job_attempts ~job_definition ~job_name
    () : batch_target =
  { array_size; job_attempts; job_definition; job_name }

let dead_letter_config ?arn () : dead_letter_config = { arn }

let ecs_target__capacity_provider_strategy ?base ?weight
    ~capacity_provider () : ecs_target__capacity_provider_strategy =
  { base; capacity_provider; weight }

let ecs_target__network_configuration ?assign_public_ip
    ?security_groups ~subnets () : ecs_target__network_configuration
    =
  { assign_public_ip; security_groups; subnets }

let ecs_target__ordered_placement_strategy ?field ~type_ () :
    ecs_target__ordered_placement_strategy =
  { field; type_ }

let ecs_target__placement_constraint ?expression ~type_ () :
    ecs_target__placement_constraint =
  { expression; type_ }

let ecs_target ?enable_ecs_managed_tags ?enable_execute_command
    ?group ?launch_type ?platform_version ?propagate_tags ?tags
    ?task_count ~task_definition_arn ~capacity_provider_strategy
    ~network_configuration ~ordered_placement_strategy
    ~placement_constraint () : ecs_target =
  {
    enable_ecs_managed_tags;
    enable_execute_command;
    group;
    launch_type;
    platform_version;
    propagate_tags;
    tags;
    task_count;
    task_definition_arn;
    capacity_provider_strategy;
    network_configuration;
    ordered_placement_strategy;
    placement_constraint;
  }

let http_target ?header_parameters ?path_parameter_values
    ?query_string_parameters () : http_target =
  {
    header_parameters;
    path_parameter_values;
    query_string_parameters;
  }

let input_transformer ?input_paths ~input_template () :
    input_transformer =
  { input_paths; input_template }

let kinesis_target ?partition_key_path () : kinesis_target =
  { partition_key_path }

let redshift_target ?db_user ?secrets_manager_arn ?sql
    ?statement_name ?with_event ~database () : redshift_target =
  {
    database;
    db_user;
    secrets_manager_arn;
    sql;
    statement_name;
    with_event;
  }

let retry_policy ?maximum_event_age_in_seconds
    ?maximum_retry_attempts () : retry_policy =
  { maximum_event_age_in_seconds; maximum_retry_attempts }

let run_command_targets ~key ~values () : run_command_targets =
  { key; values }

let sagemaker_pipeline_target__pipeline_parameter_list ~name ~value
    () : sagemaker_pipeline_target__pipeline_parameter_list =
  { name; value }

let sagemaker_pipeline_target ~pipeline_parameter_list () :
    sagemaker_pipeline_target =
  { pipeline_parameter_list }

let sqs_target ?message_group_id () : sqs_target =
  { message_group_id }

let aws_cloudwatch_event_target ?event_bus_name ?id ?input
    ?input_path ?role_arn ?target_id ~arn ~rule ~batch_target
    ~dead_letter_config ~ecs_target ~http_target ~input_transformer
    ~kinesis_target ~redshift_target ~retry_policy
    ~run_command_targets ~sagemaker_pipeline_target ~sqs_target () :
    aws_cloudwatch_event_target =
  {
    arn;
    event_bus_name;
    id;
    input;
    input_path;
    role_arn;
    rule;
    target_id;
    batch_target;
    dead_letter_config;
    ecs_target;
    http_target;
    input_transformer;
    kinesis_target;
    redshift_target;
    retry_policy;
    run_command_targets;
    sagemaker_pipeline_target;
    sqs_target;
  }

type t = {
  arn : string prop;
  event_bus_name : string prop;
  id : string prop;
  input : string prop;
  input_path : string prop;
  role_arn : string prop;
  rule : string prop;
  target_id : string prop;
}

let make ?event_bus_name ?id ?input ?input_path ?role_arn ?target_id
    ~arn ~rule ~batch_target ~dead_letter_config ~ecs_target
    ~http_target ~input_transformer ~kinesis_target ~redshift_target
    ~retry_policy ~run_command_targets ~sagemaker_pipeline_target
    ~sqs_target __id =
  let __type = "aws_cloudwatch_event_target" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       event_bus_name = Prop.computed __type __id "event_bus_name";
       id = Prop.computed __type __id "id";
       input = Prop.computed __type __id "input";
       input_path = Prop.computed __type __id "input_path";
       role_arn = Prop.computed __type __id "role_arn";
       rule = Prop.computed __type __id "rule";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_target
        (aws_cloudwatch_event_target ?event_bus_name ?id ?input
           ?input_path ?role_arn ?target_id ~arn ~rule ~batch_target
           ~dead_letter_config ~ecs_target ~http_target
           ~input_transformer ~kinesis_target ~redshift_target
           ~retry_policy ~run_command_targets
           ~sagemaker_pipeline_target ~sqs_target ());
    attrs = __attrs;
  }

let register ?tf_module ?event_bus_name ?id ?input ?input_path
    ?role_arn ?target_id ~arn ~rule ~batch_target ~dead_letter_config
    ~ecs_target ~http_target ~input_transformer ~kinesis_target
    ~redshift_target ~retry_policy ~run_command_targets
    ~sagemaker_pipeline_target ~sqs_target __id =
  let (r : _ Tf_core.resource) =
    make ?event_bus_name ?id ?input ?input_path ?role_arn ?target_id
      ~arn ~rule ~batch_target ~dead_letter_config ~ecs_target
      ~http_target ~input_transformer ~kinesis_target
      ~redshift_target ~retry_policy ~run_command_targets
      ~sagemaker_pipeline_target ~sqs_target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
