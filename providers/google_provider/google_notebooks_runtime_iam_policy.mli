(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_runtime_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  runtime_name : string prop;
}

val google_notebooks_runtime_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  policy_data:string prop ->
  runtime_name:string prop ->
  string ->
  t
