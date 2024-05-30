(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_block

val github_organization_block :
  ?id:string prop ->
  username:string prop ->
  unit ->
  github_organization_block

val yojson_of_github_organization_block :
  github_organization_block -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
