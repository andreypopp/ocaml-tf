(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_iam_member__condition
type google_organization_iam_member

val google_organization_iam_member :
  ?id:string ->
  member:string ->
  org_id:string ->
  role:string ->
  condition:google_organization_iam_member__condition list ->
  string ->
  unit
