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

type google_secret_manager_secret_iam_member

val google_secret_manager_secret_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  secret_id:string prop ->
  unit ->
  google_secret_manager_secret_iam_member

val yojson_of_google_secret_manager_secret_iam_member :
  google_secret_manager_secret_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  secret_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  member:string prop ->
  role:string prop ->
  secret_id:string prop ->
  string ->
  t Tf_core.resource
