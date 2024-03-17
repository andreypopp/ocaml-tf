(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault__timeouts
type aws_backup_vault

val aws_backup_vault :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_backup_vault__timeouts ->
  name:string prop ->
  string ->
  unit
