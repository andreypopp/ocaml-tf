(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type batch_target = {
  array_size : float prop option; [@option]  (** array_size *)
  job_attempts : float prop option; [@option]  (** job_attempts *)
  job_definition : string prop;  (** job_definition *)
  job_name : string prop;  (** job_name *)
}
[@@deriving yojson_of]
(** batch_target *)

type dead_letter_config = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** dead_letter_config *)

type ecs_target__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** ecs_target__capacity_provider_strategy *)

type ecs_target__network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** ecs_target__network_configuration *)

type ecs_target__ordered_placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** ecs_target__ordered_placement_strategy *)

type ecs_target__placement_constraint = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** ecs_target__placement_constraint *)

type ecs_target = {
  enable_ecs_managed_tags : bool prop option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool prop option; [@option]
      (** enable_execute_command *)
  group : string prop option; [@option]  (** group *)
  launch_type : string prop option; [@option]  (** launch_type *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  propagate_tags : string prop option; [@option]
      (** propagate_tags *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  task_count : float prop option; [@option]  (** task_count *)
  task_definition_arn : string prop;  (** task_definition_arn *)
  capacity_provider_strategy :
    ecs_target__capacity_provider_strategy list;
  network_configuration : ecs_target__network_configuration list;
  ordered_placement_strategy :
    ecs_target__ordered_placement_strategy list;
  placement_constraint : ecs_target__placement_constraint list;
}
[@@deriving yojson_of]
(** ecs_target *)

type http_target = {
  header_parameters : (string * string prop) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string prop list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string prop) list option;
      [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** http_target *)

type input_transformer = {
  input_paths : (string * string prop) list option; [@option]
      (** input_paths *)
  input_template : string prop;  (** input_template *)
}
[@@deriving yojson_of]
(** input_transformer *)

type kinesis_target = {
  partition_key_path : string prop option; [@option]
      (** partition_key_path *)
}
[@@deriving yojson_of]
(** kinesis_target *)

type redshift_target = {
  database : string prop;  (** database *)
  db_user : string prop option; [@option]  (** db_user *)
  secrets_manager_arn : string prop option; [@option]
      (** secrets_manager_arn *)
  sql : string prop option; [@option]  (** sql *)
  statement_name : string prop option; [@option]
      (** statement_name *)
  with_event : bool prop option; [@option]  (** with_event *)
}
[@@deriving yojson_of]
(** redshift_target *)

type retry_policy = {
  maximum_event_age_in_seconds : float prop option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
}
[@@deriving yojson_of]
(** retry_policy *)

type run_command_targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** run_command_targets *)

type sagemaker_pipeline_target__pipeline_parameter_list = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** sagemaker_pipeline_target__pipeline_parameter_list *)

type sagemaker_pipeline_target = {
  pipeline_parameter_list :
    sagemaker_pipeline_target__pipeline_parameter_list list;
}
[@@deriving yojson_of]
(** sagemaker_pipeline_target *)

type sqs_target = {
  message_group_id : string prop option; [@option]
      (** message_group_id *)
}
[@@deriving yojson_of]
(** sqs_target *)

type aws_cloudwatch_event_target = {
  arn : string prop;  (** arn *)
  event_bus_name : string prop option; [@option]
      (** event_bus_name *)
  id : string prop option; [@option]  (** id *)
  input : string prop option; [@option]  (** input *)
  input_path : string prop option; [@option]  (** input_path *)
  role_arn : string prop option; [@option]  (** role_arn *)
  rule : string prop;  (** rule *)
  target_id : string prop option; [@option]  (** target_id *)
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
[@@deriving yojson_of]
(** aws_cloudwatch_event_target *)

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
