(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_custom_role

val github_organization_custom_role :
  ?description:string prop ->
  ?id:string prop ->
  base_role:string prop ->
  name:string prop ->
  permissions:string prop list ->
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
  ?description:string prop ->
  ?id:string prop ->
  base_role:string prop ->
  name:string prop ->
  permissions:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  base_role:string prop ->
  name:string prop ->
  permissions:string prop list ->
  string ->
  t Tf_core.resource
