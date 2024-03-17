(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appautoscaling_policy__step_scaling_policy_configuration__step_adjustment

type aws_appautoscaling_policy__step_scaling_policy_configuration

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__predefined_metric_specification

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration

type aws_appautoscaling_policy

type t = private {
  alarm_arns : string list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  policy_type : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
}

val aws_appautoscaling_policy :
  ?id:string prop ->
  ?policy_type:string prop ->
  name:string prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  service_namespace:string prop ->
  step_scaling_policy_configuration:
    aws_appautoscaling_policy__step_scaling_policy_configuration list ->
  target_tracking_scaling_policy_configuration:
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration
    list ->
  string ->
  t
