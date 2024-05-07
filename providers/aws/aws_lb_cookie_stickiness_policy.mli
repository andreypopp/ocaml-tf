(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lb_cookie_stickiness_policy

val aws_lb_cookie_stickiness_policy :
  ?cookie_expiration_period:float prop ->
  ?id:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  unit ->
  aws_lb_cookie_stickiness_policy

val yojson_of_aws_lb_cookie_stickiness_policy :
  aws_lb_cookie_stickiness_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cookie_expiration_period : float prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cookie_expiration_period:float prop ->
  ?id:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?cookie_expiration_period:float prop ->
  ?id:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
