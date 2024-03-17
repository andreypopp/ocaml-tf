(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function_iam_policy

type t = private {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val google_cloudfunctions_function_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cloud_function:string prop ->
  policy_data:string prop ->
  string ->
  t
