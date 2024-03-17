(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_policy

type t = private {
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  id : string prop;
  policy : string prop;
}

val aws_backup_vault_policy :
  ?id:string prop ->
  backup_vault_name:string prop ->
  policy:string prop ->
  string ->
  t
