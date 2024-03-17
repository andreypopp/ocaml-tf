(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store_iam_binding__condition
type google_healthcare_consent_store_iam_binding

val google_healthcare_consent_store_iam_binding :
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_healthcare_consent_store_iam_binding__condition list ->
  string ->
  unit
