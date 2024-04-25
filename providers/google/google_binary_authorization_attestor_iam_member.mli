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

type google_binary_authorization_attestor_iam_member

val google_binary_authorization_attestor_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  attestor:string prop ->
  member:string prop ->
  role:string prop ->
  unit ->
  google_binary_authorization_attestor_iam_member

val yojson_of_google_binary_authorization_attestor_iam_member :
  google_binary_authorization_attestor_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  attestor:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  attestor:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
