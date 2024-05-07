(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions

val predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric

val predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric :
  metric_name:string prop ->
  namespace:string prop ->
  dimensions:
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat

val predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat :
  ?unit:string prop ->
  stat:string prop ->
  metric:
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries

val predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries :
  ?expression:string prop ->
  ?label:string prop ->
  ?return_data:bool prop ->
  ?metric_stat:
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    list ->
  id:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification

val predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification :
  metric_data_queries:
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions

val predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric

val predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric :
  metric_name:string prop ->
  namespace:string prop ->
  dimensions:
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat

val predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat :
  ?unit:string prop ->
  stat:string prop ->
  metric:
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries

val predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries :
  ?expression:string prop ->
  ?label:string prop ->
  ?return_data:bool prop ->
  ?metric_stat:
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    list ->
  id:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification

val predictive_scaling_configuration__metric_specification__customized_load_metric_specification :
  metric_data_queries:
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_load_metric_specification

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions

val predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric

val predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric :
  metric_name:string prop ->
  namespace:string prop ->
  dimensions:
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat

val predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat :
  ?unit:string prop ->
  stat:string prop ->
  metric:
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries

val predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries :
  ?expression:string prop ->
  ?label:string prop ->
  ?return_data:bool prop ->
  ?metric_stat:
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    list ->
  id:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification

val predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification :
  metric_data_queries:
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    list ->
  unit ->
  predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification

type predictive_scaling_configuration__metric_specification__predefined_load_metric_specification

val predictive_scaling_configuration__metric_specification__predefined_load_metric_specification :
  ?resource_label:string prop ->
  predefined_metric_type:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__predefined_load_metric_specification

type predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification

val predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification :
  ?resource_label:string prop ->
  predefined_metric_type:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification

type predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification

val predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification :
  ?resource_label:string prop ->
  predefined_metric_type:string prop ->
  unit ->
  predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification

type predictive_scaling_configuration__metric_specification

val predictive_scaling_configuration__metric_specification :
  ?customized_capacity_metric_specification:
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    list ->
  ?customized_load_metric_specification:
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    list ->
  ?customized_scaling_metric_specification:
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    list ->
  ?predefined_load_metric_specification:
    predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    list ->
  ?predefined_metric_pair_specification:
    predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    list ->
  ?predefined_scaling_metric_specification:
    predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    list ->
  target_value:float prop ->
  unit ->
  predictive_scaling_configuration__metric_specification

type predictive_scaling_configuration

val predictive_scaling_configuration :
  ?max_capacity_breach_behavior:string prop ->
  ?max_capacity_buffer:string prop ->
  ?mode:string prop ->
  ?scheduling_buffer_time:string prop ->
  metric_specification:
    predictive_scaling_configuration__metric_specification list ->
  unit ->
  predictive_scaling_configuration

type step_adjustment

val step_adjustment :
  ?metric_interval_lower_bound:string prop ->
  ?metric_interval_upper_bound:string prop ->
  scaling_adjustment:float prop ->
  unit ->
  step_adjustment

type target_tracking_configuration__customized_metric_specification__metric_dimension

val target_tracking_configuration__customized_metric_specification__metric_dimension :
  name:string prop ->
  value:string prop ->
  unit ->
  target_tracking_configuration__customized_metric_specification__metric_dimension

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

val target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions :
  name:string prop ->
  value:string prop ->
  unit ->
  target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric

val target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric :
  metric_name:string prop ->
  namespace:string prop ->
  dimensions:
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list ->
  unit ->
  target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat

val target_tracking_configuration__customized_metric_specification__metrics__metric_stat :
  ?unit:string prop ->
  stat:string prop ->
  metric:
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    list ->
  unit ->
  target_tracking_configuration__customized_metric_specification__metrics__metric_stat

type target_tracking_configuration__customized_metric_specification__metrics

val target_tracking_configuration__customized_metric_specification__metrics :
  ?expression:string prop ->
  ?label:string prop ->
  ?return_data:bool prop ->
  ?metric_stat:
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    list ->
  id:string prop ->
  unit ->
  target_tracking_configuration__customized_metric_specification__metrics

type target_tracking_configuration__customized_metric_specification

val target_tracking_configuration__customized_metric_specification :
  ?metric_name:string prop ->
  ?namespace:string prop ->
  ?statistic:string prop ->
  ?unit:string prop ->
  ?metric_dimension:
    target_tracking_configuration__customized_metric_specification__metric_dimension
    list ->
  metrics:
    target_tracking_configuration__customized_metric_specification__metrics
    list ->
  unit ->
  target_tracking_configuration__customized_metric_specification

type target_tracking_configuration__predefined_metric_specification

val target_tracking_configuration__predefined_metric_specification :
  ?resource_label:string prop ->
  predefined_metric_type:string prop ->
  unit ->
  target_tracking_configuration__predefined_metric_specification

type target_tracking_configuration

val target_tracking_configuration :
  ?disable_scale_in:bool prop ->
  ?customized_metric_specification:
    target_tracking_configuration__customized_metric_specification
    list ->
  ?predefined_metric_specification:
    target_tracking_configuration__predefined_metric_specification
    list ->
  target_value:float prop ->
  unit ->
  target_tracking_configuration

type aws_autoscaling_policy

val aws_autoscaling_policy :
  ?adjustment_type:string prop ->
  ?cooldown:float prop ->
  ?enabled:bool prop ->
  ?estimated_instance_warmup:float prop ->
  ?id:string prop ->
  ?metric_aggregation_type:string prop ->
  ?min_adjustment_magnitude:float prop ->
  ?policy_type:string prop ->
  ?scaling_adjustment:float prop ->
  ?predictive_scaling_configuration:
    predictive_scaling_configuration list ->
  ?target_tracking_configuration:target_tracking_configuration list ->
  autoscaling_group_name:string prop ->
  name:string prop ->
  step_adjustment:step_adjustment list ->
  unit ->
  aws_autoscaling_policy

val yojson_of_aws_autoscaling_policy : aws_autoscaling_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  adjustment_type : string prop;
  arn : string prop;
  autoscaling_group_name : string prop;
  cooldown : float prop;
  enabled : bool prop;
  estimated_instance_warmup : float prop;
  id : string prop;
  metric_aggregation_type : string prop;
  min_adjustment_magnitude : float prop;
  name : string prop;
  policy_type : string prop;
  scaling_adjustment : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?adjustment_type:string prop ->
  ?cooldown:float prop ->
  ?enabled:bool prop ->
  ?estimated_instance_warmup:float prop ->
  ?id:string prop ->
  ?metric_aggregation_type:string prop ->
  ?min_adjustment_magnitude:float prop ->
  ?policy_type:string prop ->
  ?scaling_adjustment:float prop ->
  ?predictive_scaling_configuration:
    predictive_scaling_configuration list ->
  ?target_tracking_configuration:target_tracking_configuration list ->
  autoscaling_group_name:string prop ->
  name:string prop ->
  step_adjustment:step_adjustment list ->
  string ->
  t

val make :
  ?adjustment_type:string prop ->
  ?cooldown:float prop ->
  ?enabled:bool prop ->
  ?estimated_instance_warmup:float prop ->
  ?id:string prop ->
  ?metric_aggregation_type:string prop ->
  ?min_adjustment_magnitude:float prop ->
  ?policy_type:string prop ->
  ?scaling_adjustment:float prop ->
  ?predictive_scaling_configuration:
    predictive_scaling_configuration list ->
  ?target_tracking_configuration:target_tracking_configuration list ->
  autoscaling_group_name:string prop ->
  name:string prop ->
  step_adjustment:step_adjustment list ->
  string ->
  t Tf_core.resource
