(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy_iam_member__condition
type google_access_context_manager_access_policy_iam_member

val google_access_context_manager_access_policy_iam_member :
  member:string ->
  name:string ->
  role:string ->
  condition:
    google_access_context_manager_access_policy_iam_member__condition
    list ->
  string ->
  unit
