(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_rule__target_ip
type aws_route53_resolver_rule__timeouts
type aws_route53_resolver_rule

type t = private {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_route53_resolver_rule :
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53_resolver_rule__timeouts ->
  domain_name:string prop ->
  rule_type:string prop ->
  target_ip:aws_route53_resolver_rule__target_ip list ->
  string ->
  t
