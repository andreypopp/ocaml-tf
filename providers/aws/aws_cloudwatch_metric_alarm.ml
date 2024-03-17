(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_metric_alarm__metric_query__metric = {
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  metric_name : string prop;  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  period : float prop;  (** period *)
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm__metric_query__metric *)

type aws_cloudwatch_metric_alarm__metric_query = {
  account_id : string prop option; [@option]  (** account_id *)
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  period : float prop option; [@option]  (** period *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric : aws_cloudwatch_metric_alarm__metric_query__metric list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm__metric_query *)

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
  metric_query : aws_cloudwatch_metric_alarm__metric_query list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm *)

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

let aws_cloudwatch_metric_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?datapoints_to_alarm ?dimensions
    ?evaluate_low_sample_count_percentiles ?extended_statistic ?id
    ?insufficient_data_actions ?metric_name ?namespace ?ok_actions
    ?period ?statistic ?tags ?tags_all ?threshold
    ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
    ~comparison_operator ~evaluation_periods ~metric_query
    __resource_id =
  let __resource_type = "aws_cloudwatch_metric_alarm" in
  let __resource =
    ({
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
      : aws_cloudwatch_metric_alarm)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_metric_alarm __resource);
  let __resource_attributes =
    ({
       actions_enabled =
         Prop.computed __resource_type __resource_id
           "actions_enabled";
       alarm_actions =
         Prop.computed __resource_type __resource_id "alarm_actions";
       alarm_description =
         Prop.computed __resource_type __resource_id
           "alarm_description";
       alarm_name =
         Prop.computed __resource_type __resource_id "alarm_name";
       arn = Prop.computed __resource_type __resource_id "arn";
       comparison_operator =
         Prop.computed __resource_type __resource_id
           "comparison_operator";
       datapoints_to_alarm =
         Prop.computed __resource_type __resource_id
           "datapoints_to_alarm";
       dimensions =
         Prop.computed __resource_type __resource_id "dimensions";
       evaluate_low_sample_count_percentiles =
         Prop.computed __resource_type __resource_id
           "evaluate_low_sample_count_percentiles";
       evaluation_periods =
         Prop.computed __resource_type __resource_id
           "evaluation_periods";
       extended_statistic =
         Prop.computed __resource_type __resource_id
           "extended_statistic";
       id = Prop.computed __resource_type __resource_id "id";
       insufficient_data_actions =
         Prop.computed __resource_type __resource_id
           "insufficient_data_actions";
       metric_name =
         Prop.computed __resource_type __resource_id "metric_name";
       namespace =
         Prop.computed __resource_type __resource_id "namespace";
       ok_actions =
         Prop.computed __resource_type __resource_id "ok_actions";
       period = Prop.computed __resource_type __resource_id "period";
       statistic =
         Prop.computed __resource_type __resource_id "statistic";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       threshold =
         Prop.computed __resource_type __resource_id "threshold";
       threshold_metric_id =
         Prop.computed __resource_type __resource_id
           "threshold_metric_id";
       treat_missing_data =
         Prop.computed __resource_type __resource_id
           "treat_missing_data";
       unit = Prop.computed __resource_type __resource_id "unit";
     }
      : t)
  in
  __resource_attributes
