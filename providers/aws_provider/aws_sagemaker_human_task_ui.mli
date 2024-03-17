(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_human_task_ui__ui_template
type aws_sagemaker_human_task_ui

val aws_sagemaker_human_task_ui :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  human_task_ui_name:string ->
  ui_template:aws_sagemaker_human_task_ui__ui_template list ->
  string ->
  unit
