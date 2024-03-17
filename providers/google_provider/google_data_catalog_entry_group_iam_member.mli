(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry_group_iam_member__condition
type google_data_catalog_entry_group_iam_member

val google_data_catalog_entry_group_iam_member :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  entry_group:string ->
  member:string ->
  role:string ->
  condition:
    google_data_catalog_entry_group_iam_member__condition list ->
  string ->
  unit
