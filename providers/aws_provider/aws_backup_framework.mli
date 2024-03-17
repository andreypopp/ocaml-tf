(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_framework__control__input_parameter
type aws_backup_framework__control__scope
type aws_backup_framework__control
type aws_backup_framework__timeouts
type aws_backup_framework

val aws_backup_framework :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_backup_framework__timeouts ->
  name:string ->
  control:aws_backup_framework__control list ->
  string ->
  unit
