(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag_template_iam_binding__condition
type google_data_catalog_tag_template_iam_binding

val google_data_catalog_tag_template_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  members:string list ->
  role:string ->
  tag_template:string ->
  condition:
    google_data_catalog_tag_template_iam_binding__condition list ->
  string ->
  unit
