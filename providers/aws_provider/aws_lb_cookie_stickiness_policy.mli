(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_cookie_stickiness_policy

val aws_lb_cookie_stickiness_policy :
  ?cookie_expiration_period:float ->
  ?id:string ->
  lb_port:float ->
  load_balancer:string ->
  name:string ->
  string ->
  unit
