(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_selection

val aws_backup_selection :
  ?id:string prop ->
  plan_id:string prop ->
  selection_id:string prop ->
  unit ->
  aws_backup_selection

val yojson_of_aws_backup_selection : aws_backup_selection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  resources : string list prop;
  selection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  plan_id:string prop ->
  selection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  plan_id:string prop ->
  selection_id:string prop ->
  string ->
  t Tf_core.resource
