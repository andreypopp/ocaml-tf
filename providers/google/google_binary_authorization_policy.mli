(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type admission_whitelist_patterns

val admission_whitelist_patterns :
  name_pattern:string prop -> unit -> admission_whitelist_patterns

type cluster_admission_rules

val cluster_admission_rules :
  ?require_attestations_by:string prop list ->
  cluster:string prop ->
  enforcement_mode:string prop ->
  evaluation_mode:string prop ->
  unit ->
  cluster_admission_rules

type default_admission_rule

val default_admission_rule :
  ?require_attestations_by:string prop list ->
  enforcement_mode:string prop ->
  evaluation_mode:string prop ->
  unit ->
  default_admission_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_binary_authorization_policy

val google_binary_authorization_policy :
  ?description:string prop ->
  ?global_policy_evaluation_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?admission_whitelist_patterns:admission_whitelist_patterns list ->
  ?timeouts:timeouts ->
  cluster_admission_rules:cluster_admission_rules list ->
  default_admission_rule:default_admission_rule list ->
  unit ->
  google_binary_authorization_policy

val yojson_of_google_binary_authorization_policy :
  google_binary_authorization_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  global_policy_evaluation_mode : string prop;
  id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?global_policy_evaluation_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?admission_whitelist_patterns:admission_whitelist_patterns list ->
  ?timeouts:timeouts ->
  cluster_admission_rules:cluster_admission_rules list ->
  default_admission_rule:default_admission_rule list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?global_policy_evaluation_mode:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?admission_whitelist_patterns:admission_whitelist_patterns list ->
  ?timeouts:timeouts ->
  cluster_admission_rules:cluster_admission_rules list ->
  default_admission_rule:default_admission_rule list ->
  string ->
  t Tf_core.resource
