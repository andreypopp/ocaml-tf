(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssm_maintenance_window_task__targets = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__targets *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters__parameter = {
  name : string;  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters__parameter *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters = {
  document_version : string option; [@option]
      (** document_version *)
  parameter :
    aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters__parameter
    list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__lambda_parameters = {
  client_context : string option; [@option]  (** client_context *)
  payload : string option; [@option]  (** payload *)
  qualifier : string option; [@option]  (** qualifier *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__lambda_parameters *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__cloudwatch_config = {
  cloudwatch_log_group_name : string option; [@option]
      (** cloudwatch_log_group_name *)
  cloudwatch_output_enabled : bool option; [@option]
      (** cloudwatch_output_enabled *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__cloudwatch_config *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__notification_config = {
  notification_arn : string option; [@option]
      (** notification_arn *)
  notification_events : string list option; [@option]
      (** notification_events *)
  notification_type : string option; [@option]
      (** notification_type *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__notification_config *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__parameter = {
  name : string;  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__parameter *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters = {
  comment : string option; [@option]  (** comment *)
  document_hash : string option; [@option]  (** document_hash *)
  document_hash_type : string option; [@option]
      (** document_hash_type *)
  document_version : string option; [@option]
      (** document_version *)
  output_s3_bucket : string option; [@option]
      (** output_s3_bucket *)
  output_s3_key_prefix : string option; [@option]
      (** output_s3_key_prefix *)
  service_role_arn : string option; [@option]
      (** service_role_arn *)
  timeout_seconds : float option; [@option]  (** timeout_seconds *)
  cloudwatch_config :
    aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__cloudwatch_config
    list;
  notification_config :
    aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__notification_config
    list;
  parameter :
    aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters__parameter
    list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters *)

type aws_ssm_maintenance_window_task__task_invocation_parameters__step_functions_parameters = {
  input : string option; [@option]  (** input *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters__step_functions_parameters *)

type aws_ssm_maintenance_window_task__task_invocation_parameters = {
  automation_parameters :
    aws_ssm_maintenance_window_task__task_invocation_parameters__automation_parameters
    list;
  lambda_parameters :
    aws_ssm_maintenance_window_task__task_invocation_parameters__lambda_parameters
    list;
  run_command_parameters :
    aws_ssm_maintenance_window_task__task_invocation_parameters__run_command_parameters
    list;
  step_functions_parameters :
    aws_ssm_maintenance_window_task__task_invocation_parameters__step_functions_parameters
    list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task__task_invocation_parameters *)

type aws_ssm_maintenance_window_task = {
  cutoff_behavior : string option; [@option]  (** cutoff_behavior *)
  description : string option; [@option]  (** description *)
  name : string option; [@option]  (** name *)
  priority : float option; [@option]  (** priority *)
  task_arn : string;  (** task_arn *)
  task_type : string;  (** task_type *)
  window_id : string;  (** window_id *)
  targets : aws_ssm_maintenance_window_task__targets list;
  task_invocation_parameters :
    aws_ssm_maintenance_window_task__task_invocation_parameters list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task *)

let aws_ssm_maintenance_window_task ?cutoff_behavior ?description
    ?name ?priority ~task_arn ~task_type ~window_id ~targets
    ~task_invocation_parameters __resource_id =
  let __resource_type = "aws_ssm_maintenance_window_task" in
  let __resource =
    {
      cutoff_behavior;
      description;
      name;
      priority;
      task_arn;
      task_type;
      window_id;
      targets;
      task_invocation_parameters;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window_task __resource);
  ()
