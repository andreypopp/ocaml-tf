(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_iam_member__condition
type google_secret_manager_secret_iam_member

val google_secret_manager_secret_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  secret_id:string prop ->
  condition:google_secret_manager_secret_iam_member__condition list ->
  string ->
  unit
