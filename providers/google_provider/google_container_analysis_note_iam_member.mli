(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_analysis_note_iam_member__condition
type google_container_analysis_note_iam_member

val google_container_analysis_note_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  note:string prop ->
  role:string prop ->
  condition:google_container_analysis_note_iam_member__condition list ->
  string ->
  unit
