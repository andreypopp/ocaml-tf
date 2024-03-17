(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_endpoint__ip_address
type aws_route53_resolver_endpoint__timeouts
type aws_route53_resolver_endpoint

type t = private {
  arn : string prop;
  direction : string prop;
  host_vpc_id : string prop;
  id : string prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_type : string prop;
  security_group_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
