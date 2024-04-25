(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type targets

val targets :
  key:string prop -> values:string prop list -> unit -> targets

type task_invocation_parameters__automation_parameters__parameter

val task_invocation_parameters__automation_parameters__parameter :
  name:string prop ->
  values:string prop list ->
  unit ->
  task_invocation_parameters__automation_parameters__parameter

type task_invocation_parameters__automation_parameters

val task_invocation_parameters__automation_parameters :
  ?document_version:string prop ->
  parameter:
    task_invocation_parameters__automation_parameters__parameter list ->
  unit ->
  task_invocation_parameters__automation_parameters

type task_invocation_parameters__lambda_parameters

val task_invocation_parameters__lambda_parameters :
  ?client_context:string prop ->
  ?payload:string prop ->
  ?qualifier:string prop ->
  unit ->
  task_invocation_parameters__lambda_parameters

type task_invocation_parameters__run_command_parameters__cloudwatch_config

val task_invocation_parameters__run_command_parameters__cloudwatch_config :
  ?cloudwatch_log_group_name:string prop ->
  ?cloudwatch_output_enabled:bool prop ->
  unit ->
  task_invocation_parameters__run_command_parameters__cloudwatch_config

type task_invocation_parameters__run_command_parameters__notification_config

val task_invocation_parameters__run_command_parameters__notification_config :
  ?notification_arn:string prop ->
  ?notification_events:string prop list ->
  ?notification_type:string prop ->
  unit ->
  task_invocation_parameters__run_command_parameters__notification_config

type task_invocation_parameters__run_command_parameters__parameter

val task_invocation_parameters__run_command_parameters__parameter :
  name:string prop ->
  values:string prop list ->
  unit ->
  task_invocation_parameters__run_command_parameters__parameter

type task_invocation_parameters__run_command_parameters

val task_invocation_parameters__run_command_parameters :
  ?comment:string prop ->
  ?document_hash:string prop ->
  ?document_hash_type:string prop ->
  ?document_version:string prop ->
  ?output_s3_bucket:string prop ->
  ?output_s3_key_prefix:string prop ->
  ?service_role_arn:string prop ->
  ?timeout_seconds:float prop ->
  ?cloudwatch_config:
    task_invocation_parameters__run_command_parameters__cloudwatch_config
    list ->
  ?notification_config:
    task_invocation_parameters__run_command_parameters__notification_config
    list ->
  parameter:
    task_invocation_parameters__run_command_parameters__parameter
    list ->
  unit ->
  task_invocation_parameters__run_command_parameters

type task_invocation_parameters__step_functions_parameters

val task_invocation_parameters__step_functions_parameters :
  ?input:string prop ->
  ?name:string prop ->
  unit ->
  task_invocation_parameters__step_functions_parameters

type task_invocation_parameters

val task_invocation_parameters :
  ?automation_parameters:
    task_invocation_parameters__automation_parameters list ->
  ?lambda_parameters:
    task_invocation_parameters__lambda_parameters list ->
  ?run_command_parameters:
    task_invocation_parameters__run_command_parameters list ->
  ?step_functions_parameters:
    task_invocation_parameters__step_functions_parameters list ->
  unit ->
  task_invocation_parameters

type aws_ssm_maintenance_window_task

val aws_ssm_maintenance_window_task :
  ?cutoff_behavior:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrency:string prop ->
  ?max_errors:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_role_arn:string prop ->
  ?targets:targets list ->
  ?task_invocation_parameters:task_invocation_parameters list ->
  task_arn:string prop ->
  task_type:string prop ->
  window_id:string prop ->
  unit ->
  aws_ssm_maintenance_window_task

val yojson_of_aws_ssm_maintenance_window_task :
  aws_ssm_maintenance_window_task -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?cutoff_behavior:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrency:string prop ->
  ?max_errors:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_role_arn:string prop ->
  ?targets:targets list ->
  ?task_invocation_parameters:task_invocation_parameters list ->
  task_arn:string prop ->
  task_type:string prop ->
  window_id:string prop ->
  string ->
  t

val make :
  ?cutoff_behavior:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrency:string prop ->
  ?max_errors:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_role_arn:string prop ->
  ?targets:targets list ->
  ?task_invocation_parameters:task_invocation_parameters list ->
  task_arn:string prop ->
  task_type:string prop ->
  window_id:string prop ->
  string ->
  t Tf_core.resource
