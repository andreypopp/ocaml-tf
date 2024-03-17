(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_metric_alarm__metric_query__metric
type aws_cloudwatch_metric_alarm__metric_query
type aws_cloudwatch_metric_alarm

val aws_cloudwatch_metric_alarm :
  ?actions_enabled:bool prop ->
  ?alarm_actions:string prop list ->
  ?alarm_description:string prop ->
  ?datapoints_to_alarm:float prop ->
  ?dimensions:(string * string prop) list ->
  ?evaluate_low_sample_count_percentiles:string prop ->
  ?extended_statistic:string prop ->
  ?id:string prop ->
  ?insufficient_data_actions:string prop list ->
  ?metric_name:string prop ->
  ?namespace:string prop ->
  ?ok_actions:string prop list ->
  ?period:float prop ->
  ?statistic:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?threshold:float prop ->
  ?threshold_metric_id:string prop ->
  ?treat_missing_data:string prop ->
  ?unit:string prop ->
  alarm_name:string prop ->
  comparison_operator:string prop ->
  evaluation_periods:float prop ->
  metric_query:aws_cloudwatch_metric_alarm__metric_query list ->
  string ->
  unit
