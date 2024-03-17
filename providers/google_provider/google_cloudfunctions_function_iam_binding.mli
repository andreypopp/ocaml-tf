(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function_iam_binding__condition
type google_cloudfunctions_function_iam_binding

val google_cloudfunctions_function_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  cloud_function:string ->
  members:string list ->
  role:string ->
  condition:
    google_cloudfunctions_function_iam_binding__condition list ->
  string ->
  unit
