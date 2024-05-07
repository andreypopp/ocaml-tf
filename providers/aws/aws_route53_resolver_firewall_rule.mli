(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_rule

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
  unit ->
  aws_route53_resolver_firewall_rule

val yojson_of_aws_route53_resolver_firewall_rule :
  aws_route53_resolver_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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

val make :
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
  t Tf_core.resource
