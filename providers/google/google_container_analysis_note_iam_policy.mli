(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_note_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  note : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_container_analysis_note_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  note:string prop ->
  policy_data:string prop ->
  string ->
  t
