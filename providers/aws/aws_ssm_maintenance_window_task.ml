(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** targets *)

type task_invocation_parameters__automation_parameters__parameter = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__automation_parameters__parameter *)

type task_invocation_parameters__automation_parameters = {
  document_version : string prop option; [@option]
      (** document_version *)
  parameter :
    task_invocation_parameters__automation_parameters__parameter list;
}
[@@deriving yojson_of]
(** task_invocation_parameters__automation_parameters *)

type task_invocation_parameters__lambda_parameters = {
  client_context : string prop option; [@option]
      (** client_context *)
  payload : string prop option; [@option]  (** payload *)
  qualifier : string prop option; [@option]  (** qualifier *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__lambda_parameters *)

type task_invocation_parameters__run_command_parameters__cloudwatch_config = {
  cloudwatch_log_group_name : string prop option; [@option]
      (** cloudwatch_log_group_name *)
  cloudwatch_output_enabled : bool prop option; [@option]
      (** cloudwatch_output_enabled *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__run_command_parameters__cloudwatch_config *)

type task_invocation_parameters__run_command_parameters__notification_config = {
  notification_arn : string prop option; [@option]
      (** notification_arn *)
  notification_events : string prop list option; [@option]
      (** notification_events *)
  notification_type : string prop option; [@option]
      (** notification_type *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__run_command_parameters__notification_config *)

type task_invocation_parameters__run_command_parameters__parameter = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__run_command_parameters__parameter *)

type task_invocation_parameters__run_command_parameters = {
  comment : string prop option; [@option]  (** comment *)
  document_hash : string prop option; [@option]  (** document_hash *)
  document_hash_type : string prop option; [@option]
      (** document_hash_type *)
  document_version : string prop option; [@option]
      (** document_version *)
  output_s3_bucket : string prop option; [@option]
      (** output_s3_bucket *)
  output_s3_key_prefix : string prop option; [@option]
      (** output_s3_key_prefix *)
  service_role_arn : string prop option; [@option]
      (** service_role_arn *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
  cloudwatch_config :
    task_invocation_parameters__run_command_parameters__cloudwatch_config
    list;
  notification_config :
    task_invocation_parameters__run_command_parameters__notification_config
    list;
  parameter :
    task_invocation_parameters__run_command_parameters__parameter
    list;
}
[@@deriving yojson_of]
(** task_invocation_parameters__run_command_parameters *)

type task_invocation_parameters__step_functions_parameters = {
  input : string prop option; [@option]  (** input *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** task_invocation_parameters__step_functions_parameters *)

type task_invocation_parameters = {
  automation_parameters :
    task_invocation_parameters__automation_parameters list;
  lambda_parameters :
    task_invocation_parameters__lambda_parameters list;
  run_command_parameters :
    task_invocation_parameters__run_command_parameters list;
  step_functions_parameters :
    task_invocation_parameters__step_functions_parameters list;
}
[@@deriving yojson_of]
(** task_invocation_parameters *)

type aws_ssm_maintenance_window_task = {
  cutoff_behavior : string prop option; [@option]
      (** cutoff_behavior *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  max_concurrency : string prop option; [@option]
      (** max_concurrency *)
  max_errors : string prop option; [@option]  (** max_errors *)
  name : string prop option; [@option]  (** name *)
  priority : float prop option; [@option]  (** priority *)
  service_role_arn : string prop option; [@option]
      (** service_role_arn *)
  task_arn : string prop;  (** task_arn *)
  task_type : string prop;  (** task_type *)
  window_id : string prop;  (** window_id *)
  targets : targets list;
  task_invocation_parameters : task_invocation_parameters list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_task *)

let targets ~key ~values () : targets = { key; values }

let task_invocation_parameters__automation_parameters__parameter
    ~name ~values () :
    task_invocation_parameters__automation_parameters__parameter =
  { name; values }

let task_invocation_parameters__automation_parameters
    ?document_version ~parameter () :
    task_invocation_parameters__automation_parameters =
  { document_version; parameter }

let task_invocation_parameters__lambda_parameters ?client_context
    ?payload ?qualifier () :
    task_invocation_parameters__lambda_parameters =
  { client_context; payload; qualifier }

let task_invocation_parameters__run_command_parameters__cloudwatch_config
    ?cloudwatch_log_group_name ?cloudwatch_output_enabled () :
    task_invocation_parameters__run_command_parameters__cloudwatch_config
    =
  { cloudwatch_log_group_name; cloudwatch_output_enabled }

let task_invocation_parameters__run_command_parameters__notification_config
    ?notification_arn ?notification_events ?notification_type () :
    task_invocation_parameters__run_command_parameters__notification_config
    =
  { notification_arn; notification_events; notification_type }

let task_invocation_parameters__run_command_parameters__parameter
    ~name ~values () :
    task_invocation_parameters__run_command_parameters__parameter =
  { name; values }

let task_invocation_parameters__run_command_parameters ?comment
    ?document_hash ?document_hash_type ?document_version
    ?output_s3_bucket ?output_s3_key_prefix ?service_role_arn
    ?timeout_seconds ~cloudwatch_config ~notification_config
    ~parameter () :
    task_invocation_parameters__run_command_parameters =
  {
    comment;
    document_hash;
    document_hash_type;
    document_version;
    output_s3_bucket;
    output_s3_key_prefix;
    service_role_arn;
    timeout_seconds;
    cloudwatch_config;
    notification_config;
    parameter;
  }

let task_invocation_parameters__step_functions_parameters ?input
    ?name () : task_invocation_parameters__step_functions_parameters
    =
  { input; name }

let task_invocation_parameters ~automation_parameters
    ~lambda_parameters ~run_command_parameters
    ~step_functions_parameters () : task_invocation_parameters =
  {
    automation_parameters;
    lambda_parameters;
    run_command_parameters;
    step_functions_parameters;
  }

let aws_ssm_maintenance_window_task ?cutoff_behavior ?description ?id
    ?max_concurrency ?max_errors ?name ?priority ?service_role_arn
    ~task_arn ~task_type ~window_id ~targets
    ~task_invocation_parameters () : aws_ssm_maintenance_window_task
    =
  {
    cutoff_behavior;
    description;
    id;
    max_concurrency;
    max_errors;
    name;
    priority;
    service_role_arn;
    task_arn;
    task_type;
    window_id;
    targets;
    task_invocation_parameters;
  }

type t = {
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

let register ?tf_module ?cutoff_behavior ?description ?id
    ?max_concurrency ?max_errors ?name ?priority ?service_role_arn
    ~task_arn ~task_type ~window_id ~targets
    ~task_invocation_parameters __resource_id =
  let __resource_type = "aws_ssm_maintenance_window_task" in
  let __resource =
    aws_ssm_maintenance_window_task ?cutoff_behavior ?description ?id
      ?max_concurrency ?max_errors ?name ?priority ?service_role_arn
      ~task_arn ~task_type ~window_id ~targets
      ~task_invocation_parameters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window_task __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cutoff_behavior =
         Prop.computed __resource_type __resource_id
           "cutoff_behavior";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       max_concurrency =
         Prop.computed __resource_type __resource_id
           "max_concurrency";
       max_errors =
         Prop.computed __resource_type __resource_id "max_errors";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       service_role_arn =
         Prop.computed __resource_type __resource_id
           "service_role_arn";
       task_arn =
         Prop.computed __resource_type __resource_id "task_arn";
       task_type =
         Prop.computed __resource_type __resource_id "task_type";
       window_id =
         Prop.computed __resource_type __resource_id "window_id";
       window_task_id =
         Prop.computed __resource_type __resource_id "window_task_id";
     }
      : t)
  in
  __resource_attributes
