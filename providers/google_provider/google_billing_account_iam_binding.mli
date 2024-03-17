(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_binding__condition
type google_billing_account_iam_binding

val google_billing_account_iam_binding :
  ?id:string prop ->
  billing_account_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_billing_account_iam_binding__condition list ->
  string ->
  unit
