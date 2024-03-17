(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_note_iam_binding__condition
type google_container_analysis_note_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  note : string prop;
  project : string prop;
  role : string prop;
}

val google_container_analysis_note_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  note:string prop ->
  role:string prop ->
  condition:
    google_container_analysis_note_iam_binding__condition list ->
  string ->
  t
