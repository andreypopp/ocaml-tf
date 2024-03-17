(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_listener_certificate

type t = private {
  certificate_arn : string prop;
  id : string prop;
  listener_arn : string prop;
}

val aws_alb_listener_certificate :
  ?id:string prop ->
  certificate_arn:string prop ->
  listener_arn:string prop ->
  string ->
  t
