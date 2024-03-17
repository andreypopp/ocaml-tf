(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tags_tag_value_iam_binding__condition
type google_tags_tag_value_iam_binding

val google_tags_tag_value_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  role:string prop ->
  tag_value:string prop ->
  condition:google_tags_tag_value_iam_binding__condition list ->
  string ->
  unit
