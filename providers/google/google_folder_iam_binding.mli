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

type google_folder_iam_binding

val google_folder_iam_binding :
  ?id:string prop ->
  folder:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_folder_iam_binding

val yojson_of_google_folder_iam_binding :
  google_folder_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  folder:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  folder:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
