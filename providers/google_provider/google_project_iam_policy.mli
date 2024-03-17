(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_project_iam_policy :
  ?id:string prop ->
  policy_data:string prop ->
  project:string prop ->
  string ->
  t
