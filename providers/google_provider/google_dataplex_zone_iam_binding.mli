(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_zone_iam_binding__condition
type google_dataplex_zone_iam_binding

val google_dataplex_zone_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  dataplex_zone:string ->
  lake:string ->
  members:string list ->
  role:string ->
  condition:google_dataplex_zone_iam_binding__condition list ->
  string ->
  unit
