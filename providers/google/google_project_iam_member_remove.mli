(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_project_iam_member_remove

val google_project_iam_member_remove :
  ?id:string prop ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  unit ->
  google_project_iam_member_remove

val yojson_of_google_project_iam_member_remove :
  google_project_iam_member_remove -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
