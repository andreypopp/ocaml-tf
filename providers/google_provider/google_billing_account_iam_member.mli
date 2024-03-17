(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_member__condition
type google_billing_account_iam_member

val google_billing_account_iam_member :
  ?id:string ->
  billing_account_id:string ->
  member:string ->
  role:string ->
  condition:google_billing_account_iam_member__condition list ->
  string ->
  unit
