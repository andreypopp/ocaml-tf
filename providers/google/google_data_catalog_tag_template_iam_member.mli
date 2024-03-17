(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag_template_iam_member__condition
type google_data_catalog_tag_template_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
  tag_template : string prop;
}

val google_data_catalog_tag_template_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  member:string prop ->
  role:string prop ->
  tag_template:string prop ->
  condition:
    google_data_catalog_tag_template_iam_member__condition list ->
  string ->
  t
