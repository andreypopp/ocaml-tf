(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type label

val label :
  ?description:string prop ->
  color:string prop ->
  name:string prop ->
  unit ->
  label

type github_issue_labels

val github_issue_labels :
  ?id:string prop ->
  repository:string prop ->
  label:label list ->
  unit ->
  github_issue_labels

val yojson_of_github_issue_labels : github_issue_labels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  label:label list ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  label:label list ->
  string ->
  t Tf_core.resource
