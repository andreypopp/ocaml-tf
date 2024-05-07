(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup_policy

val backup_policy : status:string prop -> unit -> backup_policy

type aws_efs_backup_policy

val aws_efs_backup_policy :
  ?id:string prop ->
  file_system_id:string prop ->
  backup_policy:backup_policy list ->
  unit ->
  aws_efs_backup_policy

val yojson_of_aws_efs_backup_policy : aws_efs_backup_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  file_system_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  file_system_id:string prop ->
  backup_policy:backup_policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  file_system_id:string prop ->
  backup_policy:backup_policy list ->
  string ->
  t Tf_core.resource
