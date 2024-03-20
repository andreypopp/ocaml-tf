(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rum_metrics_destination

val aws_rum_metrics_destination :
  ?destination_arn:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  app_monitor_name:string prop ->
  destination:string prop ->
  unit ->
  aws_rum_metrics_destination

val yojson_of_aws_rum_metrics_destination :
  aws_rum_metrics_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_monitor_name : string prop;
  destination : string prop;
  destination_arn : string prop;
  iam_role_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?destination_arn:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  app_monitor_name:string prop ->
  destination:string prop ->
  string ->
  t

val make :
  ?destination_arn:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  app_monitor_name:string prop ->
  destination:string prop ->
  string ->
  t Tf_core.resource
