(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry_group_iam_binding__condition
type google_data_catalog_entry_group_iam_binding

val google_data_catalog_entry_group_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  entry_group:string ->
  members:string list ->
  role:string ->
  condition:
    google_data_catalog_entry_group_iam_binding__condition list ->
  string ->
  unit
