(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_iam_member__condition
type google_service_account_iam_member

val google_service_account_iam_member :
  member:string ->
  role:string ->
  service_account_id:string ->
  condition:google_service_account_iam_member__condition list ->
  string ->
  unit
