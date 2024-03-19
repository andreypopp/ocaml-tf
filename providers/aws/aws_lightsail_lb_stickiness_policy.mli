(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_lightsail_lb_stickiness_policy

val aws_lightsail_lb_stickiness_policy :
  ?id:string prop ->
  cookie_duration:float prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  unit ->
  aws_lightsail_lb_stickiness_policy

val yojson_of_aws_lightsail_lb_stickiness_policy :
  aws_lightsail_lb_stickiness_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cookie_duration : float prop;
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cookie_duration:float prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  string ->
  t
