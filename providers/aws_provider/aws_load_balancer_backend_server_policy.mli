(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_load_balancer_backend_server_policy

type t = private {
  id : string prop;
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string list prop;
}

val aws_load_balancer_backend_server_policy :
  ?id:string prop ->
  ?policy_names:string prop list ->
  instance_port:float prop ->
  load_balancer_name:string prop ->
  string ->
  t
