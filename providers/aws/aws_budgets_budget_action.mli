(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type action_threshold

val action_threshold :
  action_threshold_type:string prop ->
  action_threshold_value:float prop ->
  unit ->
  action_threshold

type definition__iam_action_definition

val definition__iam_action_definition :
  ?groups:string prop list ->
  ?roles:string prop list ->
  ?users:string prop list ->
  policy_arn:string prop ->
  unit ->
  definition__iam_action_definition

type definition__scp_action_definition

val definition__scp_action_definition :
  policy_id:string prop ->
  target_ids:string prop list ->
  unit ->
  definition__scp_action_definition

type definition__ssm_action_definition

val definition__ssm_action_definition :
  action_sub_type:string prop ->
  instance_ids:string prop list ->
  region:string prop ->
  unit ->
  definition__ssm_action_definition

type definition

val definition :
  iam_action_definition:definition__iam_action_definition list ->
  scp_action_definition:definition__scp_action_definition list ->
  ssm_action_definition:definition__ssm_action_definition list ->
  unit ->
  definition

type subscriber

val subscriber :
  address:string prop ->
  subscription_type:string prop ->
  unit ->
  subscriber

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_budgets_budget_action

val aws_budgets_budget_action :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action_type:string prop ->
  approval_model:string prop ->
  budget_name:string prop ->
  execution_role_arn:string prop ->
  notification_type:string prop ->
  action_threshold:action_threshold list ->
  definition:definition list ->
  subscriber:subscriber list ->
  unit ->
  aws_budgets_budget_action

val yojson_of_aws_budgets_budget_action :
  aws_budgets_budget_action -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  action_id : string prop;
  action_type : string prop;
  approval_model : string prop;
  arn : string prop;
  budget_name : string prop;
  execution_role_arn : string prop;
  id : string prop;
  notification_type : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action_type:string prop ->
  approval_model:string prop ->
  budget_name:string prop ->
  execution_role_arn:string prop ->
  notification_type:string prop ->
  action_threshold:action_threshold list ->
  definition:definition list ->
  subscriber:subscriber list ->
  string ->
  t
