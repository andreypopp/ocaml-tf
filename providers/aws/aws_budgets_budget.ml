(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_adjust_data__historical_options = {
  budget_adjustment_period : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_adjust_data__historical_options) -> ()

let yojson_of_auto_adjust_data__historical_options =
  (function
   | { budget_adjustment_period = v_budget_adjustment_period } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_adjust_data) -> ()

let yojson_of_auto_adjust_data =
  (function
   | {
       auto_adjust_type = v_auto_adjust_type;
       historical_options = v_historical_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auto_adjust_data__historical_options
             v_historical_options
         in
         ("historical_options", arg) :: bnds
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

type cost_filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : cost_filter) -> ()

let yojson_of_cost_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
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
  include_credit : bool prop option; [@option]
  include_discount : bool prop option; [@option]
  include_other_subscription : bool prop option; [@option]
  include_recurring : bool prop option; [@option]
  include_refund : bool prop option; [@option]
  include_subscription : bool prop option; [@option]
  include_support : bool prop option; [@option]
  include_tax : bool prop option; [@option]
  include_upfront : bool prop option; [@option]
  use_amortized : bool prop option; [@option]
  use_blended : bool prop option; [@option]
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
         match v_use_blended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_blended", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_amortized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_amortized", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_upfront with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_upfront", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_tax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_tax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_subscription with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_subscription", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_refund with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_refund", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_recurring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_recurring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_other_subscription with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_other_subscription", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_discount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_discount", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_credit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_credit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cost_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cost_types

[@@@deriving.end]

type notification = {
  comparison_operator : string prop;
  notification_type : string prop;
  subscriber_email_addresses : string prop list option; [@option]
  subscriber_sns_topic_arns : string prop list option; [@option]
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
         match v_subscriber_sns_topic_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subscriber_sns_topic_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscriber_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
  budget_type : string prop;
  id : string prop option; [@option]
  limit_amount : string prop option; [@option]
  limit_unit : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  time_period_end : string prop option; [@option]
  time_period_start : string prop option; [@option]
  time_unit : string prop;
  auto_adjust_data : auto_adjust_data list;
  cost_filter : cost_filter list;
  cost_types : cost_types list;
  notification : notification list;
  planned_limit : planned_limit list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_budgets_budget) -> ()

let yojson_of_aws_budgets_budget =
  (function
   | {
       account_id = v_account_id;
       budget_type = v_budget_type;
       id = v_id;
       limit_amount = v_limit_amount;
       limit_unit = v_limit_unit;
       name = v_name;
       name_prefix = v_name_prefix;
       time_period_end = v_time_period_end;
       time_period_start = v_time_period_start;
       time_unit = v_time_unit;
       auto_adjust_data = v_auto_adjust_data;
       cost_filter = v_cost_filter;
       cost_types = v_cost_types;
       notification = v_notification;
       planned_limit = v_planned_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_planned_limit v_planned_limit
         in
         ("planned_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notification v_notification
         in
         ("notification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cost_types v_cost_types
         in
         ("cost_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cost_filter v_cost_filter
         in
         ("cost_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_adjust_data
             v_auto_adjust_data
         in
         ("auto_adjust_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_unit in
         ("time_unit", arg) :: bnds
       in
       let bnds =
         match v_time_period_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_period_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_time_period_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_period_end", arg in
             bnd :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limit_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "limit_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limit_amount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "limit_amount", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_budget_type in
         ("budget_type", arg) :: bnds
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

let auto_adjust_data__historical_options ~budget_adjustment_period ()
    : auto_adjust_data__historical_options =
  { budget_adjustment_period }

let auto_adjust_data ?(historical_options = []) ~auto_adjust_type ()
    : auto_adjust_data =
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
    ?(auto_adjust_data = []) ?(cost_types = []) ~budget_type
    ~time_unit ~cost_filter ~notification ~planned_limit () :
    aws_budgets_budget =
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
  tf_name : string;
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
    ?time_period_end ?time_period_start ?(auto_adjust_data = [])
    ?(cost_types = []) ~budget_type ~time_unit ~cost_filter
    ~notification ~planned_limit __id =
  let __type = "aws_budgets_budget" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~auto_adjust_data ~cost_types ~budget_type ~time_unit
           ~cost_filter ~notification ~planned_limit ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?limit_amount ?limit_unit
    ?name ?name_prefix ?time_period_end ?time_period_start
    ?(auto_adjust_data = []) ?(cost_types = []) ~budget_type
    ~time_unit ~cost_filter ~notification ~planned_limit __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?limit_amount ?limit_unit ?name ?name_prefix
      ?time_period_end ?time_period_start ~auto_adjust_data
      ~cost_types ~budget_type ~time_unit ~cost_filter ~notification
      ~planned_limit __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
