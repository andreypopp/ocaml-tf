(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  instance_name : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_notebooks_instance_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_name:string prop ->
  policy_data:string prop ->
  string ->
  t
