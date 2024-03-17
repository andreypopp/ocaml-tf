(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_metric_filter__metric_transformation
type aws_cloudwatch_log_metric_filter

type t = private {
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  pattern : string prop;
}

val aws_cloudwatch_log_metric_filter :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  pattern:string prop ->
  metric_transformation:
    aws_cloudwatch_log_metric_filter__metric_transformation list ->
  string ->
  t
