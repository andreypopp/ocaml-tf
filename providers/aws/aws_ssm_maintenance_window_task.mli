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

type t = private {
  arn : string prop;
  cutoff_behavior : string prop;
  description : string prop;
  id : string prop;
  max_concurrency : string prop;
  max_errors : string prop;
  name : string prop;
  priority : float prop;
  service_role_arn : string prop;
  task_arn : string prop;
  task_type : string prop;
  window_id : string prop;
  window_task_id : string prop;
}

val aws_ssm_maintenance_window_task :
  ?cutoff_behavior:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrency:string prop ->
  ?max_errors:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_role_arn:string prop ->
  task_arn:string prop ->
  task_type:string prop ->
  window_id:string prop ->
  targets:aws_ssm_maintenance_window_task__targets list ->
  task_invocation_parameters:
    aws_ssm_maintenance_window_task__task_invocation_parameters list ->
  string ->
  t
