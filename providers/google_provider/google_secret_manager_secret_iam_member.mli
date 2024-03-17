(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_iam_member__condition
type google_secret_manager_secret_iam_member

val google_secret_manager_secret_iam_member :
  ?id:string ->
  ?project:string ->
  member:string ->
  role:string ->
  secret_id:string ->
  condition:google_secret_manager_secret_iam_member__condition list ->
  string ->
  unit
