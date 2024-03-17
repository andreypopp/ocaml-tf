(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_metric_descriptor__labels
type google_monitoring_metric_descriptor__metadata
type google_monitoring_metric_descriptor__timeouts
type google_monitoring_metric_descriptor

val google_monitoring_metric_descriptor :
  ?id:string ->
  ?launch_stage:string ->
  ?project:string ->
  ?unit:string ->
  ?timeouts:google_monitoring_metric_descriptor__timeouts ->
  description:string ->
  display_name:string ->
  metric_kind:string ->
  type_:string ->
  value_type:string ->
  labels:google_monitoring_metric_descriptor__labels list ->
  metadata:google_monitoring_metric_descriptor__metadata list ->
  string ->
  unit
