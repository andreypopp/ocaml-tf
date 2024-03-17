(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_cookie_stickiness_policy

val aws_lb_cookie_stickiness_policy :
  ?cookie_expiration_period:float prop ->
  ?id:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  unit
