(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_member__condition
type google_scc_source_iam_member

val google_scc_source_iam_member :
  member:string ->
  organization:string ->
  role:string ->
  source:string ->
  condition:google_scc_source_iam_member__condition list ->
  string ->
  unit
