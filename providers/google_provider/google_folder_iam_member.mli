(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_member__condition
type google_folder_iam_member

val google_folder_iam_member :
  folder:string ->
  member:string ->
  role:string ->
  condition:google_folder_iam_member__condition list ->
  string ->
  unit
