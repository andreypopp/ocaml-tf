(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dataset_iam_binding__condition
type google_healthcare_dataset_iam_binding

val google_healthcare_dataset_iam_binding :
  ?id:string ->
  dataset_id:string ->
  members:string list ->
  role:string ->
  condition:google_healthcare_dataset_iam_binding__condition list ->
  string ->
  unit
