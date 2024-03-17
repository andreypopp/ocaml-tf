(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_member__condition
type google_billing_account_iam_member

type t = private {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val google_billing_account_iam_member :
  ?id:string prop ->
  billing_account_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_billing_account_iam_member__condition list ->
  string ->
  t
