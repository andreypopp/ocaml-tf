(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_project_iam_member

val google_project_iam_member :
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  unit ->
  google_project_iam_member

val yojson_of_google_project_iam_member :
  google_project_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
