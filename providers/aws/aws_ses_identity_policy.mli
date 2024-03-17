(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_identity_policy

type t = private {
  id : string prop;
  identity : string prop;
  name : string prop;
  policy : string prop;
}

val aws_ses_identity_policy :
  ?id:string prop ->
  identity:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t
