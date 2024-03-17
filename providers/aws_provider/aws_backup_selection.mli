(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_selection__condition__string_equals
type aws_backup_selection__condition__string_like
type aws_backup_selection__condition__string_not_equals
type aws_backup_selection__condition__string_not_like
type aws_backup_selection__condition
type aws_backup_selection__selection_tag
type aws_backup_selection

val aws_backup_selection :
  ?resources:string list ->
  iam_role_arn:string ->
  name:string ->
  plan_id:string ->
  condition:aws_backup_selection__condition list ->
  selection_tag:aws_backup_selection__selection_tag list ->
  string ->
  unit
