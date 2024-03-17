(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ce_anomaly_monitor

val aws_ce_anomaly_monitor :
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  monitor_type:string prop ->
  name:string prop ->
  string ->
  unit
