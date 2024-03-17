(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ce_anomaly_monitor

val aws_ce_anomaly_monitor :
  ?monitor_dimension:string ->
  ?monitor_specification:string ->
  ?tags:(string * string) list ->
  monitor_type:string ->
  name:string ->
  string ->
  unit
