(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_member__condition
type google_data_catalog_policy_tag_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  policy_tag : string prop;
  role : string prop;
}

val google_data_catalog_policy_tag_iam_member :
  ?id:string prop ->
  member:string prop ->
  policy_tag:string prop ->
  role:string prop ->
  condition:google_data_catalog_policy_tag_iam_member__condition list ->
  string ->
  t
