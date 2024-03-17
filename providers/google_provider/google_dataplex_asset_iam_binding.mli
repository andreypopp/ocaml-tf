(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_asset_iam_binding__condition
type google_dataplex_asset_iam_binding

val google_dataplex_asset_iam_binding :
  asset:string ->
  dataplex_zone:string ->
  lake:string ->
  members:string list ->
  role:string ->
  condition:google_dataplex_asset_iam_binding__condition list ->
  string ->
  unit
