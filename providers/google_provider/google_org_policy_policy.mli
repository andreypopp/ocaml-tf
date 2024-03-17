(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_org_policy_policy__dry_run_spec__rules__condition
type google_org_policy_policy__dry_run_spec__rules__values
type google_org_policy_policy__dry_run_spec__rules
type google_org_policy_policy__dry_run_spec
type google_org_policy_policy__spec__rules__condition
type google_org_policy_policy__spec__rules__values
type google_org_policy_policy__spec__rules
type google_org_policy_policy__spec
type google_org_policy_policy__timeouts
type google_org_policy_policy

val google_org_policy_policy :
  ?id:string ->
  ?timeouts:google_org_policy_policy__timeouts ->
  name:string ->
  parent:string ->
  dry_run_spec:google_org_policy_policy__dry_run_spec list ->
  spec:google_org_policy_policy__spec list ->
  string ->
  unit
