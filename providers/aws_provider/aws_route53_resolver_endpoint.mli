(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_endpoint__ip_address
type aws_route53_resolver_endpoint__timeouts
type aws_route53_resolver_endpoint

val aws_route53_resolver_endpoint :
  ?id:string prop ->
  ?name:string prop ->
  ?protocols:string prop list ->
  ?resolver_endpoint_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53_resolver_endpoint__timeouts ->
  direction:string prop ->
  security_group_ids:string prop list ->
  ip_address:aws_route53_resolver_endpoint__ip_address list ->
  string ->
  unit
