(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_autoscaler__autoscaling_policy__cpu_utilization

type google_compute_autoscaler__autoscaling_policy__load_balancing_utilization

type google_compute_autoscaler__autoscaling_policy__metric

type google_compute_autoscaler__autoscaling_policy__scale_in_control__max_scaled_in_replicas

type google_compute_autoscaler__autoscaling_policy__scale_in_control
type google_compute_autoscaler__autoscaling_policy__scaling_schedules
type google_compute_autoscaler__autoscaling_policy
type google_compute_autoscaler__timeouts
type google_compute_autoscaler

val google_compute_autoscaler :
  ?description:string ->
  ?timeouts:google_compute_autoscaler__timeouts ->
  name:string ->
  target:string ->
  autoscaling_policy:
    google_compute_autoscaler__autoscaling_policy list ->
  string ->
  unit
