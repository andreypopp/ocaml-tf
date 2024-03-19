(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type step_scaling_policy_configuration__step_adjustment

val step_scaling_policy_configuration__step_adjustment :
  ?metric_interval_lower_bound:string prop ->
  ?metric_interval_upper_bound:string prop ->
  scaling_adjustment:float prop ->
  unit ->
  step_scaling_policy_configuration__step_adjustment

type step_scaling_policy_configuration

val step_scaling_policy_configuration :
  ?adjustment_type:string prop ->
  ?cooldown:float prop ->
  ?metric_aggregation_type:string prop ->
  ?min_adjustment_magnitude:float prop ->
  step_adjustment:
    step_scaling_policy_configuration__step_adjustment list ->
  unit ->
  step_scaling_policy_configuration

type target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions

val target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

val target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric

val target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric :
  metric_name:string prop ->
  namespace:string prop ->
  dimensions:
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat

val target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat :
  ?unit:string prop ->
  stat:string prop ->
  metric:
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    list ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics

val target_tracking_scaling_policy_configuration__customized_metric_specification__metrics :
  ?expression:string prop ->
  ?label:string prop ->
  ?return_data:bool prop ->
  id:string prop ->
  metric_stat:
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    list ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification__metrics

type target_tracking_scaling_policy_configuration__customized_metric_specification

val target_tracking_scaling_policy_configuration__customized_metric_specification :
  ?metric_name:string prop ->
  ?namespace:string prop ->
  ?statistic:string prop ->
  ?unit:string prop ->
  dimensions:
    target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    list ->
  metrics:
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    list ->
  unit ->
  target_tracking_scaling_policy_configuration__customized_metric_specification

type target_tracking_scaling_policy_configuration__predefined_metric_specification

val target_tracking_scaling_policy_configuration__predefined_metric_specification :
  ?resource_label:string prop ->
  predefined_metric_type:string prop ->
  unit ->
  target_tracking_scaling_policy_configuration__predefined_metric_specification

type target_tracking_scaling_policy_configuration

val target_tracking_scaling_policy_configuration :
  ?disable_scale_in:bool prop ->
  ?scale_in_cooldown:float prop ->
  ?scale_out_cooldown:float prop ->
  target_value:float prop ->
  customized_metric_specification:
    target_tracking_scaling_policy_configuration__customized_metric_specification
    list ->
  predefined_metric_specification:
    target_tracking_scaling_policy_configuration__predefined_metric_specification
    list ->
  unit ->
  target_tracking_scaling_policy_configuration

type aws_appautoscaling_policy

val aws_appautoscaling_policy :
  ?id:string prop ->
  ?policy_type:string prop ->
  name:string prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  service_namespace:string prop ->
  step_scaling_policy_configuration:
    step_scaling_policy_configuration list ->
  target_tracking_scaling_policy_configuration:
    target_tracking_scaling_policy_configuration list ->
  unit ->
  aws_appautoscaling_policy

val yojson_of_aws_appautoscaling_policy :
  aws_appautoscaling_policy -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy_type:string prop ->
  name:string prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  service_namespace:string prop ->
  step_scaling_policy_configuration:
    step_scaling_policy_configuration list ->
  target_tracking_scaling_policy_configuration:
    target_tracking_scaling_policy_configuration list ->
  string ->
  t
