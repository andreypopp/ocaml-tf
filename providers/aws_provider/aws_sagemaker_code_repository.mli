(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_code_repository__git_config
type aws_sagemaker_code_repository

val aws_sagemaker_code_repository :
  ?tags:(string * string) list ->
  code_repository_name:string ->
  git_config:aws_sagemaker_code_repository__git_config list ->
  string ->
  unit
