(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store_iam_member__condition
type google_healthcare_consent_store_iam_member

type t = private {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val google_healthcare_consent_store_iam_member :
  ?id:string prop ->
  consent_store_id:string prop ->
  dataset:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_healthcare_consent_store_iam_member__condition list ->
  string ->
  t
