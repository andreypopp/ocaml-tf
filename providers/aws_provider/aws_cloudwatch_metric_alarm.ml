(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_metric_alarm__metric_query__metric = {
  dimensions : (string * string) list option; [@option]
      (** dimensions *)
  metric_name : string;  (** metric_name *)
  namespace : string option; [@option]  (** namespace *)
  period : float;  (** period *)
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm__metric_query__metric *)

type aws_cloudwatch_metric_alarm__metric_query = {
  account_id : string option; [@option]  (** account_id *)
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  period : float option; [@option]  (** period *)
  return_data : bool option; [@option]  (** return_data *)
  metric : aws_cloudwatch_metric_alarm__metric_query__metric list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm__metric_query *)

type aws_cloudwatch_metric_alarm = {
  actions_enabled : bool option; [@option]  (** actions_enabled *)
  alarm_actions : string list option; [@option]  (** alarm_actions *)
  alarm_description : string option; [@option]
      (** alarm_description *)
  alarm_name : string;  (** alarm_name *)
  comparison_operator : string;  (** comparison_operator *)
  datapoints_to_alarm : float option; [@option]
      (** datapoints_to_alarm *)
  dimensions : (string * string) list option; [@option]
      (** dimensions *)
  evaluation_periods : float;  (** evaluation_periods *)
  extended_statistic : string option; [@option]
      (** extended_statistic *)
  insufficient_data_actions : string list option; [@option]
      (** insufficient_data_actions *)
  metric_name : string option; [@option]  (** metric_name *)
  namespace : string option; [@option]  (** namespace *)
  ok_actions : string list option; [@option]  (** ok_actions *)
  period : float option; [@option]  (** period *)
  statistic : string option; [@option]  (** statistic *)
  tags : (string * string) list option; [@option]  (** tags *)
  threshold : float option; [@option]  (** threshold *)
  threshold_metric_id : string option; [@option]
      (** threshold_metric_id *)
  treat_missing_data : string option; [@option]
      (** treat_missing_data *)
  unit : string option; [@option]  (** unit *)
  metric_query : aws_cloudwatch_metric_alarm__metric_query list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_alarm *)

let aws_cloudwatch_metric_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?datapoints_to_alarm ?dimensions
    ?extended_statistic ?insufficient_data_actions ?metric_name
    ?namespace ?ok_actions ?period ?statistic ?tags ?threshold
    ?threshold_metric_id ?treat_missing_data ?unit ~alarm_name
    ~comparison_operator ~evaluation_periods ~metric_query
    __resource_id =
  let __resource_type = "aws_cloudwatch_metric_alarm" in
  let __resource =
    {
      actions_enabled;
      alarm_actions;
      alarm_description;
      alarm_name;
      comparison_operator;
      datapoints_to_alarm;
      dimensions;
      evaluation_periods;
      extended_statistic;
      insufficient_data_actions;
      metric_name;
      namespace;
      ok_actions;
      period;
      statistic;
      tags;
      threshold;
      threshold_metric_id;
      treat_missing_data;
      unit;
      metric_query;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_metric_alarm __resource);
  ()
