(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_project

val github_organization_project :
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  unit ->
  github_organization_project

val yojson_of_github_organization_project :
  github_organization_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
