(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_deny_policy__rules__deny_rule__denial_condition
type google_iam_deny_policy__rules__deny_rule
type google_iam_deny_policy__rules
type google_iam_deny_policy__timeouts
type google_iam_deny_policy

val google_iam_deny_policy :
  ?display_name:string ->
  ?id:string ->
  ?timeouts:google_iam_deny_policy__timeouts ->
  name:string ->
  parent:string ->
  rules:google_iam_deny_policy__rules list ->
  string ->
  unit
