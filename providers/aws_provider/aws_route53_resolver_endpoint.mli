(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_endpoint__ip_address
type aws_route53_resolver_endpoint__timeouts
type aws_route53_resolver_endpoint

val aws_route53_resolver_endpoint :
  ?name:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_route53_resolver_endpoint__timeouts ->
  direction:string ->
  security_group_ids:string list ->
  ip_address:aws_route53_resolver_endpoint__ip_address list ->
  string ->
  unit
