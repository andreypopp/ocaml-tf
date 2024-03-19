(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_secretsmanager_secret_policy

val aws_secretsmanager_secret_policy :
  ?block_public_policy:bool prop ->
  ?id:string prop ->
  policy:string prop ->
  secret_arn:string prop ->
  unit ->
  aws_secretsmanager_secret_policy

val yojson_of_aws_secretsmanager_secret_policy :
  aws_secretsmanager_secret_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  block_public_policy : bool prop;
  id : string prop;
  policy : string prop;
  secret_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?block_public_policy:bool prop ->
  ?id:string prop ->
  policy:string prop ->
  secret_arn:string prop ->
  string ->
  t
