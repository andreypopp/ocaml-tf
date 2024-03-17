(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_resource_policy

type t = private {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

val aws_kinesis_resource_policy :
  policy:string prop -> resource_arn:string prop -> string -> t
