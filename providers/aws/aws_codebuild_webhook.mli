(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter_group__filter

val filter_group__filter :
  ?exclude_matched_pattern:bool prop ->
  pattern:string prop ->
  type_:string prop ->
  unit ->
  filter_group__filter

type filter_group

val filter_group :
  filter:filter_group__filter list -> unit -> filter_group

type aws_codebuild_webhook

val aws_codebuild_webhook :
  ?branch_filter:string prop ->
  ?build_type:string prop ->
  ?id:string prop ->
  project_name:string prop ->
  filter_group:filter_group list ->
  unit ->
  aws_codebuild_webhook

val yojson_of_aws_codebuild_webhook : aws_codebuild_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  branch_filter : string prop;
  build_type : string prop;
  id : string prop;
  payload_url : string prop;
  project_name : string prop;
  secret : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?branch_filter:string prop ->
  ?build_type:string prop ->
  ?id:string prop ->
  project_name:string prop ->
  filter_group:filter_group list ->
  string ->
  t

val make :
  ?branch_filter:string prop ->
  ?build_type:string prop ->
  ?id:string prop ->
  project_name:string prop ->
  filter_group:filter_group list ->
  string ->
  t Tf_core.resource
