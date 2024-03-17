(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_taxonomy_iam_member__condition
type google_data_catalog_taxonomy_iam_member

val google_data_catalog_taxonomy_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  member:string prop ->
  role:string prop ->
  taxonomy:string prop ->
  condition:google_data_catalog_taxonomy_iam_member__condition list ->
  string ->
  unit
