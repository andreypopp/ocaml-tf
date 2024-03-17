(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_member__condition
type google_scc_source_iam_member

val google_scc_source_iam_member :
  ?id:string prop ->
  member:string prop ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  condition:google_scc_source_iam_member__condition list ->
  string ->
  unit
