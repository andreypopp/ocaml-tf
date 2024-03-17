(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_binding__condition
type google_scc_source_iam_binding

val google_scc_source_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  condition:google_scc_source_iam_binding__condition list ->
  string ->
  unit
