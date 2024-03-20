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

type google_service_account_iam_member

val google_service_account_iam_member :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  service_account_id:string prop ->
  condition:condition list ->
  unit ->
  google_service_account_iam_member

val yojson_of_google_service_account_iam_member :
  google_service_account_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  service_account_id:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  service_account_id:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
