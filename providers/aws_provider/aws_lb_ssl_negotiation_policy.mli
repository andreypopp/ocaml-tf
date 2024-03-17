(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_ssl_negotiation_policy__attribute
type aws_lb_ssl_negotiation_policy

val aws_lb_ssl_negotiation_policy :
  ?id:string ->
  ?triggers:(string * string) list ->
  lb_port:float ->
  load_balancer:string ->
  name:string ->
  attribute:aws_lb_ssl_negotiation_policy__attribute list ->
  string ->
  unit
