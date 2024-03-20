(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_route53_resolver_rule_association

val aws_route53_resolver_rule_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resolver_rule_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_route53_resolver_rule_association

val yojson_of_aws_route53_resolver_rule_association :
  aws_route53_resolver_rule_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  resolver_rule_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resolver_rule_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resolver_rule_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
