(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_metric_descriptor__labels
type google_monitoring_metric_descriptor__metadata
type google_monitoring_metric_descriptor__timeouts
type google_monitoring_metric_descriptor

val google_monitoring_metric_descriptor :
  ?id:string prop ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?unit:string prop ->
  ?timeouts:google_monitoring_metric_descriptor__timeouts ->
  description:string prop ->
  display_name:string prop ->
  metric_kind:string prop ->
  type_:string prop ->
  value_type:string prop ->
  labels:google_monitoring_metric_descriptor__labels list ->
  metadata:google_monitoring_metric_descriptor__metadata list ->
  string ->
  unit
