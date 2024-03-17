(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_attestor_iam_binding__condition
type google_binary_authorization_attestor_iam_binding

val google_binary_authorization_attestor_iam_binding :
  attestor:string ->
  members:string list ->
  role:string ->
  condition:
    google_binary_authorization_attestor_iam_binding__condition list ->
  string ->
  unit
