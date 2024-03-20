(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metric_query__metric = {
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  metric_name : string prop;  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  period : float prop;  (** period *)
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** metric_query__metric *)

type metric_query = {
  account_id : string prop option; [@option]  (** account_id *)
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  period : float prop option; [@option]  (** period *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric : metric_query__metric list;
}
[@@deriving yojson_of]
(** metric_query *)

type aws_cloudwatch_metric_alarm = {
  actions_enabled : bool prop option; [@option]
      (** actions_enabled *)
  alarm_actions : string prop list option; [@option]
      (** alarm_actions *)
  alarm_description : string prop option; [@option]
      (** alarm_description *)
  alarm_name : string prop;  (** alarm_name *)
  comparison_operator : string prop;  (** comparison_operator *)
  datapoints_to_alarm : float prop option; [@option]
      (** datapoints_to_alarm *)
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  evaluate_low_sample_count_percentiles : string prop option;
      [@option]
      (** evaluate_low_sample_count_percentiles *)
  evaluation_periods : float prop;  (** evaluation_periods *)
  extended_statistic : string prop option; [@option]
      (** extended_statistic *)
  id : string prop option; [@option]  (** id *)
  insufficient_data_actions : string prop list option; [@option]
      (** insufficient_data_actions *)
  metric_name : string prop option; [@option]  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  ok_actions : string prop list option; [@option]  (** ok_actions *)
  period : float prop option; [@option]  (** period *)
  statistic : string prop option; [@option]  (** statistic *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  threshold : float prop option; [@option]  (** threshold *)
  threshold_metric_id : string prop option; [@option]
      (** threshold_metric_id *)
  treat_missing_data : string prop option; [@option]
      (** treat_missing_data *)
  unit : string prop option; [@option]  (** unit *)
  metric_query : metric_query list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm *)

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
