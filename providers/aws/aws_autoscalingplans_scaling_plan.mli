(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_source__tag_filter

val application_source__tag_filter :
  ?values:string prop list ->
  key:string prop ->
  unit ->
  application_source__tag_filter

type application_source

val application_source :
  ?cloudformation_stack_arn:string prop ->
  tag_filter:application_source__tag_filter list ->
  unit ->
  application_source

type scaling_instruction__customized_load_metric_specification

val scaling_instruction__customized_load_metric_specification :
  ?dimensions:(string * string prop) list ->
  ?unit:string prop ->
  metric_name:string prop ->
  namespace:string prop ->
  statistic:string prop ->
  unit ->
  scaling_instruction__customized_load_metric_specification

type scaling_instruction__predefined_load_metric_specification

val scaling_instruction__predefined_load_metric_specification :
  ?resource_label:string prop ->
  predefined_load_metric_type:string prop ->
  unit ->
  scaling_instruction__predefined_load_metric_specification

type scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification

val scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification :
  ?dimensions:(string * string prop) list ->
  ?unit:string prop ->
  metric_name:string prop ->
  namespace:string prop ->
  statistic:string prop ->
  unit ->
  scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification

type scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification

val scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification :
  ?resource_label:string prop ->
  predefined_scaling_metric_type:string prop ->
  unit ->
  scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification

type scaling_instruction__target_tracking_configuration

val scaling_instruction__target_tracking_configuration :
  ?disable_scale_in:bool prop ->
  ?estimated_instance_warmup:float prop ->
  ?scale_in_cooldown:float prop ->
  ?scale_out_cooldown:float prop ->
  target_value:float prop ->
  customized_scaling_metric_specification:
    scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    list ->
  predefined_scaling_metric_specification:
    scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    list ->
  unit ->
  scaling_instruction__target_tracking_configuration

type scaling_instruction

val scaling_instruction :
  ?disable_dynamic_scaling:bool prop ->
  ?predictive_scaling_max_capacity_behavior:string prop ->
  ?predictive_scaling_max_capacity_buffer:float prop ->
  ?predictive_scaling_mode:string prop ->
  ?scaling_policy_update_behavior:string prop ->
  ?scheduled_action_buffer_time:float prop ->
  max_capacity:float prop ->
  min_capacity:float prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  service_namespace:string prop ->
  customized_load_metric_specification:
    scaling_instruction__customized_load_metric_specification list ->
  predefined_load_metric_specification:
    scaling_instruction__predefined_load_metric_specification list ->
  target_tracking_configuration:
    scaling_instruction__target_tracking_configuration list ->
  unit ->
  scaling_instruction

type aws_autoscalingplans_scaling_plan

val aws_autoscalingplans_scaling_plan :
  ?id:string prop ->
  name:string prop ->
  application_source:application_source list ->
  scaling_instruction:scaling_instruction list ->
  unit ->
  aws_autoscalingplans_scaling_plan

val yojson_of_aws_autoscalingplans_scaling_plan :
  aws_autoscalingplans_scaling_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  scaling_plan_version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  application_source:application_source list ->
  scaling_instruction:scaling_instruction list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  application_source:application_source list ->
  scaling_instruction:scaling_instruction list ->
  string ->
  t Tf_core.resource
