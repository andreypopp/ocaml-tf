(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_taxonomy_iam_binding__condition
type google_data_catalog_taxonomy_iam_binding

val google_data_catalog_taxonomy_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  members:string prop list ->
  role:string prop ->
  taxonomy:string prop ->
  condition:google_data_catalog_taxonomy_iam_binding__condition list ->
  string ->
  unit
