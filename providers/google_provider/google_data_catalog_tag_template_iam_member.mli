(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag_template_iam_member__condition
type google_data_catalog_tag_template_iam_member

val google_data_catalog_tag_template_iam_member :
  member:string ->
  role:string ->
  tag_template:string ->
  condition:
    google_data_catalog_tag_template_iam_member__condition list ->
  string ->
  unit
