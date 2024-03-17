(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository_iam_binding__condition
type google_sourcerepo_repository_iam_binding

val google_sourcerepo_repository_iam_binding :
  ?id:string ->
  ?project:string ->
  members:string list ->
  repository:string ->
  role:string ->
  condition:google_sourcerepo_repository_iam_binding__condition list ->
  string ->
  unit
