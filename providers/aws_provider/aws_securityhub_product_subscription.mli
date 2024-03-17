(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_product_subscription

type t = private {
  arn : string prop;
  id : string prop;
  product_arn : string prop;
}

val aws_securityhub_product_subscription :
  ?id:string prop -> product_arn:string prop -> string -> t
