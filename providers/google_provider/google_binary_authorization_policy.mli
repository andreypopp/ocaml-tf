(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_policy__admission_whitelist_patterns
type google_binary_authorization_policy__cluster_admission_rules
type google_binary_authorization_policy__default_admission_rule
type google_binary_authorization_policy__timeouts
type google_binary_authorization_policy

val google_binary_authorization_policy :
  ?description:string prop ->
  ?global_policy_evaluation_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_binary_authorization_policy__timeouts ->
  admission_whitelist_patterns:
    google_binary_authorization_policy__admission_whitelist_patterns
    list ->
  cluster_admission_rules:
    google_binary_authorization_policy__cluster_admission_rules list ->
  default_admission_rule:
    google_binary_authorization_policy__default_admission_rule list ->
  string ->
  unit
