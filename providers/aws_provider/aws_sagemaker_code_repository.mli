(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_code_repository__git_config
type aws_sagemaker_code_repository

val aws_sagemaker_code_repository :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  code_repository_name:string prop ->
  git_config:aws_sagemaker_code_repository__git_config list ->
  string ->
  unit
