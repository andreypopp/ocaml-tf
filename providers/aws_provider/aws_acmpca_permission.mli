(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_permission

val aws_acmpca_permission :
  ?id:string prop ->
  ?source_account:string prop ->
  actions:string prop list ->
  certificate_authority_arn:string prop ->
  principal:string prop ->
  string ->
  unit
