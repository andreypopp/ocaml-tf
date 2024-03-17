(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_iam_binding__condition
type google_secret_manager_secret_iam_binding

val google_secret_manager_secret_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  secret_id:string prop ->
  condition:google_secret_manager_secret_iam_binding__condition list ->
  string ->
  unit
