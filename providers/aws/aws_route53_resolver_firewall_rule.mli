(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_firewall_rule

type t = private {
  action : string prop;
  block_override_dns_type : string prop;
  block_override_domain : string prop;
  block_override_ttl : float prop;
  block_response : string prop;
  firewall_domain_list_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

val aws_route53_resolver_firewall_rule :
  ?block_override_dns_type:string prop ->
  ?block_override_domain:string prop ->
  ?block_override_ttl:float prop ->
  ?block_response:string prop ->
  ?id:string prop ->
  action:string prop ->
  firewall_domain_list_id:string prop ->
  firewall_rule_group_id:string prop ->
  name:string prop ->
  priority:float prop ->
  string ->
  t
