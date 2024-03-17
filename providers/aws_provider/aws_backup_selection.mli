(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_selection__condition__string_equals
type aws_backup_selection__condition__string_like
type aws_backup_selection__condition__string_not_equals
type aws_backup_selection__condition__string_not_like
type aws_backup_selection__condition
type aws_backup_selection__selection_tag
type aws_backup_selection

type t = private {
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  not_resources : string list prop;
  plan_id : string prop;
  resources : string list prop;
}

val aws_backup_selection :
  ?id:string prop ->
  ?not_resources:string prop list ->
  ?resources:string prop list ->
  iam_role_arn:string prop ->
  name:string prop ->
  plan_id:string prop ->
  condition:aws_backup_selection__condition list ->
  selection_tag:aws_backup_selection__selection_tag list ->
  string ->
  t
