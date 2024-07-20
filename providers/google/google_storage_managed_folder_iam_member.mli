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

type google_storage_managed_folder_iam_member

val google_storage_managed_folder_iam_member :
  ?id:string prop ->
  ?condition:condition list ->
  bucket:string prop ->
  managed_folder:string prop ->
  member:string prop ->
  role:string prop ->
  unit ->
  google_storage_managed_folder_iam_member

val yojson_of_google_storage_managed_folder_iam_member :
  google_storage_managed_folder_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  etag : string prop;
  id : string prop;
  managed_folder : string prop;
  member : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?condition:condition list ->
  bucket:string prop ->
  managed_folder:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?condition:condition list ->
  bucket:string prop ->
  managed_folder:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
