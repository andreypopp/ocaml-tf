(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry_group_iam_policy

type t = private {
  entry_group : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val google_data_catalog_entry_group_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  entry_group:string prop ->
  policy_data:string prop ->
  string ->
  t
