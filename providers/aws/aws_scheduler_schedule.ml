(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type flexible_time_window = {
  maximum_window_in_minutes : float prop option; [@option]
      (** maximum_window_in_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** flexible_time_window *)

type target__dead_letter_config = { arn : string prop  (** arn *) }
[@@deriving yojson_of]
(** target__dead_letter_config *)

type target__ecs_parameters__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** target__ecs_parameters__capacity_provider_strategy *)

type target__ecs_parameters__network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** target__ecs_parameters__network_configuration *)

type target__ecs_parameters__placement_constraints = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target__ecs_parameters__placement_constraints *)

type target__ecs_parameters__placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target__ecs_parameters__placement_strategy *)

type target__ecs_parameters = {
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
  reference_id : string prop option; [@option]  (** reference_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  task_count : float prop option; [@option]  (** task_count *)
  task_definition_arn : string prop;  (** task_definition_arn *)
  capacity_provider_strategy :
    target__ecs_parameters__capacity_provider_strategy list;
  network_configuration :
    target__ecs_parameters__network_configuration list;
  placement_constraints :
    target__ecs_parameters__placement_constraints list;
  placement_strategy :
    target__ecs_parameters__placement_strategy list;
}
[@@deriving yojson_of]
(** target__ecs_parameters *)

type target__eventbridge_parameters = {
  detail_type : string prop;  (** detail_type *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** target__eventbridge_parameters *)

type target__kinesis_parameters = {
  partition_key : string prop;  (** partition_key *)
}
[@@deriving yojson_of]
(** target__kinesis_parameters *)

type target__retry_policy = {
  maximum_event_age_in_seconds : float prop option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
}
[@@deriving yojson_of]
(** target__retry_policy *)

type target__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target__sagemaker_pipeline_parameters__pipeline_parameter *)

type target__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    target__sagemaker_pipeline_parameters__pipeline_parameter list;
}
[@@deriving yojson_of]
(** target__sagemaker_pipeline_parameters *)

type target__sqs_parameters = {
  message_group_id : string prop option; [@option]
      (** message_group_id *)
}
[@@deriving yojson_of]
(** target__sqs_parameters *)

type target = {
  arn : string prop;  (** arn *)
  input : string prop option; [@option]  (** input *)
  role_arn : string prop;  (** role_arn *)
  dead_letter_config : target__dead_letter_config list;
  ecs_parameters : target__ecs_parameters list;
  eventbridge_parameters : target__eventbridge_parameters list;
  kinesis_parameters : target__kinesis_parameters list;
  retry_policy : target__retry_policy list;
  sagemaker_pipeline_parameters :
    target__sagemaker_pipeline_parameters list;
  sqs_parameters : target__sqs_parameters list;
}
[@@deriving yojson_of]
(** target *)

type aws_scheduler_schedule = {
  description : string prop option; [@option]  (** description *)
  end_date : string prop option; [@option]  (** end_date *)
  group_name : string prop option; [@option]  (** group_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  schedule_expression : string prop;  (** schedule_expression *)
  schedule_expression_timezone : string prop option; [@option]
      (** schedule_expression_timezone *)
  start_date : string prop option; [@option]  (** start_date *)
  state : string prop option; [@option]  (** state *)
  flexible_time_window : flexible_time_window list;
  target : target list;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule *)

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
    ~task_definition_arn ~capacity_provider_strategy
    ~network_configuration ~placement_constraints ~placement_strategy
    () : target__ecs_parameters =
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

let target ?input ~arn ~role_arn ~dead_letter_config ~ecs_parameters
    ~eventbridge_parameters ~kinesis_parameters ~retry_policy
    ~sagemaker_pipeline_parameters ~sqs_parameters () : target =
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

let register ?tf_module ?description ?end_date ?group_name ?id
    ?kms_key_arn ?name ?name_prefix ?schedule_expression_timezone
    ?start_date ?state ~schedule_expression ~flexible_time_window
    ~target __resource_id =
  let __resource_type = "aws_scheduler_schedule" in
  let __resource =
    aws_scheduler_schedule ?description ?end_date ?group_name ?id
      ?kms_key_arn ?name ?name_prefix ?schedule_expression_timezone
      ?start_date ?state ~schedule_expression ~flexible_time_window
      ~target ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_scheduler_schedule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       end_date =
         Prop.computed __resource_type __resource_id "end_date";
       group_name =
         Prop.computed __resource_type __resource_id "group_name";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       schedule_expression =
         Prop.computed __resource_type __resource_id
           "schedule_expression";
       schedule_expression_timezone =
         Prop.computed __resource_type __resource_id
           "schedule_expression_timezone";
       start_date =
         Prop.computed __resource_type __resource_id "start_date";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
