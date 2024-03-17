(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_webhook__filter_group__filter
type aws_codebuild_webhook__filter_group
type aws_codebuild_webhook

type t = private {
  branch_filter : string prop;
  build_type : string prop;
  id : string prop;
  payload_url : string prop;
  project_name : string prop;
  secret : string prop;
  url : string prop;
}

val aws_codebuild_webhook :
  ?branch_filter:string prop ->
  ?build_type:string prop ->
  ?id:string prop ->
  project_name:string prop ->
  filter_group:aws_codebuild_webhook__filter_group list ->
  string ->
  t
