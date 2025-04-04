(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_ip

val target_ip :
  ?port:float prop ->
  ?protocol:string prop ->
  ip:string prop ->
  unit ->
  target_ip

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_route53_resolver_rule

val aws_route53_resolver_rule :
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  rule_type:string prop ->
  target_ip:target_ip list ->
  unit ->
  aws_route53_resolver_rule

val yojson_of_aws_route53_resolver_rule :
  aws_route53_resolver_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  rule_type:string prop ->
  target_ip:target_ip list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_endpoint_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  rule_type:string prop ->
  target_ip:target_ip list ->
  string ->
  t Tf_core.resource
