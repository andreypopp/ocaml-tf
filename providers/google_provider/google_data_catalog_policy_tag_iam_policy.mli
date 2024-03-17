(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  policy_tag : string prop;
}

val google_data_catalog_policy_tag_iam_policy :
  ?id:string prop ->
  policy_data:string prop ->
  policy_tag:string prop ->
  string ->
  t
