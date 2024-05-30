(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_issue_label

val github_issue_label :
  ?description:string prop ->
  ?id:string prop ->
  color:string prop ->
  name:string prop ->
  repository:string prop ->
  unit ->
  github_issue_label

val yojson_of_github_issue_label : github_issue_label -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  color : string prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  repository : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  color:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  color:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
