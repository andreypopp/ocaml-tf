(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_proxy_protocol_policy

type t = private {
  id : string prop;
  instance_ports : string list prop;
  load_balancer : string prop;
}

val aws_proxy_protocol_policy :
  ?id:string prop ->
  instance_ports:string prop list ->
  load_balancer:string prop ->
  string ->
  t
