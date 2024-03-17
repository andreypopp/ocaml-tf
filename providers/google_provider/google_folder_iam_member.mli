(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_member__condition
type google_folder_iam_member

val google_folder_iam_member :
  ?id:string prop ->
  folder:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_folder_iam_member__condition list ->
  string ->
  unit
