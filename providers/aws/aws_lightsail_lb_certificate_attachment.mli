(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_lb_certificate_attachment

val aws_lightsail_lb_certificate_attachment :
  ?id:string prop ->
  certificate_name:string prop ->
  lb_name:string prop ->
  unit ->
  aws_lightsail_lb_certificate_attachment

val yojson_of_aws_lightsail_lb_certificate_attachment :
  aws_lightsail_lb_certificate_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_name : string prop;
  id : string prop;
  lb_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  certificate_name:string prop ->
  lb_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  certificate_name:string prop ->
  lb_name:string prop ->
  string ->
  t Tf_core.resource
