(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_vault_lock_configuration

val aws_backup_vault_lock_configuration :
  ?changeable_for_days:float prop ->
  ?id:string prop ->
  ?max_retention_days:float prop ->
  ?min_retention_days:float prop ->
  backup_vault_name:string prop ->
  unit ->
  aws_backup_vault_lock_configuration

val yojson_of_aws_backup_vault_lock_configuration :
  aws_backup_vault_lock_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  changeable_for_days : float prop;
  id : string prop;
  max_retention_days : float prop;
  min_retention_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?changeable_for_days:float prop ->
  ?id:string prop ->
  ?max_retention_days:float prop ->
  ?min_retention_days:float prop ->
  backup_vault_name:string prop ->
  string ->
  t

val make :
  ?changeable_for_days:float prop ->
  ?id:string prop ->
  ?max_retention_days:float prop ->
  ?min_retention_days:float prop ->
  backup_vault_name:string prop ->
  string ->
  t Tf_core.resource
