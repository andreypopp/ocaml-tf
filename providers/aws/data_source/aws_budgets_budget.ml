(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_adjust_data__historical_options = {
  budget_adjustment_period : float prop;
  lookback_available_periods : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_adjust_data__historical_options) -> ()

let yojson_of_auto_adjust_data__historical_options =
  (function
   | {
       budget_adjustment_period = v_budget_adjustment_period;
       lookback_available_periods = v_lookback_available_periods;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_lookback_available_periods
         in
         ("lookback_available_periods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_budget_adjustment_period
         in
         ("budget_adjustment_period", arg) :: bnds
       in
       `Assoc bnds
    : auto_adjust_data__historical_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_adjust_data__historical_options

[@@@deriving.end]

type auto_adjust_data = {
  auto_adjust_type : string prop;
  historical_options : auto_adjust_data__historical_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  last_auto_adjust_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_adjust_data) -> ()

let yojson_of_auto_adjust_data =
  (function
   | {
       auto_adjust_type = v_auto_adjust_type;
       historical_options = v_historical_options;
       last_auto_adjust_time = v_last_auto_adjust_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_auto_adjust_time
         in
         ("last_auto_adjust_time", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_historical_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auto_adjust_data__historical_options)
               v_historical_options
           in
           let bnd = "historical_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auto_adjust_type
         in
         ("auto_adjust_type", arg) :: bnds
       in
       `Assoc bnds
    : auto_adjust_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_adjust_data

[@@@deriving.end]

type budget_limit = { amount : string prop; unit : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : budget_limit) -> ()

let yojson_of_budget_limit =
  (function
   | { amount = v_amount; unit = v_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : budget_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_budget_limit

[@@@deriving.end]

type calculated_spend__actual_spend = {
  amount : string prop;
  unit : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : calculated_spend__actual_spend) -> ()

let yojson_of_calculated_spend__actual_spend =
  (function
   | { amount = v_amount; unit = v_unit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : calculated_spend__actual_spend ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_calculated_spend__actual_spend

[@@@deriving.end]

type calculated_spend = {
  actual_spend : calculated_spend__actual_spend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : calculated_spend) -> ()

let yojson_of_calculated_spend =
  (function
   | { actual_spend = v_actual_spend } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_actual_spend then bnds
         else
           let arg =
             (yojson_of_list yojson_of_calculated_spend__actual_spend)
               v_actual_spend
           in
           let bnd = "actual_spend", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : calculated_spend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_calculated_spend

[@@@deriving.end]

type cost_filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cost_filter) -> ()

let yojson_of_cost_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : cost_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cost_filter

[@@@deriving.end]

type cost_types = {
  include_credit : bool prop;
  include_discount : bool prop;
  include_other_subscription : bool prop;
  include_recurring : bool prop;
  include_refund : bool prop;
  include_subscription : bool prop;
  include_support : bool prop;
  include_tax : bool prop;
  include_upfront : bool prop;
  use_amortized : bool prop;
  use_blended : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cost_types) -> ()

let yojson_of_cost_types =
  (function
   | {
       include_credit = v_include_credit;
       include_discount = v_include_discount;
       include_other_subscription = v_include_other_subscription;
       include_recurring = v_include_recurring;
       include_refund = v_include_refund;
       include_subscription = v_include_subscription;
       include_support = v_include_support;
       include_tax = v_include_tax;
       include_upfront = v_include_upfront;
       use_amortized = v_use_amortized;
       use_blended = v_use_blended;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_blended in
         ("use_blended", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_amortized in
         ("use_amortized", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_upfront in
         ("include_upfront", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_tax in
         ("include_tax", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_support in
         ("include_support", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_subscription
         in
         ("include_subscription", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_refund in
         ("include_refund", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_recurring
         in
         ("include_recurring", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_other_subscription
         in
         ("include_other_subscription", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_discount
         in
         ("include_discount", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_credit in
         ("include_credit", arg) :: bnds
       in
       `Assoc bnds
    : cost_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cost_types

[@@@deriving.end]

type notification = {
  comparison_operator : string prop;
  notification_type : string prop;
  subscriber_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscriber_sns_topic_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threshold : float prop;
  threshold_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | {
       comparison_operator = v_comparison_operator;
       notification_type = v_notification_type;
       subscriber_email_addresses = v_subscriber_email_addresses;
       subscriber_sns_topic_arns = v_subscriber_sns_topic_arns;
       threshold = v_threshold;
       threshold_type = v_threshold_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_threshold_type
         in
         ("threshold_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscriber_sns_topic_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subscriber_sns_topic_arns
           in
           let bnd = "subscriber_sns_topic_arns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscriber_email_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subscriber_email_addresses
           in
           let bnd = "subscriber_email_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_type
         in
         ("notification_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comparison_operator
         in
         ("comparison_operator", arg) :: bnds
       in
       `Assoc bnds
    : notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification

[@@@deriving.end]

type planned_limit = {
  amount : string prop;
  start_time : string prop;
  unit : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : planned_limit) -> ()

let yojson_of_planned_limit =
  (function
   | { amount = v_amount; start_time = v_start_time; unit = v_unit }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : planned_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_planned_limit

[@@@deriving.end]

type aws_budgets_budget = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_budgets_budget) -> ()

let yojson_of_aws_budgets_budget =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_budgets_budget -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_budgets_budget

[@@@deriving.end]

let aws_budgets_budget ?account_id ?id ?name_prefix ~name () :
    aws_budgets_budget =
  { account_id; id; name; name_prefix }

type t = {
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
  time_period_end : string prop;
  time_period_start : string prop;
  time_unit : string prop;
}

let make ?account_id ?id ?name_prefix ~name __id =
  let __type = "aws_budgets_budget" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       auto_adjust_data =
         Prop.computed __type __id "auto_adjust_data";
       budget_exceeded = Prop.computed __type __id "budget_exceeded";
       budget_limit = Prop.computed __type __id "budget_limit";
       budget_type = Prop.computed __type __id "budget_type";
       calculated_spend =
         Prop.computed __type __id "calculated_spend";
       cost_filter = Prop.computed __type __id "cost_filter";
       cost_types = Prop.computed __type __id "cost_types";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       notification = Prop.computed __type __id "notification";
       planned_limit = Prop.computed __type __id "planned_limit";
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
        (aws_budgets_budget ?account_id ?id ?name_prefix ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?name_prefix ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?name_prefix ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
