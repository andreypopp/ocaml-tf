(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function_iam_member__condition
type google_cloudfunctions_function_iam_member

val google_cloudfunctions_function_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cloud_function:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_cloudfunctions_function_iam_member__condition list ->
  string ->
  unit
