(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuildv2_connection_iam_binding__condition
type google_cloudbuildv2_connection_iam_binding

val google_cloudbuildv2_connection_iam_binding :
  members:string list ->
  name:string ->
  role:string ->
  condition:
    google_cloudbuildv2_connection_iam_binding__condition list ->
  string ->
  unit
