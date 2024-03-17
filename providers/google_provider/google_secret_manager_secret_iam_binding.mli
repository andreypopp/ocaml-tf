(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_iam_binding__condition
type google_secret_manager_secret_iam_binding

val google_secret_manager_secret_iam_binding :
  members:string list ->
  role:string ->
  secret_id:string ->
  condition:google_secret_manager_secret_iam_binding__condition list ->
  string ->
  unit
