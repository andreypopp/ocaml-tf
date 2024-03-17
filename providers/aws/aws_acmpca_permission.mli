(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_permission

type t = private {
  actions : string list prop;
  certificate_authority_arn : string prop;
  id : string prop;
  policy : string prop;
  principal : string prop;
  source_account : string prop;
}

val aws_acmpca_permission :
  ?id:string prop ->
  ?source_account:string prop ->
  actions:string prop list ->
  certificate_authority_arn:string prop ->
  principal:string prop ->
  string ->
  t
