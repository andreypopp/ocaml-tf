(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_key_iam_binding__condition
type google_tags_tag_key_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
  tag_key : string prop;
}

val google_tags_tag_key_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  role:string prop ->
  tag_key:string prop ->
  condition:google_tags_tag_key_iam_binding__condition list ->
  string ->
  t
