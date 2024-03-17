(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_firewall_rule_group_association

type t = private {
  arn : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_route53_resolver_firewall_rule_group_association :
  ?id:string prop ->
  ?mutation_protection:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  firewall_rule_group_id:string prop ->
  name:string prop ->
  priority:float prop ->
  vpc_id:string prop ->
  string ->
  t
