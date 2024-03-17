(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_datascan_iam_member__condition
type google_dataplex_datascan_iam_member

val google_dataplex_datascan_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_scan_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_dataplex_datascan_iam_member__condition list ->
  string ->
  unit
