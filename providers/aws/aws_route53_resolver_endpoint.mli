(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_address

val ip_address :
  ?ip:string prop -> subnet_id:string prop -> unit -> ip_address

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_route53_resolver_endpoint

val aws_route53_resolver_endpoint :
  ?id:string prop ->
  ?name:string prop ->
  ?protocols:string prop list ->
  ?resolver_endpoint_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  direction:string prop ->
  security_group_ids:string prop list ->
  ip_address:ip_address list ->
  unit ->
  aws_route53_resolver_endpoint

val yojson_of_aws_route53_resolver_endpoint :
  aws_route53_resolver_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  direction : string prop;
  host_vpc_id : string prop;
  id : string prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_type : string prop;
  security_group_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?protocols:string prop list ->
  ?resolver_endpoint_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  direction:string prop ->
  security_group_ids:string prop list ->
  ip_address:ip_address list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?protocols:string prop list ->
  ?resolver_endpoint_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  direction:string prop ->
  security_group_ids:string prop list ->
  ip_address:ip_address list ->
  string ->
  t Tf_core.resource
