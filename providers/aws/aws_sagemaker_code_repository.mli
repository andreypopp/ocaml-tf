(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type git_config

val git_config :
  ?branch:string prop ->
  ?secret_arn:string prop ->
  repository_url:string prop ->
  unit ->
  git_config

type aws_sagemaker_code_repository

val aws_sagemaker_code_repository :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  code_repository_name:string prop ->
  git_config:git_config list ->
  unit ->
  aws_sagemaker_code_repository

val yojson_of_aws_sagemaker_code_repository :
  aws_sagemaker_code_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  code_repository_name : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  code_repository_name:string prop ->
  git_config:git_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  code_repository_name:string prop ->
  git_config:git_config list ->
  string ->
  t Tf_core.resource
