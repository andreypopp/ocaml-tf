(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type labels = {
  color : string prop;  (** color *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  url : string prop;  (** url *)
}

type github_issue_labels

val github_issue_labels :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_issue_labels

val yojson_of_github_issue_labels : github_issue_labels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  labels : labels list prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
