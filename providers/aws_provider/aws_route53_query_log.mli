(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_query_log

val aws_route53_query_log :
  ?id:string prop ->
  cloudwatch_log_group_arn:string prop ->
  zone_id:string prop ->
  string ->
  unit
