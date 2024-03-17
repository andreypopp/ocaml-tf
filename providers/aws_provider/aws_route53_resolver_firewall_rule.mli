(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_firewall_rule

val aws_route53_resolver_firewall_rule :
  ?block_override_dns_type:string ->
  ?block_override_domain:string ->
  ?block_override_ttl:float ->
  ?block_response:string ->
  ?id:string ->
  action:string ->
  firewall_domain_list_id:string ->
  firewall_rule_group_id:string ->
  name:string ->
  priority:float ->
  string ->
  unit
