(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_domain

type t = private {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
}

val aws_lightsail_domain :
  ?id:string prop -> domain_name:string prop -> string -> t
