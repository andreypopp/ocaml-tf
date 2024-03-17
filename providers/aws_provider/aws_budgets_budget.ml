(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_budgets_budget__auto_adjust_data__historical_options = {
  budget_adjustment_period : float prop;
      (** budget_adjustment_period *)
  lookback_available_periods : float prop;
      (** lookback_available_periods *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__auto_adjust_data__historical_options *)

type aws_budgets_budget__auto_adjust_data = {
  auto_adjust_type : string prop;  (** auto_adjust_type *)
  last_auto_adjust_time : string prop;  (** last_auto_adjust_time *)
  historical_options :
    aws_budgets_budget__auto_adjust_data__historical_options list;
}
[@@deriving yojson_of]
(** aws_budgets_budget__auto_adjust_data *)

type aws_budgets_budget__cost_filter = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__cost_filter *)

type aws_budgets_budget__cost_types = {
  include_credit : bool prop option; [@option]  (** include_credit *)
  include_discount : bool prop option; [@option]
      (** include_discount *)
  include_other_subscription : bool prop option; [@option]
      (** include_other_subscription *)
  include_recurring : bool prop option; [@option]
      (** include_recurring *)
  include_refund : bool prop option; [@option]  (** include_refund *)
  include_subscription : bool prop option; [@option]
      (** include_subscription *)
  include_support : bool prop option; [@option]
      (** include_support *)
  include_tax : bool prop option; [@option]  (** include_tax *)
  include_upfront : bool prop option; [@option]
      (** include_upfront *)
  use_amortized : bool prop option; [@option]  (** use_amortized *)
  use_blended : bool prop option; [@option]  (** use_blended *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__cost_types *)

type aws_budgets_budget__notification = {
  comparison_operator : string prop;  (** comparison_operator *)
  notification_type : string prop;  (** notification_type *)
  subscriber_email_addresses : string prop list option; [@option]
      (** subscriber_email_addresses *)
  subscriber_sns_topic_arns : string prop list option; [@option]
      (** subscriber_sns_topic_arns *)
  threshold : float prop;  (** threshold *)
  threshold_type : string prop;  (** threshold_type *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__notification *)

type aws_budgets_budget__planned_limit = {
  amount : string prop;  (** amount *)
  start_time : string prop;  (** start_time *)
  unit : string prop;  (** unit *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__planned_limit *)

type aws_budgets_budget = {
  account_id : string prop option; [@option]  (** account_id *)
  budget_type : string prop;  (** budget_type *)
  id : string prop option; [@option]  (** id *)
  limit_amount : string prop option; [@option]  (** limit_amount *)
  limit_unit : string prop option; [@option]  (** limit_unit *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  time_period_end : string prop option; [@option]
      (** time_period_end *)
  time_period_start : string prop option; [@option]
      (** time_period_start *)
  time_unit : string prop;  (** time_unit *)
  auto_adjust_data : aws_budgets_budget__auto_adjust_data list;
  cost_filter : aws_budgets_budget__cost_filter list;
  cost_types : aws_budgets_budget__cost_types list;
  notification : aws_budgets_budget__notification list;
  planned_limit : aws_budgets_budget__planned_limit list;
}
[@@deriving yojson_of]
(** aws_budgets_budget *)

let aws_budgets_budget ?account_id ?id ?limit_amount ?limit_unit
    ?name ?name_prefix ?time_period_end ?time_period_start
    ~budget_type ~time_unit ~auto_adjust_data ~cost_filter
    ~cost_types ~notification ~planned_limit __resource_id =
  let __resource_type = "aws_budgets_budget" in
  let __resource =
    {
      account_id;
      budget_type;
      id;
      limit_amount;
      limit_unit;
      name;
      name_prefix;
      time_period_end;
      time_period_start;
      time_unit;
      auto_adjust_data;
      cost_filter;
      cost_types;
      notification;
      planned_limit;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_budgets_budget __resource);
  ()
