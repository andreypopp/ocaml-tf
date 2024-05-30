(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type branches = {
  name : string prop;  (** name *)
  protected : bool prop;  (** protected *)
}

type github_repository_branches

val github_repository_branches :
  ?id:string prop ->
  ?only_non_protected_branches:bool prop ->
  ?only_protected_branches:bool prop ->
  repository:string prop ->
  unit ->
  github_repository_branches

val yojson_of_github_repository_branches :
  github_repository_branches -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branches : branches list prop;
  id : string prop;
  only_non_protected_branches : bool prop;
  only_protected_branches : bool prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?only_non_protected_branches:bool prop ->
  ?only_protected_branches:bool prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?only_non_protected_branches:bool prop ->
  ?only_protected_branches:bool prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
