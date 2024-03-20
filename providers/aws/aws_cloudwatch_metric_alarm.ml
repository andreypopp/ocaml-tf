(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metric_query__metric = {
  dimensions : (string * string prop) list option; [@option]
  metric_name : string prop;
  namespace : string prop option; [@option]
  period : float prop;
  stat : string prop;
  unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_query__metric) -> ()

let yojson_of_metric_query__metric =
  (function
   | {
       dimensions = v_dimensions;
       metric_name = v_metric_name;
       namespace = v_namespace;
       period = v_period;
       stat = v_stat;
       unit = v_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period in
         ("period", arg) :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metric_query__metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_query__metric

[@@@deriving.end]

type metric_query = {
  account_id : string prop option; [@option]
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  period : float prop option; [@option]
  return_data : bool prop option; [@option]
  metric : metric_query__metric list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_query) -> ()

let yojson_of_metric_query =
  (function
   | {
       account_id = v_account_id;
       expression = v_expression;
       id = v_id;
       label = v_label;
       period = v_period;
       return_data = v_return_data;
       metric = v_metric;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metric_query__metric v_metric
         in
         ("metric", arg) :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
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
    : metric_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_query

[@@@deriving.end]

type aws_cloudwatch_metric_alarm = {
  actions_enabled : bool prop option; [@option]
  alarm_actions : string prop list option; [@option]
  alarm_description : string prop option; [@option]
  alarm_name : string prop;
  comparison_operator : string prop;
  datapoints_to_alarm : float prop option; [@option]
  dimensions : (string * string prop) list option; [@option]
  evaluate_low_sample_count_percentiles : string prop option;
      [@option]
  evaluation_periods : float prop;
  extended_statistic : string prop option; [@option]
  id : string prop option; [@option]
  insufficient_data_actions : string prop list option; [@option]
  metric_name : string prop option; [@option]
  namespace : string prop option; [@option]
  ok_actions : string prop list option; [@option]
  period : float prop option; [@option]
  statistic : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  threshold : float prop option; [@option]
  threshold_metric_id : string prop option; [@option]
  treat_missing_data : string prop option; [@option]
  unit : string prop option; [@option]
  metric_query : metric_query list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_metric_alarm) -> ()

let yojson_of_aws_cloudwatch_metric_alarm =
  (function
   | {
       actions_enabled = v_actions_enabled;
       alarm_actions = v_alarm_actions;
       alarm_description = v_alarm_description;
       alarm_name = v_alarm_name;
       comparison_operator = v_comparison_operator;
       datapoints_to_alarm = v_datapoints_to_alarm;
       dimensions = v_dimensions;
       evaluate_low_sample_count_percentiles =
         v_evaluate_low_sample_count_percentiles;
       evaluation_periods = v_evaluation_periods;
       extended_statistic = v_extended_statistic;
       id = v_id;
       insufficient_data_actions = v_insufficient_data_actions;
       metric_name = v_metric_name;
       namespace = v_namespace;
       ok_actions = v_ok_actions;
       period = v_period;
       statistic = v_statistic;
       tags = v_tags;
       tags_all = v_tags_all;
       threshold = v_threshold;
       threshold_metric_id = v_threshold_metric_id;
       treat_missing_data = v_treat_missing_data;
       unit = v_unit;
       metric_query = v_metric_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metric_query v_metric_query
         in
         ("metric_query", arg) :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_treat_missing_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "treat_missing_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threshold_metric_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "threshold_metric_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statistic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statistic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ok_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ok_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insufficient_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "insufficient_data_actions", arg in
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
         match v_extended_statistic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extended_statistic", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_evaluation_periods
         in
         ("evaluation_periods", arg) :: bnds
       in
       let bnds =
         match v_evaluate_low_sample_count_percentiles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "evaluate_low_sample_count_percentiles", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datapoints_to_alarm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "datapoints_to_alarm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comparison_operator
         in
         ("comparison_operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_name in
         ("alarm_name", arg) :: bnds
       in
       let bnds =
         match v_alarm_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alarm_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alarm_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alarm_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "actions_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_metric_alarm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_metric_alarm

[@@@deriving.end]

let metric_query__metric ?dimensions ?namespace ?unit ~metric_name
    ~period ~stat () : metric_query__metric =
  { dimensions; metric_name; namespace; period; stat; unit }

let metric_query ?account_id ?expression ?label ?period ?return_data
    ~id ~metric () : metric_query =
  { account_id; expression; id; label; period; return_data; metric }

let aws_cloudwatch_metric_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?datapoints_to_alarm ?dimensions
    ?evaluate_low_sample_count_percentiles ?extended_statistic ?id
    ?insufficient_data_actions ?metric_name ?namespace ?ok_actions
    ?period ?statistic ?tags ?tags_all ?threshold
    ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
    ~comparison_operator ~evaluation_periods ~metric_query () :
    aws_cloudwatch_metric_alarm =
  {
    actions_enabled;
    alarm_actions;
    alarm_description;
    alarm_name;
    comparison_operator;
    datapoints_to_alarm;
    dimensions;
    evaluate_low_sample_count_percentiles;
    evaluation_periods;
    extended_statistic;
    id;
    insufficient_data_actions;
    metric_name;
    namespace;
    ok_actions;
    period;
    statistic;
    tags;
    tags_all;
    threshold;
    threshold_metric_id;
    treat_missing_data;
    unit;
    metric_query;
  }

type t = {
  actions_enabled : bool prop;
  alarm_actions : string list prop;
  alarm_description : string prop;
  alarm_name : string prop;
  arn : string prop;
  comparison_operator : string prop;
  datapoints_to_alarm : float prop;
  dimensions : (string * string) list prop;
  evaluate_low_sample_count_percentiles : string prop;
  evaluation_periods : float prop;
  extended_statistic : string prop;
  id : string prop;
  insufficient_data_actions : string list prop;
  metric_name : string prop;
  namespace : string prop;
  ok_actions : string list prop;
  period : float prop;
  statistic : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  threshold : float prop;
  threshold_metric_id : string prop;
  treat_missing_data : string prop;
  unit : string prop;
}

let make ?actions_enabled ?alarm_actions ?alarm_description
    ?datapoints_to_alarm ?dimensions
    ?evaluate_low_sample_count_percentiles ?extended_statistic ?id
    ?insufficient_data_actions ?metric_name ?namespace ?ok_actions
    ?period ?statistic ?tags ?tags_all ?threshold
    ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
    ~comparison_operator ~evaluation_periods ~metric_query __id =
  let __type = "aws_cloudwatch_metric_alarm" in
  let __attrs =
    ({
       actions_enabled = Prop.computed __type __id "actions_enabled";
       alarm_actions = Prop.computed __type __id "alarm_actions";
       alarm_description =
         Prop.computed __type __id "alarm_description";
       alarm_name = Prop.computed __type __id "alarm_name";
       arn = Prop.computed __type __id "arn";
       comparison_operator =
         Prop.computed __type __id "comparison_operator";
       datapoints_to_alarm =
         Prop.computed __type __id "datapoints_to_alarm";
       dimensions = Prop.computed __type __id "dimensions";
       evaluate_low_sample_count_percentiles =
         Prop.computed __type __id
           "evaluate_low_sample_count_percentiles";
       evaluation_periods =
         Prop.computed __type __id "evaluation_periods";
       extended_statistic =
         Prop.computed __type __id "extended_statistic";
       id = Prop.computed __type __id "id";
       insufficient_data_actions =
         Prop.computed __type __id "insufficient_data_actions";
       metric_name = Prop.computed __type __id "metric_name";
       namespace = Prop.computed __type __id "namespace";
       ok_actions = Prop.computed __type __id "ok_actions";
       period = Prop.computed __type __id "period";
       statistic = Prop.computed __type __id "statistic";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       threshold = Prop.computed __type __id "threshold";
       threshold_metric_id =
         Prop.computed __type __id "threshold_metric_id";
       treat_missing_data =
         Prop.computed __type __id "treat_missing_data";
       unit = Prop.computed __type __id "unit";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_metric_alarm
        (aws_cloudwatch_metric_alarm ?actions_enabled ?alarm_actions
           ?alarm_description ?datapoints_to_alarm ?dimensions
           ?evaluate_low_sample_count_percentiles ?extended_statistic
           ?id ?insufficient_data_actions ?metric_name ?namespace
           ?ok_actions ?period ?statistic ?tags ?tags_all ?threshold
           ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
           ~comparison_operator ~evaluation_periods ~metric_query ());
    attrs = __attrs;
  }

let register ?tf_module ?actions_enabled ?alarm_actions
    ?alarm_description ?datapoints_to_alarm ?dimensions
    ?evaluate_low_sample_count_percentiles ?extended_statistic ?id
    ?insufficient_data_actions ?metric_name ?namespace ?ok_actions
    ?period ?statistic ?tags ?tags_all ?threshold
    ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
    ~comparison_operator ~evaluation_periods ~metric_query __id =
  let (r : _ Tf_core.resource) =
    make ?actions_enabled ?alarm_actions ?alarm_description
      ?datapoints_to_alarm ?dimensions
      ?evaluate_low_sample_count_percentiles ?extended_statistic ?id
      ?insufficient_data_actions ?metric_name ?namespace ?ok_actions
      ?period ?statistic ?tags ?tags_all ?threshold
      ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
      ~comparison_operator ~evaluation_periods ~metric_query __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
