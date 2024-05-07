(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metric_transformation

val metric_transformation :
  ?default_value:string prop ->
  ?dimensions:(string * string prop) list ->
  ?unit:string prop ->
  name:string prop ->
  namespace:string prop ->
  value:string prop ->
  unit ->
  metric_transformation

type aws_cloudwatch_log_metric_filter

val aws_cloudwatch_log_metric_filter :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  pattern:string prop ->
  metric_transformation:metric_transformation list ->
  unit ->
  aws_cloudwatch_log_metric_filter

val yojson_of_aws_cloudwatch_log_metric_filter :
  aws_cloudwatch_log_metric_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  pattern : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  pattern:string prop ->
  metric_transformation:metric_transformation list ->
  string ->
  t

val make :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  pattern:string prop ->
  metric_transformation:metric_transformation list ->
  string ->
  t Tf_core.resource
