(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_lb_https_redirection_policy

val aws_lightsail_lb_https_redirection_policy :
  ?id:string prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  unit ->
  aws_lightsail_lb_https_redirection_policy

val yojson_of_aws_lightsail_lb_https_redirection_policy :
  aws_lightsail_lb_https_redirection_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  enabled:bool prop ->
  lb_name:string prop ->
  string ->
  t Tf_core.resource
