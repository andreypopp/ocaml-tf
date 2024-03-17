(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_access_boundary_policy__rules__access_boundary_rule__availability_condition

type google_iam_access_boundary_policy__rules__access_boundary_rule
type google_iam_access_boundary_policy__rules
type google_iam_access_boundary_policy__timeouts
type google_iam_access_boundary_policy

val google_iam_access_boundary_policy :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:google_iam_access_boundary_policy__timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:google_iam_access_boundary_policy__rules list ->
  string ->
  unit
