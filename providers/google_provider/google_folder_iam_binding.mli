(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_binding__condition
type google_folder_iam_binding

val google_folder_iam_binding :
  folder:string ->
  members:string list ->
  role:string ->
  condition:google_folder_iam_binding__condition list ->
  string ->
  unit
