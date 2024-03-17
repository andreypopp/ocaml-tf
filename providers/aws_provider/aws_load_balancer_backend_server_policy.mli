(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_load_balancer_backend_server_policy

val aws_load_balancer_backend_server_policy :
  ?id:string prop ->
  ?policy_names:string prop list ->
  instance_port:float prop ->
  load_balancer_name:string prop ->
  string ->
  unit
