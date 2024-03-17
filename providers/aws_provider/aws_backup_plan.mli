(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_plan__advanced_backup_setting
type aws_backup_plan__rule__copy_action__lifecycle
type aws_backup_plan__rule__copy_action
type aws_backup_plan__rule__lifecycle
type aws_backup_plan__rule
type aws_backup_plan

val aws_backup_plan :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  advanced_backup_setting:
    aws_backup_plan__advanced_backup_setting list ->
  rule:aws_backup_plan__rule list ->
  string ->
  unit
