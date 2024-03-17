(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function_iam_binding__condition
type google_cloudfunctions_function_iam_binding

type t = private {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val google_cloudfunctions_function_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cloud_function:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_cloudfunctions_function_iam_binding__condition list ->
  string ->
  t
