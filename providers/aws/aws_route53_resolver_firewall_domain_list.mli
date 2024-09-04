(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_domain_list

val aws_route53_resolver_firewall_domain_list :
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_route53_resolver_firewall_domain_list

val yojson_of_aws_route53_resolver_firewall_domain_list :
  aws_route53_resolver_firewall_domain_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
