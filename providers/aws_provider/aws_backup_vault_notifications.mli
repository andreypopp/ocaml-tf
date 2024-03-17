(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault_notifications

type t = private {
  backup_vault_arn : string prop;
  backup_vault_events : string list prop;
  backup_vault_name : string prop;
  id : string prop;
  sns_topic_arn : string prop;
}

val aws_backup_vault_notifications :
  ?id:string prop ->
  backup_vault_events:string prop list ->
  backup_vault_name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t
