(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_iam_binding__condition
type google_organization_iam_binding

val google_organization_iam_binding :
  ?id:string ->
  members:string list ->
  org_id:string ->
  role:string ->
  condition:google_organization_iam_binding__condition list ->
  string ->
  unit
