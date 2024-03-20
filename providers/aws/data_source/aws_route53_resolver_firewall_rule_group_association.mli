(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_rule_group_association

val aws_route53_resolver_firewall_rule_group_association :
  ?id:string prop ->
  firewall_rule_group_association_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_rule_group_association

val yojson_of_aws_route53_resolver_firewall_rule_group_association :
  aws_route53_resolver_firewall_rule_group_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  firewall_rule_group_association_id : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  managed_owner_name : string prop;
  modification_time : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
  status_message : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  firewall_rule_group_association_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  firewall_rule_group_association_id:string prop ->
  string ->
  t Tf_core.resource
