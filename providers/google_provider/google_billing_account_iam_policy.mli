(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_account_iam_policy

type t = private {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_billing_account_iam_policy :
  ?id:string prop ->
  billing_account_id:string prop ->
  policy_data:string prop ->
  string ->
  t
