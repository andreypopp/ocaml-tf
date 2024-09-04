(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type flexible_time_window = {
  maximum_window_in_minutes : float prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : flexible_time_window) -> ()

let yojson_of_flexible_time_window =
  (function
   | {
       maximum_window_in_minutes = v_maximum_window_in_minutes;
       mode = v_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_maximum_window_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_window_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : flexible_time_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_flexible_time_window

[@@@deriving.end]

type target__dead_letter_config = { arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : target__dead_letter_config) -> ()

let yojson_of_target__dead_letter_config =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : target__dead_letter_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__dead_letter_config

[@@@deriving.end]

type target__ecs_parameters__capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target__ecs_parameters__capacity_provider_strategy) -> ()

let yojson_of_target__ecs_parameters__capacity_provider_strategy =
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
    : target__ecs_parameters__capacity_provider_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__ecs_parameters__capacity_provider_strategy

[@@@deriving.end]

type target__ecs_parameters__network_configuration = {
  assign_public_ip : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__ecs_parameters__network_configuration) -> ()

let yojson_of_target__ecs_parameters__network_configuration =
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
         if Stdlib.( = ) [] v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
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
    : target__ecs_parameters__network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__ecs_parameters__network_configuration

[@@@deriving.end]

type target__ecs_parameters__placement_constraints = {
  expression : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__ecs_parameters__placement_constraints) -> ()

let yojson_of_target__ecs_parameters__placement_constraints =
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
    : target__ecs_parameters__placement_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__ecs_parameters__placement_constraints

[@@@deriving.end]

type target__ecs_parameters__placement_strategy = {
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__ecs_parameters__placement_strategy) -> ()

let yojson_of_target__ecs_parameters__placement_strategy =
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
    : target__ecs_parameters__placement_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__ecs_parameters__placement_strategy

[@@@deriving.end]

type target__ecs_parameters = {
  enable_ecs_managed_tags : bool prop option; [@option]
  enable_execute_command : bool prop option; [@option]
  group : string prop option; [@option]
  launch_type : string prop option; [@option]
  platform_version : string prop option; [@option]
  propagate_tags : string prop option; [@option]
  reference_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  task_count : float prop option; [@option]
  task_definition_arn : string prop;
  capacity_provider_strategy :
    target__ecs_parameters__capacity_provider_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_configuration :
    target__ecs_parameters__network_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement_constraints :
    target__ecs_parameters__placement_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement_strategy :
    target__ecs_parameters__placement_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__ecs_parameters) -> ()

let yojson_of_target__ecs_parameters =
  (function
   | {
       enable_ecs_managed_tags = v_enable_ecs_managed_tags;
       enable_execute_command = v_enable_execute_command;
       group = v_group;
       launch_type = v_launch_type;
       platform_version = v_platform_version;
       propagate_tags = v_propagate_tags;
       reference_id = v_reference_id;
       tags = v_tags;
       task_count = v_task_count;
       task_definition_arn = v_task_definition_arn;
       capacity_provider_strategy = v_capacity_provider_strategy;
       network_configuration = v_network_configuration;
       placement_constraints = v_placement_constraints;
       placement_strategy = v_placement_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_placement_strategy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__ecs_parameters__placement_strategy)
               v_placement_strategy
           in
           let bnd = "placement_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_placement_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__ecs_parameters__placement_constraints)
               v_placement_constraints
           in
           let bnd = "placement_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__ecs_parameters__network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_provider_strategy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__ecs_parameters__capacity_provider_strategy)
               v_capacity_provider_strategy
           in
           let bnd = "capacity_provider_strategy", arg in
           bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_id", arg in
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
    : target__ecs_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__ecs_parameters

[@@@deriving.end]

type target__eventbridge_parameters = {
  detail_type : string prop;
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__eventbridge_parameters) -> ()

let yojson_of_target__eventbridge_parameters =
  (function
   | { detail_type = v_detail_type; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_detail_type in
         ("detail_type", arg) :: bnds
       in
       `Assoc bnds
    : target__eventbridge_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__eventbridge_parameters

[@@@deriving.end]

type target__kinesis_parameters = { partition_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : target__kinesis_parameters) -> ()

let yojson_of_target__kinesis_parameters =
  (function
   | { partition_key = v_partition_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partition_key in
         ("partition_key", arg) :: bnds
       in
       `Assoc bnds
    : target__kinesis_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__kinesis_parameters

[@@@deriving.end]

type target__retry_policy = {
  maximum_event_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__retry_policy) -> ()

let yojson_of_target__retry_policy =
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
    : target__retry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__retry_policy

[@@@deriving.end]

type target__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target__sagemaker_pipeline_parameters__pipeline_parameter) ->
  ()

let yojson_of_target__sagemaker_pipeline_parameters__pipeline_parameter
    =
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
    : target__sagemaker_pipeline_parameters__pipeline_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target__sagemaker_pipeline_parameters__pipeline_parameter

[@@@deriving.end]

type target__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    target__sagemaker_pipeline_parameters__pipeline_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__sagemaker_pipeline_parameters) -> ()

let yojson_of_target__sagemaker_pipeline_parameters =
  (function
   | { pipeline_parameter = v_pipeline_parameter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pipeline_parameter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__sagemaker_pipeline_parameters__pipeline_parameter)
               v_pipeline_parameter
           in
           let bnd = "pipeline_parameter", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : target__sagemaker_pipeline_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__sagemaker_pipeline_parameters

[@@@deriving.end]

type target__sqs_parameters = {
  message_group_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__sqs_parameters) -> ()

let yojson_of_target__sqs_parameters =
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
    : target__sqs_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__sqs_parameters

[@@@deriving.end]

type target = {
  arn : string prop;
  input : string prop option; [@option]
  role_arn : string prop;
  dead_letter_config : target__dead_letter_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ecs_parameters : target__ecs_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eventbridge_parameters : target__eventbridge_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_parameters : target__kinesis_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retry_policy : target__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sagemaker_pipeline_parameters :
    target__sagemaker_pipeline_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sqs_parameters : target__sqs_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | {
       arn = v_arn;
       input = v_input;
       role_arn = v_role_arn;
       dead_letter_config = v_dead_letter_config;
       ecs_parameters = v_ecs_parameters;
       eventbridge_parameters = v_eventbridge_parameters;
       kinesis_parameters = v_kinesis_parameters;
       retry_policy = v_retry_policy;
       sagemaker_pipeline_parameters =
         v_sagemaker_pipeline_parameters;
       sqs_parameters = v_sqs_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sqs_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__sqs_parameters)
               v_sqs_parameters
           in
           let bnd = "sqs_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sagemaker_pipeline_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target__sagemaker_pipeline_parameters)
               v_sagemaker_pipeline_parameters
           in
           let bnd = "sagemaker_pipeline_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retry_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__retry_policy)
               v_retry_policy
           in
           let bnd = "retry_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__kinesis_parameters)
               v_kinesis_parameters
           in
           let bnd = "kinesis_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eventbridge_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__eventbridge_parameters)
               v_eventbridge_parameters
           in
           let bnd = "eventbridge_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ecs_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__ecs_parameters)
               v_ecs_parameters
           in
           let bnd = "ecs_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dead_letter_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__dead_letter_config)
               v_dead_letter_config
           in
           let bnd = "dead_letter_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type aws_scheduler_schedule = {
  description : string prop option; [@option]
  end_date : string prop option; [@option]
  group_name : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  schedule_expression : string prop;
  schedule_expression_timezone : string prop option; [@option]
  start_date : string prop option; [@option]
  state : string prop option; [@option]
  flexible_time_window : flexible_time_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_scheduler_schedule) -> ()

let yojson_of_aws_scheduler_schedule =
  (function
   | {
       description = v_description;
       end_date = v_end_date;
       group_name = v_group_name;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       name = v_name;
       name_prefix = v_name_prefix;
       schedule_expression = v_schedule_expression;
       schedule_expression_timezone = v_schedule_expression_timezone;
       start_date = v_start_date;
       state = v_state;
       flexible_time_window = v_flexible_time_window;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg = (yojson_of_list yojson_of_target) v_target in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_flexible_time_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_flexible_time_window)
               v_flexible_time_window
           in
           let bnd = "flexible_time_window", arg in
           bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_expression_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_expression_timezone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         match v_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date", arg in
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
       `Assoc bnds
    : aws_scheduler_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_scheduler_schedule

[@@@deriving.end]

let flexible_time_window ?maximum_window_in_minutes ~mode () :
    flexible_time_window =
  { maximum_window_in_minutes; mode }

let target__dead_letter_config ~arn () : target__dead_letter_config =
  { arn }

let target__ecs_parameters__capacity_provider_strategy ?base ?weight
    ~capacity_provider () :
    target__ecs_parameters__capacity_provider_strategy =
  { base; capacity_provider; weight }

let target__ecs_parameters__network_configuration ?assign_public_ip
    ?security_groups ~subnets () :
    target__ecs_parameters__network_configuration =
  { assign_public_ip; security_groups; subnets }

let target__ecs_parameters__placement_constraints ?expression ~type_
    () : target__ecs_parameters__placement_constraints =
  { expression; type_ }

let target__ecs_parameters__placement_strategy ?field ~type_ () :
    target__ecs_parameters__placement_strategy =
  { field; type_ }

let target__ecs_parameters ?enable_ecs_managed_tags
    ?enable_execute_command ?group ?launch_type ?platform_version
    ?propagate_tags ?reference_id ?tags ?task_count
    ?(network_configuration = []) ~task_definition_arn
    ~capacity_provider_strategy ~placement_constraints
    ~placement_strategy () : target__ecs_parameters =
  {
    enable_ecs_managed_tags;
    enable_execute_command;
    group;
    launch_type;
    platform_version;
    propagate_tags;
    reference_id;
    tags;
    task_count;
    task_definition_arn;
    capacity_provider_strategy;
    network_configuration;
    placement_constraints;
    placement_strategy;
  }

let target__eventbridge_parameters ~detail_type ~source () :
    target__eventbridge_parameters =
  { detail_type; source }

let target__kinesis_parameters ~partition_key () :
    target__kinesis_parameters =
  { partition_key }

let target__retry_policy ?maximum_event_age_in_seconds
    ?maximum_retry_attempts () : target__retry_policy =
  { maximum_event_age_in_seconds; maximum_retry_attempts }

let target__sagemaker_pipeline_parameters__pipeline_parameter ~name
    ~value () :
    target__sagemaker_pipeline_parameters__pipeline_parameter =
  { name; value }

let target__sagemaker_pipeline_parameters ~pipeline_parameter () :
    target__sagemaker_pipeline_parameters =
  { pipeline_parameter }

let target__sqs_parameters ?message_group_id () :
    target__sqs_parameters =
  { message_group_id }

let target ?input ?(dead_letter_config = []) ?(ecs_parameters = [])
    ?(eventbridge_parameters = []) ?(kinesis_parameters = [])
    ?(retry_policy = []) ?(sagemaker_pipeline_parameters = [])
    ?(sqs_parameters = []) ~arn ~role_arn () : target =
  {
    arn;
    input;
    role_arn;
    dead_letter_config;
    ecs_parameters;
    eventbridge_parameters;
    kinesis_parameters;
    retry_policy;
    sagemaker_pipeline_parameters;
    sqs_parameters;
  }

let aws_scheduler_schedule ?description ?end_date ?group_name ?id
    ?kms_key_arn ?name ?name_prefix ?schedule_expression_timezone
    ?start_date ?state ~schedule_expression ~flexible_time_window
    ~target () : aws_scheduler_schedule =
  {
    description;
    end_date;
    group_name;
    id;
    kms_key_arn;
    name;
    name_prefix;
    schedule_expression;
    schedule_expression_timezone;
    start_date;
    state;
    flexible_time_window;
    target;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  end_date : string prop;
  group_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  schedule_expression : string prop;
  schedule_expression_timezone : string prop;
  start_date : string prop;
  state : string prop;
}

let make ?description ?end_date ?group_name ?id ?kms_key_arn ?name
    ?name_prefix ?schedule_expression_timezone ?start_date ?state
    ~schedule_expression ~flexible_time_window ~target __id =
  let __type = "aws_scheduler_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       end_date = Prop.computed __type __id "end_date";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       schedule_expression =
         Prop.computed __type __id "schedule_expression";
       schedule_expression_timezone =
         Prop.computed __type __id "schedule_expression_timezone";
       start_date = Prop.computed __type __id "start_date";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_scheduler_schedule
        (aws_scheduler_schedule ?description ?end_date ?group_name
           ?id ?kms_key_arn ?name ?name_prefix
           ?schedule_expression_timezone ?start_date ?state
           ~schedule_expression ~flexible_time_window ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?end_date ?group_name ?id
    ?kms_key_arn ?name ?name_prefix ?schedule_expression_timezone
    ?start_date ?state ~schedule_expression ~flexible_time_window
    ~target __id =
  let (r : _ Tf_core.resource) =
    make ?description ?end_date ?group_name ?id ?kms_key_arn ?name
      ?name_prefix ?schedule_expression_timezone ?start_date ?state
      ~schedule_expression ~flexible_time_window ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
