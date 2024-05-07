(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_lb_attachment

val aws_lightsail_lb_attachment :
  ?id:string prop ->
  instance_name:string prop ->
  lb_name:string prop ->
  unit ->
  aws_lightsail_lb_attachment

val yojson_of_aws_lightsail_lb_attachment :
  aws_lightsail_lb_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_name : string prop;
  lb_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_name:string prop ->
  lb_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  instance_name:string prop ->
  lb_name:string prop ->
  string ->
  t Tf_core.resource
