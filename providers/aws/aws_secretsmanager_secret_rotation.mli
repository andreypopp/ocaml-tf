(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rotation_rules

val rotation_rules :
  ?automatically_after_days:float prop ->
  ?duration:string prop ->
  ?schedule_expression:string prop ->
  unit ->
  rotation_rules

type aws_secretsmanager_secret_rotation

val aws_secretsmanager_secret_rotation :
  ?id:string prop ->
  ?rotate_immediately:bool prop ->
  ?rotation_lambda_arn:string prop ->
  secret_id:string prop ->
  rotation_rules:rotation_rules list ->
  unit ->
  aws_secretsmanager_secret_rotation

val yojson_of_aws_secretsmanager_secret_rotation :
  aws_secretsmanager_secret_rotation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  rotate_immediately : bool prop;
  rotation_enabled : bool prop;
  rotation_lambda_arn : string prop;
  secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rotate_immediately:bool prop ->
  ?rotation_lambda_arn:string prop ->
  secret_id:string prop ->
  rotation_rules:rotation_rules list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rotate_immediately:bool prop ->
  ?rotation_lambda_arn:string prop ->
  secret_id:string prop ->
  rotation_rules:rotation_rules list ->
  string ->
  t Tf_core.resource
