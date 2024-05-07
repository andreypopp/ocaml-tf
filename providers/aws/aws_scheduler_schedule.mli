(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type flexible_time_window

val flexible_time_window :
  ?maximum_window_in_minutes:float prop ->
  mode:string prop ->
  unit ->
  flexible_time_window

type target__dead_letter_config

val target__dead_letter_config :
  arn:string prop -> unit -> target__dead_letter_config

type target__ecs_parameters__capacity_provider_strategy

val target__ecs_parameters__capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  target__ecs_parameters__capacity_provider_strategy

type target__ecs_parameters__network_configuration

val target__ecs_parameters__network_configuration :
  ?assign_public_ip:bool prop ->
  ?security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  target__ecs_parameters__network_configuration

type target__ecs_parameters__placement_constraints

val target__ecs_parameters__placement_constraints :
  ?expression:string prop ->
  type_:string prop ->
  unit ->
  target__ecs_parameters__placement_constraints

type target__ecs_parameters__placement_strategy

val target__ecs_parameters__placement_strategy :
  ?field:string prop ->
  type_:string prop ->
  unit ->
  target__ecs_parameters__placement_strategy

type target__ecs_parameters

val target__ecs_parameters :
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?reference_id:string prop ->
  ?tags:(string * string prop) list ->
  ?task_count:float prop ->
  ?network_configuration:
    target__ecs_parameters__network_configuration list ->
  task_definition_arn:string prop ->
  capacity_provider_strategy:
    target__ecs_parameters__capacity_provider_strategy list ->
  placement_constraints:
    target__ecs_parameters__placement_constraints list ->
  placement_strategy:target__ecs_parameters__placement_strategy list ->
  unit ->
  target__ecs_parameters

type target__eventbridge_parameters

val target__eventbridge_parameters :
  detail_type:string prop ->
  source:string prop ->
  unit ->
  target__eventbridge_parameters

type target__kinesis_parameters

val target__kinesis_parameters :
  partition_key:string prop -> unit -> target__kinesis_parameters

type target__retry_policy

val target__retry_policy :
  ?maximum_event_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  unit ->
  target__retry_policy

type target__sagemaker_pipeline_parameters__pipeline_parameter

val target__sagemaker_pipeline_parameters__pipeline_parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  target__sagemaker_pipeline_parameters__pipeline_parameter

type target__sagemaker_pipeline_parameters

val target__sagemaker_pipeline_parameters :
  pipeline_parameter:
    target__sagemaker_pipeline_parameters__pipeline_parameter list ->
  unit ->
  target__sagemaker_pipeline_parameters

type target__sqs_parameters

val target__sqs_parameters :
  ?message_group_id:string prop -> unit -> target__sqs_parameters

type target

val target :
  ?input:string prop ->
  ?dead_letter_config:target__dead_letter_config list ->
  ?ecs_parameters:target__ecs_parameters list ->
  ?eventbridge_parameters:target__eventbridge_parameters list ->
  ?kinesis_parameters:target__kinesis_parameters list ->
  ?retry_policy:target__retry_policy list ->
  ?sagemaker_pipeline_parameters:
    target__sagemaker_pipeline_parameters list ->
  ?sqs_parameters:target__sqs_parameters list ->
  arn:string prop ->
  role_arn:string prop ->
  unit ->
  target

type aws_scheduler_schedule

val aws_scheduler_schedule :
  ?description:string prop ->
  ?end_date:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?schedule_expression_timezone:string prop ->
  ?start_date:string prop ->
  ?state:string prop ->
  schedule_expression:string prop ->
  flexible_time_window:flexible_time_window list ->
  target:target list ->
  unit ->
  aws_scheduler_schedule

val yojson_of_aws_scheduler_schedule : aws_scheduler_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?end_date:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?schedule_expression_timezone:string prop ->
  ?start_date:string prop ->
  ?state:string prop ->
  schedule_expression:string prop ->
  flexible_time_window:flexible_time_window list ->
  target:target list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?end_date:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?schedule_expression_timezone:string prop ->
  ?start_date:string prop ->
  ?state:string prop ->
  schedule_expression:string prop ->
  flexible_time_window:flexible_time_window list ->
  target:target list ->
  string ->
  t Tf_core.resource
