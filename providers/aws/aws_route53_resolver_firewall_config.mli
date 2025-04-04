(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_firewall_config

val aws_route53_resolver_firewall_config :
  ?firewall_fail_open:string prop ->
  ?id:string prop ->
  resource_id:string prop ->
  unit ->
  aws_route53_resolver_firewall_config

val yojson_of_aws_route53_resolver_firewall_config :
  aws_route53_resolver_firewall_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  firewall_fail_open : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?firewall_fail_open:string prop ->
  ?id:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?firewall_fail_open:string prop ->
  ?id:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
