(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_vault_notifications

val aws_backup_vault_notifications :
  ?id:string prop ->
  backup_vault_events:string prop list ->
  backup_vault_name:string prop ->
  sns_topic_arn:string prop ->
  unit ->
  aws_backup_vault_notifications

val yojson_of_aws_backup_vault_notifications :
  aws_backup_vault_notifications -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_vault_arn : string prop;
  backup_vault_events : string list prop;
  backup_vault_name : string prop;
  id : string prop;
  sns_topic_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  backup_vault_events:string prop list ->
  backup_vault_name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  backup_vault_events:string prop list ->
  backup_vault_name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t Tf_core.resource
