(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_app_cookie_stickiness_policy

val aws_app_cookie_stickiness_policy :
  ?id:string prop ->
  cookie_name:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  unit ->
  aws_app_cookie_stickiness_policy

val yojson_of_aws_app_cookie_stickiness_policy :
  aws_app_cookie_stickiness_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cookie_name : string prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cookie_name:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cookie_name:string prop ->
  lb_port:float prop ->
  load_balancer:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
