(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dicom_store_iam_policy

type t = private {
  dicom_store_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_healthcare_dicom_store_iam_policy :
  ?id:string prop ->
  dicom_store_id:string prop ->
  policy_data:string prop ->
  string ->
  t
