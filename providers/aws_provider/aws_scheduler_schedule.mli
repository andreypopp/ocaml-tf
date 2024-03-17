(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_scheduler_schedule__flexible_time_window
type aws_scheduler_schedule__target__dead_letter_config

type aws_scheduler_schedule__target__ecs_parameters__capacity_provider_strategy

type aws_scheduler_schedule__target__ecs_parameters__network_configuration

type aws_scheduler_schedule__target__ecs_parameters__placement_constraints

type aws_scheduler_schedule__target__ecs_parameters__placement_strategy

type aws_scheduler_schedule__target__ecs_parameters
type aws_scheduler_schedule__target__eventbridge_parameters
type aws_scheduler_schedule__target__kinesis_parameters
type aws_scheduler_schedule__target__retry_policy

type aws_scheduler_schedule__target__sagemaker_pipeline_parameters__pipeline_parameter

type aws_scheduler_schedule__target__sagemaker_pipeline_parameters
type aws_scheduler_schedule__target__sqs_parameters
type aws_scheduler_schedule__target
type aws_scheduler_schedule

val aws_scheduler_schedule :
  ?description:string ->
  ?end_date:string ->
  ?group_name:string ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?schedule_expression_timezone:string ->
  ?start_date:string ->
  ?state:string ->
  schedule_expression:string ->
  flexible_time_window:
    aws_scheduler_schedule__flexible_time_window list ->
  target:aws_scheduler_schedule__target list ->
  string ->
  unit
