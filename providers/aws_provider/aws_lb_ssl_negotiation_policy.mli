(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_ssl_negotiation_policy__attribute
type aws_lb_ssl_negotiation_policy

val aws_lb_ssl_negotiation_policy :
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  attribute:aws_lb_ssl_negotiation_policy__attribute list ->
  string ->
  unit
