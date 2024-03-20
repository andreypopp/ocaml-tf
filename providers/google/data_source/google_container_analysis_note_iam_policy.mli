(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_analysis_note_iam_policy

val google_container_analysis_note_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  note:string prop ->
  unit ->
  google_container_analysis_note_iam_policy

val yojson_of_google_container_analysis_note_iam_policy :
  google_container_analysis_note_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  note : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  note:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  note:string prop ->
  string ->
  t Tf_core.resource
