(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_value_iam_member__condition
type google_tags_tag_value_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  tag_value : string prop;
}

val google_tags_tag_value_iam_member :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  tag_value:string prop ->
  condition:google_tags_tag_value_iam_member__condition list ->
  string ->
  t
