(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
