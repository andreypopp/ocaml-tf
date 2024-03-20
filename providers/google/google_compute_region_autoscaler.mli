(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscaling_policy__cpu_utilization

val autoscaling_policy__cpu_utilization :
  ?predictive_method:string prop ->
  target:float prop ->
  unit ->
  autoscaling_policy__cpu_utilization

type autoscaling_policy__load_balancing_utilization

val autoscaling_policy__load_balancing_utilization :
  target:float prop ->
  unit ->
  autoscaling_policy__load_balancing_utilization

type autoscaling_policy__metric

val autoscaling_policy__metric :
  ?target:float prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  autoscaling_policy__metric

type autoscaling_policy__scale_in_control__max_scaled_in_replicas

val autoscaling_policy__scale_in_control__max_scaled_in_replicas :
  ?fixed:float prop ->
  ?percent:float prop ->
  unit ->
  autoscaling_policy__scale_in_control__max_scaled_in_replicas

type autoscaling_policy__scale_in_control

val autoscaling_policy__scale_in_control :
  ?time_window_sec:float prop ->
  max_scaled_in_replicas:
    autoscaling_policy__scale_in_control__max_scaled_in_replicas list ->
  unit ->
  autoscaling_policy__scale_in_control

type autoscaling_policy__scaling_schedules

val autoscaling_policy__scaling_schedules :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?time_zone:string prop ->
  duration_sec:float prop ->
  min_required_replicas:float prop ->
  name:string prop ->
  schedule:string prop ->
  unit ->
  autoscaling_policy__scaling_schedules

type autoscaling_policy

val autoscaling_policy :
  ?cooldown_period:float prop ->
  ?mode:string prop ->
  max_replicas:float prop ->
  min_replicas:float prop ->
  cpu_utilization:autoscaling_policy__cpu_utilization list ->
  load_balancing_utilization:
    autoscaling_policy__load_balancing_utilization list ->
  metric:autoscaling_policy__metric list ->
  scale_in_control:autoscaling_policy__scale_in_control list ->
  scaling_schedules:autoscaling_policy__scaling_schedules list ->
  unit ->
  autoscaling_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_region_autoscaler

val google_compute_region_autoscaler :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  autoscaling_policy:autoscaling_policy list ->
  unit ->
  google_compute_region_autoscaler

val yojson_of_google_compute_region_autoscaler :
  google_compute_region_autoscaler -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  autoscaling_policy:autoscaling_policy list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  autoscaling_policy:autoscaling_policy list ->
  string ->
  t Tf_core.resource
