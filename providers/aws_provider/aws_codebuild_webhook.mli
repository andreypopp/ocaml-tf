(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_webhook__filter_group__filter
type aws_codebuild_webhook__filter_group
type aws_codebuild_webhook

val aws_codebuild_webhook :
  ?branch_filter:string ->
  ?build_type:string ->
  project_name:string ->
  filter_group:aws_codebuild_webhook__filter_group list ->
  string ->
  unit
