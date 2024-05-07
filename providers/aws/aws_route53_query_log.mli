(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_query_log

val aws_route53_query_log :
  ?id:string prop ->
  cloudwatch_log_group_arn:string prop ->
  zone_id:string prop ->
  unit ->
  aws_route53_query_log

val yojson_of_aws_route53_query_log : aws_route53_query_log -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cloudwatch_log_group_arn : string prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cloudwatch_log_group_arn:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cloudwatch_log_group_arn:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
