(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_deploy_key

val github_repository_deploy_key :
  ?id:string prop ->
  ?read_only:bool prop ->
  key:string prop ->
  repository:string prop ->
  title:string prop ->
  unit ->
  github_repository_deploy_key

val yojson_of_github_repository_deploy_key :
  github_repository_deploy_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  key : string prop;
  read_only : bool prop;
  repository : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?read_only:bool prop ->
  key:string prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?read_only:bool prop ->
  key:string prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
