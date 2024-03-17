(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_load_balancer_listener_policy

type t = private {
  id : string prop;
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string list prop;
  triggers : (string * string) list prop;
}

val aws_load_balancer_listener_policy :
  ?id:string prop ->
  ?policy_names:string prop list ->
  ?triggers:(string * string prop) list ->
  load_balancer_name:string prop ->
  load_balancer_port:float prop ->
  string ->
  t
