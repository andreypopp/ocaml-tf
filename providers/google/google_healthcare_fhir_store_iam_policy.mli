(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_fhir_store_iam_policy

type t = private {
  etag : string prop;
  fhir_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_healthcare_fhir_store_iam_policy :
  ?id:string prop ->
  fhir_store_id:string prop ->
  policy_data:string prop ->
  string ->
  t
