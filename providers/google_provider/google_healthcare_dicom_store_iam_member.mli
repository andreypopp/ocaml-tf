(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dicom_store_iam_member__condition
type google_healthcare_dicom_store_iam_member

val google_healthcare_dicom_store_iam_member :
  ?id:string prop ->
  dicom_store_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_healthcare_dicom_store_iam_member__condition list ->
  string ->
  unit
