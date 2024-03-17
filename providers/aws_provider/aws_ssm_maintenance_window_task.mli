(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_maintenance_window_task__targets

type aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters__parameter

type aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters

type aws_ssm_maintenance_window_task__task_invocation_parameters__lambda_parameters

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__cloudwatch_config

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__notification_config

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__parameter

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters

type aws_ssm_maintenance_window_task__task_invocation_parameters__step_functions_parameters

type aws_ssm_maintenance_window_task__task_invocation_parameters
type aws_ssm_maintenance_window_task

val aws_ssm_maintenance_window_task :
  ?cutoff_behavior:string ->
  ?description:string ->
  ?id:string ->
  ?max_concurrency:string ->
  ?max_errors:string ->
  ?name:string ->
  ?priority:float ->
  ?service_role_arn:string ->
  task_arn:string ->
  task_type:string ->
  window_id:string ->
  targets:aws_ssm_maintenance_window_task__targets list ->
  task_invocation_parameters:
    aws_ssm_maintenance_window_task__task_invocation_parameters list ->
  string ->
  unit
