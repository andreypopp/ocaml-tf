(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_firewall_config

type t = private {
  firewall_fail_open : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

val aws_route53_resolver_firewall_config :
  ?firewall_fail_open:string prop ->
  ?id:string prop ->
  resource_id:string prop ->
  string ->
  t
