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
  ?account_id:string prop ->
  ?id:string prop ->
  ?limit_amount:string prop ->
  ?limit_unit:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?time_period_end:string prop ->
  ?time_period_start:string prop ->
  budget_type:string prop ->
  time_unit:string prop ->
  auto_adjust_data:aws_budgets_budget__auto_adjust_data list ->
  cost_filter:aws_budgets_budget__cost_filter list ->
  cost_types:aws_budgets_budget__cost_types list ->
  notification:aws_budgets_budget__notification list ->
  planned_limit:aws_budgets_budget__planned_limit list ->
  string ->
  unit
