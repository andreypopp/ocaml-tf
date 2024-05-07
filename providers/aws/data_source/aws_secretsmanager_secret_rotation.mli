(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rotation_rules = {
  automatically_after_days : float prop;
      (** automatically_after_days *)
  duration : string prop;  (** duration *)
  schedule_expression : string prop;  (** schedule_expression *)
}

type aws_secretsmanager_secret_rotation

val aws_secretsmanager_secret_rotation :
  ?id:string prop ->
  secret_id:string prop ->
  unit ->
  aws_secretsmanager_secret_rotation

val yojson_of_aws_secretsmanager_secret_rotation :
  aws_secretsmanager_secret_rotation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  rotation_enabled : bool prop;
  rotation_lambda_arn : string prop;
  rotation_rules : rotation_rules list prop;
  secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  secret_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  secret_id:string prop ->
  string ->
  t Tf_core.resource
