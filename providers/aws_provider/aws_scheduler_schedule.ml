(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_scheduler_schedule__flexible_time_window = {
  maximum_window_in_minutes : float option; [@option]
      (** maximum_window_in_minutes *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__flexible_time_window *)

type aws_scheduler_schedule__target__dead_letter_config = {
  arn : string;  (** arn *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__dead_letter_config *)

type aws_scheduler_schedule__target__ecs_parameters__capacity_provider_strategy = {
  base : float option; [@option]  (** base *)
  capacity_provider : string;  (** capacity_provider *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__ecs_parameters__capacity_provider_strategy *)

type aws_scheduler_schedule__target__ecs_parameters__network_configuration = {
  assign_public_ip : bool option; [@option]  (** assign_public_ip *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__ecs_parameters__network_configuration *)

type aws_scheduler_schedule__target__ecs_parameters__placement_constraints = {
  expression : string option; [@option]  (** expression *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__ecs_parameters__placement_constraints *)

type aws_scheduler_schedule__target__ecs_parameters__placement_strategy = {
  field : string option; [@option]  (** field *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__ecs_parameters__placement_strategy *)

type aws_scheduler_schedule__target__ecs_parameters = {
  enable_ecs_managed_tags : bool option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool option; [@option]
      (** enable_execute_command *)
  group : string option; [@option]  (** group *)
  launch_type : string option; [@option]  (** launch_type *)
  platform_version : string option; [@option]
      (** platform_version *)
  propagate_tags : string option; [@option]  (** propagate_tags *)
  reference_id : string option; [@option]  (** reference_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  task_count : float option; [@option]  (** task_count *)
  task_definition_arn : string;  (** task_definition_arn *)
  capacity_provider_strategy :
    aws_scheduler_schedule__target__ecs_parameters__capacity_provider_strategy
    list;
  network_configuration :
    aws_scheduler_schedule__target__ecs_parameters__network_configuration
    list;
  placement_constraints :
    aws_scheduler_schedule__target__ecs_parameters__placement_constraints
    list;
  placement_strategy :
    aws_scheduler_schedule__target__ecs_parameters__placement_strategy
    list;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__ecs_parameters *)

type aws_scheduler_schedule__target__eventbridge_parameters = {
  detail_type : string;  (** detail_type *)
  source : string;  (** source *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__eventbridge_parameters *)

type aws_scheduler_schedule__target__kinesis_parameters = {
  partition_key : string;  (** partition_key *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__kinesis_parameters *)

type aws_scheduler_schedule__target__retry_policy = {
  maximum_event_age_in_seconds : float option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float option; [@option]
      (** maximum_retry_attempts *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__retry_policy *)

type aws_scheduler_schedule__target__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__sagemaker_pipeline_parameters__pipeline_parameter *)

type aws_scheduler_schedule__target__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    aws_scheduler_schedule__target__sagemaker_pipeline_parameters__pipeline_parameter
    list;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__sagemaker_pipeline_parameters *)

type aws_scheduler_schedule__target__sqs_parameters = {
  message_group_id : string option; [@option]  (** message_group_id *)
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target__sqs_parameters *)

type aws_scheduler_schedule__target = {
  arn : string;  (** arn *)
  input : string option; [@option]  (** input *)
  role_arn : string;  (** role_arn *)
  dead_letter_config :
    aws_scheduler_schedule__target__dead_letter_config list;
  ecs_parameters :
    aws_scheduler_schedule__target__ecs_parameters list;
  eventbridge_parameters :
    aws_scheduler_schedule__target__eventbridge_parameters list;
  kinesis_parameters :
    aws_scheduler_schedule__target__kinesis_parameters list;
  retry_policy : aws_scheduler_schedule__target__retry_policy list;
  sagemaker_pipeline_parameters :
    aws_scheduler_schedule__target__sagemaker_pipeline_parameters
    list;
  sqs_parameters :
    aws_scheduler_schedule__target__sqs_parameters list;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule__target *)

type aws_scheduler_schedule = {
  description : string option; [@option]  (** description *)
  end_date : string option; [@option]  (** end_date *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  schedule_expression : string;  (** schedule_expression *)
  schedule_expression_timezone : string option; [@option]
      (** schedule_expression_timezone *)
  start_date : string option; [@option]  (** start_date *)
  state : string option; [@option]  (** state *)
  flexible_time_window :
    aws_scheduler_schedule__flexible_time_window list;
  target : aws_scheduler_schedule__target list;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule *)

let aws_scheduler_schedule ?description ?end_date ?kms_key_arn
    ?schedule_expression_timezone ?start_date ?state
    ~schedule_expression ~flexible_time_window ~target __resource_id
    =
  let __resource_type = "aws_scheduler_schedule" in
  let __resource =
    {
      description;
      end_date;
      kms_key_arn;
      schedule_expression;
      schedule_expression_timezone;
      start_date;
      state;
      flexible_time_window;
      target;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_scheduler_schedule __resource);
  ()
