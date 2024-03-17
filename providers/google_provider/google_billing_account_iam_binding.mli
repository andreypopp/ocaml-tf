(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_binding__condition
type google_billing_account_iam_binding

type t = private {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val google_billing_account_iam_binding :
  ?id:string prop ->
  billing_account_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_billing_account_iam_binding__condition list ->
  string ->
  t
