(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_notifications

val aws_backup_vault_notifications :
  backup_vault_events:string list ->
  backup_vault_name:string ->
  sns_topic_arn:string ->
  string ->
  unit
