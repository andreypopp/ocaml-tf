(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_hl7_v2_store_iam_policy

type t = private {
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_healthcare_hl7_v2_store_iam_policy :
  ?id:string prop ->
  hl7_v2_store_id:string prop ->
  policy_data:string prop ->
  string ->
  t
