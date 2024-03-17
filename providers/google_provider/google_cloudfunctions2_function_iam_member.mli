(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions2_function_iam_member__condition
type google_cloudfunctions2_function_iam_member

type t = private {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_cloudfunctions2_function_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  cloud_function:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_cloudfunctions2_function_iam_member__condition list ->
  string ->
  t
