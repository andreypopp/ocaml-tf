(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_taxonomy_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  taxonomy : string prop;
}

val google_data_catalog_taxonomy_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  policy_data:string prop ->
  taxonomy:string prop ->
  string ->
  t
