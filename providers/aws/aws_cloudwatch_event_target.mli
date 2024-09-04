(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type batch_target

val batch_target :
  ?array_size:float prop ->
  ?job_attempts:float prop ->
  job_definition:string prop ->
  job_name:string prop ->
  unit ->
  batch_target

type dead_letter_config

val dead_letter_config :
  ?arn:string prop -> unit -> dead_letter_config

type ecs_target__capacity_provider_strategy

val ecs_target__capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  ecs_target__capacity_provider_strategy

type ecs_target__network_configuration

val ecs_target__network_configuration :
  ?assign_public_ip:bool prop ->
  ?security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  ecs_target__network_configuration

type ecs_target__ordered_placement_strategy

val ecs_target__ordered_placement_strategy :
  ?field:string prop ->
  type_:string prop ->
  unit ->
  ecs_target__ordered_placement_strategy

type ecs_target__placement_constraint

val ecs_target__placement_constraint :
  ?expression:string prop ->
  type_:string prop ->
  unit ->
  ecs_target__placement_constraint

type ecs_target

val ecs_target :
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?task_count:float prop ->
  ?network_configuration:ecs_target__network_configuration list ->
  ?ordered_placement_strategy:
    ecs_target__ordered_placement_strategy list ->
  task_definition_arn:string prop ->
  capacity_provider_strategy:
    ecs_target__capacity_provider_strategy list ->
  placement_constraint:ecs_target__placement_constraint list ->
  unit ->
  ecs_target

type http_target

val http_target :
  ?header_parameters:string prop Tf_core.assoc ->
  ?path_parameter_values:string prop list ->
  ?query_string_parameters:string prop Tf_core.assoc ->
  unit ->
  http_target

type input_transformer

val input_transformer :
  ?input_paths:string prop Tf_core.assoc ->
  input_template:string prop ->
  unit ->
  input_transformer

type kinesis_target

val kinesis_target :
  ?partition_key_path:string prop -> unit -> kinesis_target

type redshift_target

val redshift_target :
  ?db_user:string prop ->
  ?secrets_manager_arn:string prop ->
  ?sql:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  database:string prop ->
  unit ->
  redshift_target

type retry_policy

val retry_policy :
  ?maximum_event_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  unit ->
  retry_policy

type run_command_targets

val run_command_targets :
  key:string prop ->
  values:string prop list ->
  unit ->
  run_command_targets

type sagemaker_pipeline_target__pipeline_parameter_list

val sagemaker_pipeline_target__pipeline_parameter_list :
  name:string prop ->
  value:string prop ->
  unit ->
  sagemaker_pipeline_target__pipeline_parameter_list

type sagemaker_pipeline_target

val sagemaker_pipeline_target :
  pipeline_parameter_list:
    sagemaker_pipeline_target__pipeline_parameter_list list ->
  unit ->
  sagemaker_pipeline_target

type sqs_target

val sqs_target : ?message_group_id:string prop -> unit -> sqs_target

type aws_cloudwatch_event_target

val aws_cloudwatch_event_target :
  ?event_bus_name:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?input_path:string prop ->
  ?role_arn:string prop ->
  ?target_id:string prop ->
  ?batch_target:batch_target list ->
  ?dead_letter_config:dead_letter_config list ->
  ?ecs_target:ecs_target list ->
  ?http_target:http_target list ->
  ?input_transformer:input_transformer list ->
  ?kinesis_target:kinesis_target list ->
  ?redshift_target:redshift_target list ->
  ?retry_policy:retry_policy list ->
  ?run_command_targets:run_command_targets list ->
  ?sagemaker_pipeline_target:sagemaker_pipeline_target list ->
  ?sqs_target:sqs_target list ->
  arn:string prop ->
  rule:string prop ->
  unit ->
  aws_cloudwatch_event_target

val yojson_of_aws_cloudwatch_event_target :
  aws_cloudwatch_event_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  event_bus_name : string prop;
  force_destroy : bool prop;
  id : string prop;
  input : string prop;
  input_path : string prop;
  role_arn : string prop;
  rule : string prop;
  target_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?event_bus_name:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?input_path:string prop ->
  ?role_arn:string prop ->
  ?target_id:string prop ->
  ?batch_target:batch_target list ->
  ?dead_letter_config:dead_letter_config list ->
  ?ecs_target:ecs_target list ->
  ?http_target:http_target list ->
  ?input_transformer:input_transformer list ->
  ?kinesis_target:kinesis_target list ->
  ?redshift_target:redshift_target list ->
  ?retry_policy:retry_policy list ->
  ?run_command_targets:run_command_targets list ->
  ?sagemaker_pipeline_target:sagemaker_pipeline_target list ->
  ?sqs_target:sqs_target list ->
  arn:string prop ->
  rule:string prop ->
  string ->
  t

val make :
  ?event_bus_name:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?input:string prop ->
  ?input_path:string prop ->
  ?role_arn:string prop ->
  ?target_id:string prop ->
  ?batch_target:batch_target list ->
  ?dead_letter_config:dead_letter_config list ->
  ?ecs_target:ecs_target list ->
  ?http_target:http_target list ->
  ?input_transformer:input_transformer list ->
  ?kinesis_target:kinesis_target list ->
  ?redshift_target:redshift_target list ->
  ?retry_policy:retry_policy list ->
  ?run_command_targets:run_command_targets list ->
  ?sagemaker_pipeline_target:sagemaker_pipeline_target list ->
  ?sqs_target:sqs_target list ->
  arn:string prop ->
  rule:string prop ->
  string ->
  t Tf_core.resource
