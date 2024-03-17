(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline__artifact_store__encryption_key
type aws_codepipeline__artifact_store
type aws_codepipeline__stage__action
type aws_codepipeline__stage

type aws_codepipeline__trigger__git_configuration__pull_request__branches

type aws_codepipeline__trigger__git_configuration__pull_request__file_paths

type aws_codepipeline__trigger__git_configuration__pull_request
type aws_codepipeline__trigger__git_configuration__push__branches
type aws_codepipeline__trigger__git_configuration__push__file_paths
type aws_codepipeline__trigger__git_configuration__push__tags
type aws_codepipeline__trigger__git_configuration__push
type aws_codepipeline__trigger__git_configuration
type aws_codepipeline__trigger
type aws_codepipeline__variable
type aws_codepipeline

type t = private {
  arn : string prop;
  execution_mode : string prop;
  id : string prop;
  name : string prop;
  pipeline_type : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_codepipeline :
  ?execution_mode:string prop ->
  ?id:string prop ->
  ?pipeline_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arn:string prop ->
  artifact_store:aws_codepipeline__artifact_store list ->
  stage:aws_codepipeline__stage list ->
  trigger:aws_codepipeline__trigger list ->
  variable:aws_codepipeline__variable list ->
  string ->
  t
