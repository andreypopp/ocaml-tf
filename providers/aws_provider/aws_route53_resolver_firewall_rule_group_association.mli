(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_firewall_rule_group_association

val aws_route53_resolver_firewall_rule_group_association :
  ?id:string ->
  ?mutation_protection:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  firewall_rule_group_id:string ->
  name:string ->
  priority:float ->
  vpc_id:string ->
  string ->
  unit
