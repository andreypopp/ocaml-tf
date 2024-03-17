(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_static_ip

type t = private {
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  support_code : string prop;
}

val aws_lightsail_static_ip :
  ?id:string prop -> name:string prop -> string -> t
