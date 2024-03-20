(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_static_ip

val aws_lightsail_static_ip :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_lightsail_static_ip

val yojson_of_aws_lightsail_static_ip :
  aws_lightsail_static_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  support_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
