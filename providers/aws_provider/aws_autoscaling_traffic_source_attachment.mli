(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_traffic_source_attachment__timeouts
type aws_autoscaling_traffic_source_attachment__traffic_source
type aws_autoscaling_traffic_source_attachment

val aws_autoscaling_traffic_source_attachment :
  ?id:string ->
  ?timeouts:aws_autoscaling_traffic_source_attachment__timeouts ->
  autoscaling_group_name:string ->
  traffic_source:
    aws_autoscaling_traffic_source_attachment__traffic_source list ->
  string ->
  unit
