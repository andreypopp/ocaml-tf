(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attribute

val attribute :
  name:string prop -> value:string prop -> unit -> attribute

type aws_lb_ssl_negotiation_policy

val aws_lb_ssl_negotiation_policy :
  ?id:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  attribute:attribute list ->
  unit ->
  aws_lb_ssl_negotiation_policy

val yojson_of_aws_lb_ssl_negotiation_policy :
  aws_lb_ssl_negotiation_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
  triggers : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  attribute:attribute list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  attribute:attribute list ->
  string ->
  t Tf_core.resource
