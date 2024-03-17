(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault__timeouts
type aws_backup_vault

val aws_backup_vault :
  ?force_destroy:bool ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_backup_vault__timeouts ->
  name:string ->
  string ->
  unit
