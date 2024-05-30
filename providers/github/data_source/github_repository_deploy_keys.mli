(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type keys = {
  id : float prop;  (** id *)
  key : string prop;  (** key *)
  title : string prop;  (** title *)
  verified : bool prop;  (** verified *)
}

type github_repository_deploy_keys

val github_repository_deploy_keys :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_repository_deploy_keys

val yojson_of_github_repository_deploy_keys :
  github_repository_deploy_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  keys : keys list prop;
  repository : string prop;
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
