(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ram_resource_association

type t = private {
  id : string prop;
  resource_arn : string prop;
  resource_share_arn : string prop;
}

val aws_ram_resource_association :
  ?id:string prop ->
  resource_arn:string prop ->
  resource_share_arn:string prop ->
  string ->
  t
