(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  repository : string prop;
}

val google_sourcerepo_repository_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  policy_data:string prop ->
  repository:string prop ->
  string ->
  t
