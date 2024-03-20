(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition__string_equals

val condition__string_equals :
  key:string prop ->
  value:string prop ->
  unit ->
  condition__string_equals

type condition__string_like

val condition__string_like :
  key:string prop ->
  value:string prop ->
  unit ->
  condition__string_like

type condition__string_not_equals

val condition__string_not_equals :
  key:string prop ->
  value:string prop ->
  unit ->
  condition__string_not_equals

type condition__string_not_like

val condition__string_not_like :
  key:string prop ->
  value:string prop ->
  unit ->
  condition__string_not_like

type condition

val condition :
  string_equals:condition__string_equals list ->
  string_like:condition__string_like list ->
  string_not_equals:condition__string_not_equals list ->
  string_not_like:condition__string_not_like list ->
  unit ->
  condition

type selection_tag

val selection_tag :
  key:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  selection_tag

type aws_backup_selection

val aws_backup_selection :
  ?id:string prop ->
  ?not_resources:string prop list ->
  ?resources:string prop list ->
  iam_role_arn:string prop ->
  name:string prop ->
  plan_id:string prop ->
  condition:condition list ->
  selection_tag:selection_tag list ->
  unit ->
  aws_backup_selection

val yojson_of_aws_backup_selection : aws_backup_selection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  not_resources : string list prop;
  plan_id : string prop;
  resources : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?not_resources:string prop list ->
  ?resources:string prop list ->
  iam_role_arn:string prop ->
  name:string prop ->
  plan_id:string prop ->
  condition:condition list ->
  selection_tag:selection_tag list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?not_resources:string prop list ->
  ?resources:string prop list ->
  iam_role_arn:string prop ->
  name:string prop ->
  plan_id:string prop ->
  condition:condition list ->
  selection_tag:selection_tag list ->
  string ->
  t Tf_core.resource
