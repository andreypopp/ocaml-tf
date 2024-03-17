(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_policy

type t = private {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

val aws_acmpca_policy :
  ?id:string prop ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t
