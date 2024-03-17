(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb_https_redirection_policy

type t = private {
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

val aws_lightsail_lb_https_redirection_policy :
  ?id:string prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  string ->
  t
