(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ui_template

val ui_template : ?content:string prop -> unit -> ui_template

type aws_sagemaker_human_task_ui

val aws_sagemaker_human_task_ui :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  human_task_ui_name:string prop ->
  ui_template:ui_template list ->
  unit ->
  aws_sagemaker_human_task_ui

val yojson_of_aws_sagemaker_human_task_ui :
  aws_sagemaker_human_task_ui -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  human_task_ui_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  human_task_ui_name:string prop ->
  ui_template:ui_template list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  human_task_ui_name:string prop ->
  ui_template:ui_template list ->
  string ->
  t Tf_core.resource
