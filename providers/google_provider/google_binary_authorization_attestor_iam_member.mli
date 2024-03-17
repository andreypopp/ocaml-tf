(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_attestor_iam_member__condition
type google_binary_authorization_attestor_iam_member

val google_binary_authorization_attestor_iam_member :
  attestor:string ->
  member:string ->
  role:string ->
  condition:
    google_binary_authorization_attestor_iam_member__condition list ->
  string ->
  unit
