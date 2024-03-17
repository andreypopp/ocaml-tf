(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy_iam_member__condition
type google_access_context_manager_access_policy_iam_member

val google_access_context_manager_access_policy_iam_member :
  ?id:string prop ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  condition:
    google_access_context_manager_access_policy_iam_member__condition
    list ->
  string ->
  unit
