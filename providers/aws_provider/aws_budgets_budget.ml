(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_budgets_budget__auto_adjust_data__historical_options = {
  budget_adjustment_period : float;  (** budget_adjustment_period *)
  lookback_available_periods : float;
      (** lookback_available_periods *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__auto_adjust_data__historical_options *)

type aws_budgets_budget__auto_adjust_data = {
  auto_adjust_type : string;  (** auto_adjust_type *)
  last_auto_adjust_time : string;  (** last_auto_adjust_time *)
  historical_options :
    aws_budgets_budget__auto_adjust_data__historical_options list;
}
[@@deriving yojson_of]
(** aws_budgets_budget__auto_adjust_data *)

type aws_budgets_budget__cost_filter = {
  name : string;  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__cost_filter *)

type aws_budgets_budget__cost_types = {
  include_credit : bool option; [@option]  (** include_credit *)
  include_discount : bool option; [@option]  (** include_discount *)
  include_other_subscription : bool option; [@option]
      (** include_other_subscription *)
  include_recurring : bool option; [@option]
      (** include_recurring *)
  include_refund : bool option; [@option]  (** include_refund *)
  include_subscription : bool option; [@option]
      (** include_subscription *)
  include_support : bool option; [@option]  (** include_support *)
  include_tax : bool option; [@option]  (** include_tax *)
  include_upfront : bool option; [@option]  (** include_upfront *)
  use_amortized : bool option; [@option]  (** use_amortized *)
  use_blended : bool option; [@option]  (** use_blended *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__cost_types *)

type aws_budgets_budget__notification = {
  comparison_operator : string;  (** comparison_operator *)
  notification_type : string;  (** notification_type *)
  subscriber_email_addresses : string list option; [@option]
      (** subscriber_email_addresses *)
  subscriber_sns_topic_arns : string list option; [@option]
      (** subscriber_sns_topic_arns *)
  threshold : float;  (** threshold *)
  threshold_type : string;  (** threshold_type *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__notification *)

type aws_budgets_budget__planned_limit = {
  amount : string;  (** amount *)
  start_time : string;  (** start_time *)
  unit : string;  (** unit *)
}
[@@deriving yojson_of]
(** aws_budgets_budget__planned_limit *)

type aws_budgets_budget = {
  budget_type : string;  (** budget_type *)
  time_period_end : string option; [@option]  (** time_period_end *)
  time_unit : string;  (** time_unit *)
  auto_adjust_data : aws_budgets_budget__auto_adjust_data list;
  cost_filter : aws_budgets_budget__cost_filter list;
  cost_types : aws_budgets_budget__cost_types list;
  notification : aws_budgets_budget__notification list;
  planned_limit : aws_budgets_budget__planned_limit list;
}
[@@deriving yojson_of]
(** aws_budgets_budget *)

let aws_budgets_budget ?time_period_end ~budget_type ~time_unit
    ~auto_adjust_data ~cost_filter ~cost_types ~notification
    ~planned_limit __resource_id =
  let __resource_type = "aws_budgets_budget" in
  let __resource =
    {
      budget_type;
      time_period_end;
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
