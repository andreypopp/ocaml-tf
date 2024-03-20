(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_domain_list

val aws_route53_resolver_firewall_domain_list :
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_route53_resolver_firewall_domain_list

val yojson_of_aws_route53_resolver_firewall_domain_list :
  aws_route53_resolver_firewall_domain_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?domains:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
