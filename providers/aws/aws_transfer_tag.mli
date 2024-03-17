(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_tag

type t = private {
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

val aws_transfer_tag :
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  string ->
  t
