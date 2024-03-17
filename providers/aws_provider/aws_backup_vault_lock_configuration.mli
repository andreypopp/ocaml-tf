(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_lock_configuration

val aws_backup_vault_lock_configuration :
  ?changeable_for_days:float prop ->
  ?id:string prop ->
  ?max_retention_days:float prop ->
  ?min_retention_days:float prop ->
  backup_vault_name:string prop ->
  string ->
  unit
