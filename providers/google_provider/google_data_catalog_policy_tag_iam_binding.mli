(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_binding__condition
type google_data_catalog_policy_tag_iam_binding

val google_data_catalog_policy_tag_iam_binding :
  members:string list ->
  policy_tag:string ->
  role:string ->
  condition:
    google_data_catalog_policy_tag_iam_binding__condition list ->
  string ->
  unit
