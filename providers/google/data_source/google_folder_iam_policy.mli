(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_folder_iam_policy

val google_folder_iam_policy :
  ?id:string prop ->
  folder:string prop ->
  unit ->
  google_folder_iam_policy

val yojson_of_google_folder_iam_policy :
  google_folder_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  folder:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  folder:string prop ->
  string ->
  t Tf_core.resource
