(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_backup_vault_policy

val aws_backup_vault_policy :
  ?id:string prop ->
  backup_vault_name:string prop ->
  policy:string prop ->
  unit ->
  aws_backup_vault_policy

val yojson_of_aws_backup_vault_policy :
  aws_backup_vault_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  backup_vault_name:string prop ->
  policy:string prop ->
  string ->
  t
