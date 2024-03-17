(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_hl7_v2_store_iam_member__condition
type google_healthcare_hl7_v2_store_iam_member

type t = private {
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val google_healthcare_hl7_v2_store_iam_member :
  ?id:string prop ->
  hl7_v2_store_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_healthcare_hl7_v2_store_iam_member__condition list ->
  string ->
  t
