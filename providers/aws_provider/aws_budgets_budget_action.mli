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
  ?timeouts:aws_budgets_budget_action__timeouts ->
  action_type:string ->
  approval_model:string ->
  budget_name:string ->
  execution_role_arn:string ->
  notification_type:string ->
  action_threshold:aws_budgets_budget_action__action_threshold list ->
  definition:aws_budgets_budget_action__definition list ->
  subscriber:aws_budgets_budget_action__subscriber list ->
  string ->
  unit
