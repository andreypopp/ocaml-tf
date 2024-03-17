(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb_attachment

type t = private {
  id : string prop;
  instance_name : string prop;
  lb_name : string prop;
}

val aws_lightsail_lb_attachment :
  ?id:string prop ->
  instance_name:string prop ->
  lb_name:string prop ->
  string ->
  t
