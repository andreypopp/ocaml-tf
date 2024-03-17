(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_target__batch_target = {
  array_size : float prop option; [@option]  (** array_size *)
  job_attempts : float prop option; [@option]  (** job_attempts *)
  job_definition : string prop;  (** job_definition *)
  job_name : string prop;  (** job_name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__batch_target *)

type aws_cloudwatch_event_target__dead_letter_config = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__dead_letter_config *)

type aws_cloudwatch_event_target__ecs_target__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__ecs_target__capacity_provider_strategy *)

type aws_cloudwatch_event_target__ecs_target__network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__ecs_target__network_configuration *)

type aws_cloudwatch_event_target__ecs_target__ordered_placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__ecs_target__ordered_placement_strategy *)

type aws_cloudwatch_event_target__ecs_target__placement_constraint = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__ecs_target__placement_constraint *)

type aws_cloudwatch_event_target__ecs_target = {
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
    aws_cloudwatch_event_target__ecs_target__capacity_provider_strategy
    list;
  network_configuration :
    aws_cloudwatch_event_target__ecs_target__network_configuration
    list;
  ordered_placement_strategy :
    aws_cloudwatch_event_target__ecs_target__ordered_placement_strategy
    list;
  placement_constraint :
    aws_cloudwatch_event_target__ecs_target__placement_constraint
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__ecs_target *)

type aws_cloudwatch_event_target__http_target = {
  header_parameters : (string * string prop) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string prop list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string prop) list option;
      [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__http_target *)

type aws_cloudwatch_event_target__input_transformer = {
  input_paths : (string * string prop) list option; [@option]
      (** input_paths *)
  input_template : string prop;  (** input_template *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__input_transformer *)

type aws_cloudwatch_event_target__kinesis_target = {
  partition_key_path : string prop option; [@option]
      (** partition_key_path *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__kinesis_target *)

type aws_cloudwatch_event_target__redshift_target = {
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
(** aws_cloudwatch_event_target__redshift_target *)

type aws_cloudwatch_event_target__retry_policy = {
  maximum_event_age_in_seconds : float prop option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__retry_policy *)

type aws_cloudwatch_event_target__run_command_targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__run_command_targets *)

type aws_cloudwatch_event_target__sagemaker_pipeline_target__pipeline_parameter_list = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__sagemaker_pipeline_target__pipeline_parameter_list *)

type aws_cloudwatch_event_target__sagemaker_pipeline_target = {
  pipeline_parameter_list :
    aws_cloudwatch_event_target__sagemaker_pipeline_target__pipeline_parameter_list
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__sagemaker_pipeline_target *)

type aws_cloudwatch_event_target__sqs_target = {
  message_group_id : string prop option; [@option]
      (** message_group_id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target__sqs_target *)

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
  batch_target : aws_cloudwatch_event_target__batch_target list;
  dead_letter_config :
    aws_cloudwatch_event_target__dead_letter_config list;
  ecs_target : aws_cloudwatch_event_target__ecs_target list;
  http_target : aws_cloudwatch_event_target__http_target list;
  input_transformer :
    aws_cloudwatch_event_target__input_transformer list;
  kinesis_target : aws_cloudwatch_event_target__kinesis_target list;
  redshift_target :
    aws_cloudwatch_event_target__redshift_target list;
  retry_policy : aws_cloudwatch_event_target__retry_policy list;
  run_command_targets :
    aws_cloudwatch_event_target__run_command_targets list;
  sagemaker_pipeline_target :
    aws_cloudwatch_event_target__sagemaker_pipeline_target list;
  sqs_target : aws_cloudwatch_event_target__sqs_target list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_target *)

let aws_cloudwatch_event_target ?event_bus_name ?id ?input
    ?input_path ?role_arn ?target_id ~arn ~rule ~batch_target
    ~dead_letter_config ~ecs_target ~http_target ~input_transformer
    ~kinesis_target ~redshift_target ~retry_policy
    ~run_command_targets ~sagemaker_pipeline_target ~sqs_target
    __resource_id =
  let __resource_type = "aws_cloudwatch_event_target" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_target __resource);
  ()
