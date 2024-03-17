(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_rotation__rotation_rules
type aws_secretsmanager_secret_rotation

val aws_secretsmanager_secret_rotation :
  ?id:string prop ->
  ?rotate_immediately:bool prop ->
  ?rotation_lambda_arn:string prop ->
  secret_id:string prop ->
  rotation_rules:
    aws_secretsmanager_secret_rotation__rotation_rules list ->
  string ->
  unit
