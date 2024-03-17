(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_rotation__rotation_rules
type aws_secretsmanager_secret_rotation

val aws_secretsmanager_secret_rotation :
  ?id:string ->
  ?rotate_immediately:bool ->
  ?rotation_lambda_arn:string ->
  secret_id:string ->
  rotation_rules:
    aws_secretsmanager_secret_rotation__rotation_rules list ->
  string ->
  unit
