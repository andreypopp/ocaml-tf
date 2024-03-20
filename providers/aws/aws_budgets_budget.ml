(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_adjust_data__historical_options = {
  budget_adjustment_period : float prop;
      (** budget_adjustment_period *)
}
[@@deriving yojson_of]
(** auto_adjust_data__historical_options *)

type auto_adjust_data = {
  auto_adjust_type : string prop;  (** auto_adjust_type *)
  historical_options : auto_adjust_data__historical_options list;
}
[@@deriving yojson_of]
(** auto_adjust_data *)

type cost_filter = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** cost_filter *)

type cost_types = {
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
(** cost_types *)

type notification = {
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
(** notification *)

type planned_limit = {
  amount : string prop;  (** amount *)
  start_time : string prop;  (** start_time *)
  unit : string prop;  (** unit *)
}
[@@deriving yojson_of]
(** planned_limit *)

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
  auto_adjust_data : auto_adjust_data list;
  cost_filter : cost_filter list;
  cost_types : cost_types list;
  notification : notification list;
  planned_limit : planned_limit list;
}
[@@deriving yojson_of]
(** aws_budgets_budget *)

let auto_adjust_data__historical_options ~budget_adjustment_period ()
    : auto_adjust_data__historical_options =
  { budget_adjustment_period }

let auto_adjust_data ~auto_adjust_type ~historical_options () :
    auto_adjust_data =
  { auto_adjust_type; historical_options }

let cost_filter ~name ~values () : cost_filter = { name; values }

let cost_types ?include_credit ?include_discount
    ?include_other_subscription ?include_recurring ?include_refund
    ?include_subscription ?include_support ?include_tax
    ?include_upfront ?use_amortized ?use_blended () : cost_types =
  {
    include_credit;
    include_discount;
    include_other_subscription;
    include_recurring;
    include_refund;
    include_subscription;
    include_support;
    include_tax;
    include_upfront;
    use_amortized;
    use_blended;
  }

let notification ?subscriber_email_addresses
    ?subscriber_sns_topic_arns ~comparison_operator
    ~notification_type ~threshold ~threshold_type () : notification =
  {
    comparison_operator;
    notification_type;
    subscriber_email_addresses;
    subscriber_sns_topic_arns;
    threshold;
    threshold_type;
  }

let planned_limit ~amount ~start_time ~unit () : planned_limit =
  { amount; start_time; unit }

let aws_budgets_budget ?account_id ?id ?limit_amount ?limit_unit
    ?name ?name_prefix ?time_period_end ?time_period_start
    ~budget_type ~time_unit ~auto_adjust_data ~cost_filter
    ~cost_types ~notification ~planned_limit () : aws_budgets_budget
    =
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

type t = {
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

let make ?account_id ?id ?limit_amount ?limit_unit ?name ?name_prefix
    ?time_period_end ?time_period_start ~budget_type ~time_unit
    ~auto_adjust_data ~cost_filter ~cost_types ~notification
    ~planned_limit __id =
  let __type = "aws_budgets_budget" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       budget_type = Prop.computed __type __id "budget_type";
       id = Prop.computed __type __id "id";
       limit_amount = Prop.computed __type __id "limit_amount";
       limit_unit = Prop.computed __type __id "limit_unit";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       time_period_end = Prop.computed __type __id "time_period_end";
       time_period_start =
         Prop.computed __type __id "time_period_start";
       time_unit = Prop.computed __type __id "time_unit";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_budgets_budget
        (aws_budgets_budget ?account_id ?id ?limit_amount ?limit_unit
           ?name ?name_prefix ?time_period_end ?time_period_start
           ~budget_type ~time_unit ~auto_adjust_data ~cost_filter
           ~cost_types ~notification ~planned_limit ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?limit_amount ?limit_unit
    ?name ?name_prefix ?time_period_end ?time_period_start
    ~budget_type ~time_unit ~auto_adjust_data ~cost_filter
    ~cost_types ~notification ~planned_limit __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?limit_amount ?limit_unit ?name ?name_prefix
      ?time_period_end ?time_period_start ~budget_type ~time_unit
      ~auto_adjust_data ~cost_filter ~cost_types ~notification
      ~planned_limit __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
