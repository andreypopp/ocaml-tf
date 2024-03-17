(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions2_function_iam_policy

type t = private {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_cloudfunctions2_function_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  cloud_function:string prop ->
  policy_data:string prop ->
  string ->
  t
