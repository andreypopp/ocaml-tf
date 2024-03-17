(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_budgets_budget__auto_adjust_data__historical_options
type aws_budgets_budget__auto_adjust_data
type aws_budgets_budget__cost_filter
type aws_budgets_budget__cost_types
type aws_budgets_budget__notification
type aws_budgets_budget__planned_limit
type aws_budgets_budget

val aws_budgets_budget :
  ?time_period_end:string ->
  budget_type:string ->
  time_unit:string ->
  auto_adjust_data:aws_budgets_budget__auto_adjust_data list ->
  cost_filter:aws_budgets_budget__cost_filter list ->
  cost_types:aws_budgets_budget__cost_types list ->
  notification:aws_budgets_budget__notification list ->
  planned_limit:aws_budgets_budget__planned_limit list ->
  string ->
  unit
