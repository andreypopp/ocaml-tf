(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store_iam_member__condition
type google_healthcare_consent_store_iam_member

val google_healthcare_consent_store_iam_member :
  consent_store_id:string ->
  dataset:string ->
  member:string ->
  role:string ->
  condition:
    google_healthcare_consent_store_iam_member__condition list ->
  string ->
  unit
