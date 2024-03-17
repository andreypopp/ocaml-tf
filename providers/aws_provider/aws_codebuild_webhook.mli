(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_webhook__filter_group__filter
type aws_codebuild_webhook__filter_group
type aws_codebuild_webhook

val aws_codebuild_webhook :
  ?branch_filter:string prop ->
  ?build_type:string prop ->
  ?id:string prop ->
  project_name:string prop ->
  filter_group:aws_codebuild_webhook__filter_group list ->
  string ->
  unit
