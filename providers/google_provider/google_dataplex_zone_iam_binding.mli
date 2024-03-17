(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_zone_iam_binding__condition
type google_dataplex_zone_iam_binding

val google_dataplex_zone_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  dataplex_zone:string prop ->
  lake:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_dataplex_zone_iam_binding__condition list ->
  string ->
  unit
