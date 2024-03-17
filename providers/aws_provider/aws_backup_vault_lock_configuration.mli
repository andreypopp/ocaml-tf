(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_lock_configuration

val aws_backup_vault_lock_configuration :
  ?changeable_for_days:float ->
  ?max_retention_days:float ->
  ?min_retention_days:float ->
  backup_vault_name:string ->
  string ->
  unit
