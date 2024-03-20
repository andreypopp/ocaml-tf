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

type google_sourcerepo_repository_iam_member

val google_sourcerepo_repository_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  repository:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_sourcerepo_repository_iam_member

val yojson_of_google_sourcerepo_repository_iam_member :
  google_sourcerepo_repository_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  repository : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  repository:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  repository:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
