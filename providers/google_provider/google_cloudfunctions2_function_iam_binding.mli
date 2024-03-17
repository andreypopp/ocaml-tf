(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions2_function_iam_binding__condition
type google_cloudfunctions2_function_iam_binding

val google_cloudfunctions2_function_iam_binding :
  cloud_function:string ->
  members:string list ->
  role:string ->
  condition:
    google_cloudfunctions2_function_iam_binding__condition list ->
  string ->
  unit
