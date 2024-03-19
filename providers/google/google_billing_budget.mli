(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type all_updates_rule

val all_updates_rule :
  ?disable_default_iam_recipients:bool prop ->
  ?monitoring_notification_channels:string prop list ->
  ?pubsub_topic:string prop ->
  ?schema_version:string prop ->
  unit ->
  all_updates_rule

type amount__specified_amount

val amount__specified_amount :
  ?currency_code:string prop ->
  ?nanos:float prop ->
  ?units:string prop ->
  unit ->
  amount__specified_amount

type amount

val amount :
  ?last_period_amount:bool prop ->
  specified_amount:amount__specified_amount list ->
  unit ->
  amount

type budget_filter__custom_period__end_date

val budget_filter__custom_period__end_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  budget_filter__custom_period__end_date

type budget_filter__custom_period__start_date

val budget_filter__custom_period__start_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  budget_filter__custom_period__start_date

type budget_filter__custom_period

val budget_filter__custom_period :
  end_date:budget_filter__custom_period__end_date list ->
  start_date:budget_filter__custom_period__start_date list ->
  unit ->
  budget_filter__custom_period

type budget_filter

val budget_filter :
  ?calendar_period:string prop ->
  ?credit_types:string prop list ->
  ?credit_types_treatment:string prop ->
  ?labels:(string * string prop) list ->
  ?projects:string prop list ->
  ?resource_ancestors:string prop list ->
  ?services:string prop list ->
  ?subaccounts:string prop list ->
  custom_period:budget_filter__custom_period list ->
  unit ->
  budget_filter

type threshold_rules

val threshold_rules :
  ?spend_basis:string prop ->
  threshold_percent:float prop ->
  unit ->
  threshold_rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_billing_budget

val google_billing_budget :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  billing_account:string prop ->
  all_updates_rule:all_updates_rule list ->
  amount:amount list ->
  budget_filter:budget_filter list ->
  threshold_rules:threshold_rules list ->
  unit ->
  google_billing_budget

val yojson_of_google_billing_budget : google_billing_budget -> json

(** RESOURCE REGISTRATION *)

type t = private {
  billing_account : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  billing_account:string prop ->
  all_updates_rule:all_updates_rule list ->
  amount:amount list ->
  budget_filter:budget_filter list ->
  threshold_rules:threshold_rules list ->
  string ->
  t
