(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_value_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  tag_value : string prop;
}

val google_tags_tag_value_iam_policy :
  ?id:string prop ->
  policy_data:string prop ->
  tag_value:string prop ->
  string ->
  t
