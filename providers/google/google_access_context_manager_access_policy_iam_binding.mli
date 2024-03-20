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

type google_access_context_manager_access_policy_iam_binding

val google_access_context_manager_access_policy_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_access_context_manager_access_policy_iam_binding

val yojson_of_google_access_context_manager_access_policy_iam_binding :
  google_access_context_manager_access_policy_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  name : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
