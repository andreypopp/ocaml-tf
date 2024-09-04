(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_rule_group_association

val aws_route53_resolver_firewall_rule_group_association :
  ?id:string prop ->
  ?mutation_protection:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  firewall_rule_group_id:string prop ->
  name:string prop ->
  priority:float prop ->
  vpc_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_rule_group_association

val yojson_of_aws_route53_resolver_firewall_rule_group_association :
  aws_route53_resolver_firewall_rule_group_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mutation_protection:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  firewall_rule_group_id:string prop ->
  name:string prop ->
  priority:float prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mutation_protection:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  firewall_rule_group_id:string prop ->
  name:string prop ->
  priority:float prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
