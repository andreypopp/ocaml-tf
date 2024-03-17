(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_load_balancer_listener_policy

val aws_load_balancer_listener_policy :
  ?id:string ->
  ?policy_names:string list ->
  ?triggers:(string * string) list ->
  load_balancer_name:string ->
  load_balancer_port:float ->
  string ->
  unit
