(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ram_principal_association

type t = private {
  id : string prop;
  principal : string prop;
  resource_share_arn : string prop;
}

val aws_ram_principal_association :
  ?id:string prop ->
  principal:string prop ->
  resource_share_arn:string prop ->
  string ->
  t
