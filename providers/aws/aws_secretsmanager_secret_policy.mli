(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_policy

type t = private {
  block_public_policy : bool prop;
  id : string prop;
  policy : string prop;
  secret_arn : string prop;
}

val aws_secretsmanager_secret_policy :
  ?block_public_policy:bool prop ->
  ?id:string prop ->
  policy:string prop ->
  secret_arn:string prop ->
  string ->
  t
