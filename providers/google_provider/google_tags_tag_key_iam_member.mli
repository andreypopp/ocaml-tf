(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_key_iam_member__condition
type google_tags_tag_key_iam_member

val google_tags_tag_key_iam_member :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  tag_key:string prop ->
  condition:google_tags_tag_key_iam_member__condition list ->
  string ->
  unit
