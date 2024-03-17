(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_budgets_budget_action__action_threshold
type aws_budgets_budget_action__definition__iam_action_definition
type aws_budgets_budget_action__definition__scp_action_definition
type aws_budgets_budget_action__definition__ssm_action_definition
type aws_budgets_budget_action__definition
type aws_budgets_budget_action__subscriber
type aws_budgets_budget_action__timeouts
type aws_budgets_budget_action

val aws_budgets_budget_action :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_budgets_budget_action__timeouts ->
  action_type:string prop ->
  approval_model:string prop ->
  budget_name:string prop ->
  execution_role_arn:string prop ->
  notification_type:string prop ->
  action_threshold:aws_budgets_budget_action__action_threshold list ->
  definition:aws_budgets_budget_action__definition list ->
  subscriber:aws_budgets_budget_action__subscriber list ->
  string ->
  unit
