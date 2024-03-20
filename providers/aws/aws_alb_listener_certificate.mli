(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_alb_listener_certificate

val aws_alb_listener_certificate :
  ?id:string prop ->
  certificate_arn:string prop ->
  listener_arn:string prop ->
  unit ->
  aws_alb_listener_certificate

val yojson_of_aws_alb_listener_certificate :
  aws_alb_listener_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_arn : string prop;
  id : string prop;
  listener_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  certificate_arn:string prop ->
  listener_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  certificate_arn:string prop ->
  listener_arn:string prop ->
  string ->
  t Tf_core.resource
