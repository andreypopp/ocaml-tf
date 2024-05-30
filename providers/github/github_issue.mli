(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_issue

val github_issue :
  ?assignees:string prop list ->
  ?body:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?milestone_number:float prop ->
  repository:string prop ->
  title:string prop ->
  unit ->
  github_issue

val yojson_of_github_issue : github_issue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assignees : string list prop;
  body : string prop;
  etag : string prop;
  id : string prop;
  issue_id : float prop;
  labels : string list prop;
  milestone_number : float prop;
  number : float prop;
  repository : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assignees:string prop list ->
  ?body:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?milestone_number:float prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?assignees:string prop list ->
  ?body:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?milestone_number:float prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
