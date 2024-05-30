(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_custom_role

val github_organization_custom_role :
  ?id:string prop ->
  name:string prop ->
  unit ->
  github_organization_custom_role

val yojson_of_github_organization_custom_role :
  github_organization_custom_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_role : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
