(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store_iam_binding__condition
type google_healthcare_consent_store_iam_binding

val google_healthcare_consent_store_iam_binding :
  consent_store_id:string ->
  dataset:string ->
  members:string list ->
  role:string ->
  condition:
    google_healthcare_consent_store_iam_binding__condition list ->
  string ->
  unit
