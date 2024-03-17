(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb_stickiness_policy

type t = private {
  cookie_duration : float prop;
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

val aws_lightsail_lb_stickiness_policy :
  ?id:string prop ->
  cookie_duration:float prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  string ->
  t
