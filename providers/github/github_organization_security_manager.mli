(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_security_manager

val github_organization_security_manager :
  ?id:string prop ->
  team_slug:string prop ->
  unit ->
  github_organization_security_manager

val yojson_of_github_organization_security_manager :
  github_organization_security_manager -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  team_slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  team_slug:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  team_slug:string prop ->
  string ->
  t Tf_core.resource
