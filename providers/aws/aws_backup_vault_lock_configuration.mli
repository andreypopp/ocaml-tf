(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_lock_configuration

type t = private {
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  changeable_for_days : float prop;
  id : string prop;
  max_retention_days : float prop;
  min_retention_days : float prop;
}

val aws_backup_vault_lock_configuration :
  ?changeable_for_days:float prop ->
  ?id:string prop ->
  ?max_retention_days:float prop ->
  ?min_retention_days:float prop ->
  backup_vault_name:string prop ->
  string ->
  t
