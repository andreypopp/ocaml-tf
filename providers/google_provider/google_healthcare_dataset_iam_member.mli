(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dataset_iam_member__condition
type google_healthcare_dataset_iam_member

val google_healthcare_dataset_iam_member :
  ?id:string ->
  dataset_id:string ->
  member:string ->
  role:string ->
  condition:google_healthcare_dataset_iam_member__condition list ->
  string ->
  unit
