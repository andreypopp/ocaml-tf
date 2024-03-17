(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_app_cookie_stickiness_policy

type t = private {
  cookie_name : string prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

val aws_app_cookie_stickiness_policy :
  ?id:string prop ->
  cookie_name:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  t
