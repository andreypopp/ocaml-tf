(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_deny_policy__rules__deny_rule__denial_condition
type google_iam_deny_policy__rules__deny_rule
type google_iam_deny_policy__rules
type google_iam_deny_policy__timeouts
type google_iam_deny_policy

type t = private {
  display_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

val google_iam_deny_policy :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:google_iam_deny_policy__timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:google_iam_deny_policy__rules list ->
  string ->
  t
