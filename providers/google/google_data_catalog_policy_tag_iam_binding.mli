(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_binding__condition
type google_data_catalog_policy_tag_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  policy_tag : string prop;
  role : string prop;
}

val google_data_catalog_policy_tag_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  policy_tag:string prop ->
  role:string prop ->
  condition:
    google_data_catalog_policy_tag_iam_binding__condition list ->
  string ->
  t
