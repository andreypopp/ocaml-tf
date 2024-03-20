(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_route53_resolver_endpoint

val aws_route53_resolver_endpoint :
  ?id:string prop ->
  ?resolver_endpoint_id:string prop ->
  filter:filter list ->
  unit ->
  aws_route53_resolver_endpoint

val yojson_of_aws_route53_resolver_endpoint :
  aws_route53_resolver_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  direction : string prop;
  id : string prop;
  ip_addresses : string list prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_id : string prop;
  resolver_endpoint_type : string prop;
  status : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resolver_endpoint_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resolver_endpoint_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
