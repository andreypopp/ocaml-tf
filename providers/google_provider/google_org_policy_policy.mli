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

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

val google_org_policy_policy :
  ?id:string prop ->
  ?timeouts:google_org_policy_policy__timeouts ->
  name:string prop ->
  parent:string prop ->
  dry_run_spec:google_org_policy_policy__dry_run_spec list ->
  spec:google_org_policy_policy__spec list ->
  string ->
  t
