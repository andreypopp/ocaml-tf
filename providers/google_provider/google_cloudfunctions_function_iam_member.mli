(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function_iam_member__condition
type google_cloudfunctions_function_iam_member

val google_cloudfunctions_function_iam_member :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  cloud_function:string ->
  member:string ->
  role:string ->
  condition:google_cloudfunctions_function_iam_member__condition list ->
  string ->
  unit
