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

type google_access_context_manager_access_policy_iam_member

val google_access_context_manager_access_policy_iam_member :
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  unit ->
  google_access_context_manager_access_policy_iam_member

val yojson_of_google_access_context_manager_access_policy_iam_member :
  google_access_context_manager_access_policy_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
