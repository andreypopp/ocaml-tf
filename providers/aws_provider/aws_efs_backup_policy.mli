(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_backup_policy__backup_policy
type aws_efs_backup_policy

val aws_efs_backup_policy :
  ?id:string prop ->
  file_system_id:string prop ->
  backup_policy:aws_efs_backup_policy__backup_policy list ->
  string ->
  unit
