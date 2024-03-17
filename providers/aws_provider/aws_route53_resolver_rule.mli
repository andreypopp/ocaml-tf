(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_rule__target_ip
type aws_route53_resolver_rule__timeouts
type aws_route53_resolver_rule

val aws_route53_resolver_rule :
  ?id:string ->
  ?name:string ->
  ?resolver_endpoint_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_route53_resolver_rule__timeouts ->
  domain_name:string ->
  rule_type:string ->
  target_ip:aws_route53_resolver_rule__target_ip list ->
  string ->
  unit
