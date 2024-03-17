(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_iam_member__condition
type google_service_account_iam_member

val google_service_account_iam_member :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  service_account_id:string prop ->
  condition:google_service_account_iam_member__condition list ->
  string ->
  unit
