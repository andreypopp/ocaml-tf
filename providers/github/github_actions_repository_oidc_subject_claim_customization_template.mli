(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_actions_repository_oidc_subject_claim_customization_template

val github_actions_repository_oidc_subject_claim_customization_template :
  ?id:string prop ->
  ?include_claim_keys:string prop list ->
  repository:string prop ->
  use_default:bool prop ->
  unit ->
  github_actions_repository_oidc_subject_claim_customization_template

val yojson_of_github_actions_repository_oidc_subject_claim_customization_template :
  github_actions_repository_oidc_subject_claim_customization_template ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  include_claim_keys : string list prop;
  repository : string prop;
  use_default : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_claim_keys:string prop list ->
  repository:string prop ->
  use_default:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_claim_keys:string prop list ->
  repository:string prop ->
  use_default:bool prop ->
  string ->
  t Tf_core.resource
