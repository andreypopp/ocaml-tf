(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_instance__autoscaling_config__autoscaling_limits
type google_spanner_instance__autoscaling_config__autoscaling_targets
type google_spanner_instance__autoscaling_config
type google_spanner_instance__timeouts
type google_spanner_instance

val google_spanner_instance :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?num_nodes:float prop ->
  ?processing_units:float prop ->
  ?project:string prop ->
  ?timeouts:google_spanner_instance__timeouts ->
  config:string prop ->
  display_name:string prop ->
  autoscaling_config:google_spanner_instance__autoscaling_config list ->
  string ->
  unit
