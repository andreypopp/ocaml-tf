(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_dashboard

type t = private {
  dashboard_arn : string prop;
  dashboard_body : string prop;
  dashboard_name : string prop;
  id : string prop;
}

val aws_cloudwatch_dashboard :
  ?id:string prop ->
  dashboard_body:string prop ->
  dashboard_name:string prop ->
  string ->
  t
