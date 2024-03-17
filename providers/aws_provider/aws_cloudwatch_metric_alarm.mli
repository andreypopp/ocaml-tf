(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_metric_alarm__metric_query__metric
type aws_cloudwatch_metric_alarm__metric_query
type aws_cloudwatch_metric_alarm

val aws_cloudwatch_metric_alarm :
  ?actions_enabled:bool ->
  ?alarm_actions:string list ->
  ?alarm_description:string ->
  ?datapoints_to_alarm:float ->
  ?dimensions:(string * string) list ->
  ?evaluate_low_sample_count_percentiles:string ->
  ?extended_statistic:string ->
  ?id:string ->
  ?insufficient_data_actions:string list ->
  ?metric_name:string ->
  ?namespace:string ->
  ?ok_actions:string list ->
  ?period:float ->
  ?statistic:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?threshold:float ->
  ?threshold_metric_id:string ->
  ?treat_missing_data:string ->
  ?unit:string ->
  alarm_name:string ->
  comparison_operator:string ->
  evaluation_periods:float ->
  metric_query:aws_cloudwatch_metric_alarm__metric_query list ->
  string ->
  unit
