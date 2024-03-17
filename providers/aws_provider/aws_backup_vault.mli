(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault__timeouts
type aws_backup_vault

val aws_backup_vault :
  ?force_destroy:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_backup_vault__timeouts ->
  name:string ->
  string ->
  unit
