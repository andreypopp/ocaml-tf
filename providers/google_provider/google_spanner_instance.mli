(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_instance__autoscaling_config__autoscaling_limits
type google_spanner_instance__autoscaling_config__autoscaling_targets
type google_spanner_instance__autoscaling_config
type google_spanner_instance__timeouts
type google_spanner_instance

val google_spanner_instance :
  ?force_destroy:bool ->
  ?labels:(string * string) list ->
  ?timeouts:google_spanner_instance__timeouts ->
  config:string ->
  display_name:string ->
  autoscaling_config:google_spanner_instance__autoscaling_config list ->
  string ->
  unit
