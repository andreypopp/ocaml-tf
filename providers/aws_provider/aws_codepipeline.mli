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

val aws_codepipeline :
  ?execution_mode:string ->
  ?pipeline_type:string ->
  ?tags:(string * string) list ->
  name:string ->
  role_arn:string ->
  artifact_store:aws_codepipeline__artifact_store list ->
  stage:aws_codepipeline__stage list ->
  trigger:aws_codepipeline__trigger list ->
  variable:aws_codepipeline__variable list ->
  string ->
  unit
