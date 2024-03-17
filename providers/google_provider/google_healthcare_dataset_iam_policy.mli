(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dataset_iam_policy

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_healthcare_dataset_iam_policy :
  ?id:string prop ->
  dataset_id:string prop ->
  policy_data:string prop ->
  string ->
  t
