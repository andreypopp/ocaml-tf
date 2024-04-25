(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_adjust_data__historical_options

val auto_adjust_data__historical_options :
  budget_adjustment_period:float prop ->
  unit ->
  auto_adjust_data__historical_options

type auto_adjust_data

val auto_adjust_data :
  ?historical_options:auto_adjust_data__historical_options list ->
  auto_adjust_type:string prop ->
  unit ->
  auto_adjust_data

type cost_filter

val cost_filter :
  name:string prop -> values:string prop list -> unit -> cost_filter

type cost_types

val cost_types :
  ?include_credit:bool prop ->
  ?include_discount:bool prop ->
  ?include_other_subscription:bool prop ->
  ?include_recurring:bool prop ->
  ?include_refund:bool prop ->
  ?include_subscription:bool prop ->
  ?include_support:bool prop ->
  ?include_tax:bool prop ->
  ?include_upfront:bool prop ->
  ?use_amortized:bool prop ->
  ?use_blended:bool prop ->
  unit ->
  cost_types

type notification

val notification :
  ?subscriber_email_addresses:string prop list ->
  ?subscriber_sns_topic_arns:string prop list ->
  comparison_operator:string prop ->
  notification_type:string prop ->
  threshold:float prop ->
  threshold_type:string prop ->
  unit ->
  notification

type planned_limit

val planned_limit :
  amount:string prop ->
  start_time:string prop ->
  unit:string prop ->
  unit ->
  planned_limit

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
  ?auto_adjust_data:auto_adjust_data list ->
  ?cost_types:cost_types list ->
  budget_type:string prop ->
  time_unit:string prop ->
  cost_filter:cost_filter list ->
  notification:notification list ->
  planned_limit:planned_limit list ->
  unit ->
  aws_budgets_budget

val yojson_of_aws_budgets_budget : aws_budgets_budget -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  arn : string prop;
  budget_type : string prop;
  id : string prop;
  limit_amount : string prop;
  limit_unit : string prop;
  name : string prop;
  name_prefix : string prop;
  time_period_end : string prop;
  time_period_start : string prop;
  time_unit : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?limit_amount:string prop ->
  ?limit_unit:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?time_period_end:string prop ->
  ?time_period_start:string prop ->
  ?auto_adjust_data:auto_adjust_data list ->
  ?cost_types:cost_types list ->
  budget_type:string prop ->
  time_unit:string prop ->
  cost_filter:cost_filter list ->
  notification:notification list ->
  planned_limit:planned_limit list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?limit_amount:string prop ->
  ?limit_unit:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?time_period_end:string prop ->
  ?time_period_start:string prop ->
  ?auto_adjust_data:auto_adjust_data list ->
  ?cost_types:cost_types list ->
  budget_type:string prop ->
  time_unit:string prop ->
  cost_filter:cost_filter list ->
  notification:notification list ->
  planned_limit:planned_limit list ->
  string ->
  t Tf_core.resource
