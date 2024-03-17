(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_note_iam_binding__condition
type google_container_analysis_note_iam_binding

val google_container_analysis_note_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  note:string prop ->
  role:string prop ->
  condition:
    google_container_analysis_note_iam_binding__condition list ->
  string ->
  unit
