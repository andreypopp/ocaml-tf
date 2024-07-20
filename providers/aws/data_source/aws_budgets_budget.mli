(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_adjust_data__historical_options = {
  budget_adjustment_period : float prop;
      (** budget_adjustment_period *)
  lookback_available_periods : float prop;
      (** lookback_available_periods *)
}

type auto_adjust_data = {
  auto_adjust_type : string prop;  (** auto_adjust_type *)
  historical_options : auto_adjust_data__historical_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** historical_options *)
  last_auto_adjust_time : string prop;  (** last_auto_adjust_time *)
}

type budget_limit = {
  amount : string prop;  (** amount *)
  unit : string prop;  (** unit *)
}

type calculated_spend__actual_spend = {
  amount : string prop;  (** amount *)
  unit : string prop;  (** unit *)
}

type calculated_spend = {
  actual_spend : calculated_spend__actual_spend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** actual_spend *)
}

type cost_filter = {
  name : string prop;  (** name *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type cost_types = {
  include_credit : bool prop;  (** include_credit *)
  include_discount : bool prop;  (** include_discount *)
  include_other_subscription : bool prop;
      (** include_other_subscription *)
  include_recurring : bool prop;  (** include_recurring *)
  include_refund : bool prop;  (** include_refund *)
  include_subscription : bool prop;  (** include_subscription *)
  include_support : bool prop;  (** include_support *)
  include_tax : bool prop;  (** include_tax *)
  include_upfront : bool prop;  (** include_upfront *)
  use_amortized : bool prop;  (** use_amortized *)
  use_blended : bool prop;  (** use_blended *)
}

type notification = {
  comparison_operator : string prop;  (** comparison_operator *)
  notification_type : string prop;  (** notification_type *)
  subscriber_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subscriber_email_addresses *)
  subscriber_sns_topic_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subscriber_sns_topic_arns *)
  threshold : float prop;  (** threshold *)
  threshold_type : string prop;  (** threshold_type *)
}

type planned_limit = {
  amount : string prop;  (** amount *)
  start_time : string prop;  (** start_time *)
  unit : string prop;  (** unit *)
}

type aws_budgets_budget

val aws_budgets_budget :
  ?account_id:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_budgets_budget

val yojson_of_aws_budgets_budget : aws_budgets_budget -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  arn : string prop;
  auto_adjust_data : auto_adjust_data list prop;
  budget_exceeded : bool prop;
  budget_limit : budget_limit list prop;
  budget_type : string prop;
  calculated_spend : calculated_spend list prop;
  cost_filter : cost_filter list prop;
  cost_types : cost_types list prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  notification : notification list prop;
  planned_limit : planned_limit list prop;
  tags : (string * string) list prop;
  time_period_end : string prop;
  time_period_start : string prop;
  time_unit : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
