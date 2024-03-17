(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rum_metrics_destination

type t = private {
  app_monitor_name : string prop;
  destination : string prop;
  destination_arn : string prop;
  iam_role_arn : string prop;
  id : string prop;
}

val aws_rum_metrics_destination :
  ?destination_arn:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  app_monitor_name:string prop ->
  destination:string prop ->
  string ->
  t
