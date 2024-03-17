(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_rule_association__timeouts
type aws_route53_resolver_rule_association

val aws_route53_resolver_rule_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:aws_route53_resolver_rule_association__timeouts ->
  resolver_rule_id:string prop ->
  vpc_id:string prop ->
  string ->
  unit
