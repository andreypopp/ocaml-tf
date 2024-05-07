(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_billing_account_iam_policy

val google_billing_account_iam_policy :
  ?id:string prop ->
  billing_account_id:string prop ->
  unit ->
  google_billing_account_iam_policy

val yojson_of_google_billing_account_iam_policy :
  google_billing_account_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  billing_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  billing_account_id:string prop ->
  string ->
  t Tf_core.resource
