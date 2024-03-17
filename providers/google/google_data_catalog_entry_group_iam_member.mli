(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry_group_iam_member__condition
type google_data_catalog_entry_group_iam_member

type t = private {
  entry_group : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val google_data_catalog_entry_group_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  entry_group:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_data_catalog_entry_group_iam_member__condition list ->
  string ->
  t
