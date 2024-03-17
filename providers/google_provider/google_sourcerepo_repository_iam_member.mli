(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository_iam_member__condition
type google_sourcerepo_repository_iam_member

val google_sourcerepo_repository_iam_member :
  ?id:string ->
  ?project:string ->
  member:string ->
  repository:string ->
  role:string ->
  condition:google_sourcerepo_repository_iam_member__condition list ->
  string ->
  unit
