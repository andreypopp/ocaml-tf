(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_asset_iam_member__condition
type google_dataplex_asset_iam_member

val google_dataplex_asset_iam_member :
  asset:string ->
  dataplex_zone:string ->
  lake:string ->
  member:string ->
  role:string ->
  condition:google_dataplex_asset_iam_member__condition list ->
  string ->
  unit
