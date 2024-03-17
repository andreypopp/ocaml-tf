(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_receipt_filter

type t = private {
  arn : string prop;
  cidr : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

val aws_ses_receipt_filter :
  ?id:string prop ->
  cidr:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t
