(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_attestor_iam_member__condition
type google_binary_authorization_attestor_iam_member

val google_binary_authorization_attestor_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  attestor:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_binary_authorization_attestor_iam_member__condition list ->
  string ->
  unit
