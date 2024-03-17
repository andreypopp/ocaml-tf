(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_binding__condition
type google_scc_source_iam_binding

val google_scc_source_iam_binding :
  ?id:string ->
  members:string list ->
  organization:string ->
  role:string ->
  source:string ->
  condition:google_scc_source_iam_binding__condition list ->
  string ->
  unit
