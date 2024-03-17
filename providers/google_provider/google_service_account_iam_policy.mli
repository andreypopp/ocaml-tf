(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_account_id : string prop;
}

val google_service_account_iam_policy :
  ?id:string prop ->
  policy_data:string prop ->
  service_account_id:string prop ->
  string ->
  t
