(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy_iam_binding__condition

type google_access_context_manager_access_policy_iam_binding

val google_access_context_manager_access_policy_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:
    google_access_context_manager_access_policy_iam_binding__condition
    list ->
  string ->
  unit
