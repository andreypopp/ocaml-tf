(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dataset_iam_binding__condition
type google_healthcare_dataset_iam_binding

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val google_healthcare_dataset_iam_binding :
  ?id:string prop ->
  dataset_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_healthcare_dataset_iam_binding__condition list ->
  string ->
  t
