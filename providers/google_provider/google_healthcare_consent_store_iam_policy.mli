(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store_iam_policy

type t = private {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_healthcare_consent_store_iam_policy :
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  policy_data:string prop ->
  string ->
  t
