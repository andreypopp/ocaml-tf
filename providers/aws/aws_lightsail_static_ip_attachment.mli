(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_static_ip_attachment

type t = private {
  id : string prop;
  instance_name : string prop;
  ip_address : string prop;
  static_ip_name : string prop;
}

val aws_lightsail_static_ip_attachment :
  ?id:string prop ->
  instance_name:string prop ->
  static_ip_name:string prop ->
  string ->
  t
