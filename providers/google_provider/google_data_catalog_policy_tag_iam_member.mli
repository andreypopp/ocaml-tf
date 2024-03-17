(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_member__condition
type google_data_catalog_policy_tag_iam_member

val google_data_catalog_policy_tag_iam_member :
  ?id:string ->
  member:string ->
  policy_tag:string ->
  role:string ->
  condition:google_data_catalog_policy_tag_iam_member__condition list ->
  string ->
  unit
