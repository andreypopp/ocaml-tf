(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_cidr_collection

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  version : float prop;
}

val aws_route53_cidr_collection : name:string prop -> string -> t
