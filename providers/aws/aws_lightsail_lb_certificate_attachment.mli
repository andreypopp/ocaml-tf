(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb_certificate_attachment

type t = private {
  certificate_name : string prop;
  id : string prop;
  lb_name : string prop;
}

val aws_lightsail_lb_certificate_attachment :
  ?id:string prop ->
  certificate_name:string prop ->
  lb_name:string prop ->
  string ->
  t
