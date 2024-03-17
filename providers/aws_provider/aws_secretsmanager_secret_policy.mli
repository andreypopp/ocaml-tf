(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_policy

val aws_secretsmanager_secret_policy :
  ?block_public_policy:bool ->
  ?id:string ->
  policy:string ->
  secret_arn:string ->
  string ->
  unit
