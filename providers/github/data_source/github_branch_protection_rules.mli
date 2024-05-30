(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules = { pattern : string prop  (** pattern *) }
type github_branch_protection_rules

val github_branch_protection_rules :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_branch_protection_rules

val yojson_of_github_branch_protection_rules :
  github_branch_protection_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  repository : string prop;
  rules : rules list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
