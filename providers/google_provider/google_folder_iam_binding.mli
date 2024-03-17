(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_binding__condition
type google_folder_iam_binding

val google_folder_iam_binding :
  ?id:string prop ->
  folder:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_folder_iam_binding__condition list ->
  string ->
  unit
