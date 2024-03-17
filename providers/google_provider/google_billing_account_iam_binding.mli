(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_binding__condition
type google_billing_account_iam_binding

val google_billing_account_iam_binding :
  billing_account_id:string ->
  members:string list ->
  role:string ->
  condition:google_billing_account_iam_binding__condition list ->
  string ->
  unit
