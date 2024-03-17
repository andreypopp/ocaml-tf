(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions2_function_iam_binding__condition
type google_cloudfunctions2_function_iam_binding

val google_cloudfunctions2_function_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  cloud_function:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_cloudfunctions2_function_iam_binding__condition list ->
  string ->
  unit
